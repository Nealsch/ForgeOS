# Graphify Platform Profile

## Purpose

This profile integrates **Graphify** with ForgeOS as the preferred implementation of the **Codebase Analysis Capability** (`Tooling/03-Capabilities/Codebase-Analysis-Capability.md`) per **ADR-008**.

It is the concrete tooling profile behind the capability contract, not a ForgeOS concept. All Graphify-specific behaviour — including its Claude Code skill distribution and Claude vision dependency — is confined to this document and its referenced assets. None of it may leak up into the Framework.

---

## Scope

This profile covers Graphify-specific concerns only:

* Graph build, extraction, clustering and analysis mechanics.
* Output production (`graph.json`, `GRAPH_REPORT.md`, exports).
* MCP server (`graphify --mcp`), CLI, and importable Python library surfaces.
* Freshness / incremental-refresh mechanics.
* Graphify-specific security validation (URL / path / label).

It does **not** perform validation of findings as engineering conclusions, interpretation, prioritisation, routing or approval. Those are owned by the Codebase Analyst Agent and its Skills in the Framework layer (per **ADR-007** and **ADR-008**).

---

## How Graphify Satisfies the Capability Contract

| Contract requirement | Graphify implementation |
| --- | --- |
| Target repository path input | `graphify <path>` |
| Knowledge graph with confidence labels | `graphify-out/graph.json`; edges tagged `EXTRACTED` / `INFERRED` / `AMBIGUOUS` |
| Analysis report | `graphify-out/GRAPH_REPORT.md` (god nodes, surprising connections, suggested questions) |
| Freshness indicator | Build timestamp + commit SHA on the graph |
| Deterministic AST extraction | tree-sitter pass for code; LLM (Claude) only for docs, PDFs, images |
| Local execution | No server, no Neo4j; runs entirely locally |
| Schema validation | `validate.py` enforces the extraction schema before `build_graph()` |
| Security validation | `security.py` validates URLs, paths, labels |
| MCP surface | `graphify --mcp` (stdio) — preferred adapter |
| CLI / library | `pip install graphifyy` (CLI) + importable Python library |
| Deliberate refresh | `graphify --update` (SHA256 cache), `graphify hook install` (post-commit), `graphify --watch` |

---

## Pipeline

```text
detect()  →  extract()  →  build_graph()  →  cluster()  →  analyze()  →  report()  →  export()
```

Each stage is a single function in its own module; they communicate through plain Python dicts and NetworkX graphs. No shared state; no side effects outside `graphify-out/`.

---

## Integration Modes

### 1. MCP Server (preferred)

```bash
graphify <project-path>     # build the graph once
graphify --mcp              # serve it over stdio MCP
```

The AI platform's MCP client (Cline, Claude Code, VS Code Agent, Cursor) spawns `graphify --mcp` as a local subprocess. The server reads `graphify-out/graph.json` and answers `query` / `path` / `explain` calls.

This is the preferred path because MCP is ForgeOS's preferred adapter (`Tooling/02-Adapters/MCP/README.md`) and is platform-neutral.

### 2. CLI / Library (acceptable)

```bash
graphify <project-path>           # build + report
graphify <project-path> --update  # incremental refresh
```

Or programmatically:

```python
from graphify import collect_files, extract, build_graph, cluster, analyze, render_report
```

Used for batch analysis, metrics, and by `Forge-Documentation-Generation` and `Forge-Repository-Metrics`.

### 3. Prompt-Based Fallback (acceptable)

When a platform exposes no tool surface, the Codebase Analyst reads `graphify-out/GRAPH_REPORT.md` directly as a file and reasons over it.

---

## Deployment & Target-Codebase Binding

* **Where the MCP server runs:** locally, as a stdio subprocess spawned by the AI platform's MCP client, reading `graphify-out/graph.json` from disk.
* **Which codebase is analysed:** the **project-under-development** (the software being engineered with ForgeOS), never the ForgeOS Framework itself. The graph binds to the project.
* **Where artefacts live:** `graphify-out/` lives **inside the project**. The persistent graph may optionally be stored under the project's `.ai/knowledge/graph.json`. The ForgeOS repo must never contain a `graphify-out/` directory; it is added to the root `.gitignore` defensively.
* **Meta / onboarding use:** running Graphify over ForgeOS itself is permitted purely as a demonstration and onboarding aid; it is not the primary use case and produces no Framework artefact.

---

## Platform-Coupling Containment Rule

Graphify ships with platform couplings that are **contained entirely inside this profile**:

| Coupling | Where it is contained |
| --- | --- |
| Claude Code skill wrapper (`SKILL.md`, `/graphify` slash command) | This profile only. The slash command is one adapter's convenience entry point, not a ForgeOS concept. |
| Claude vision dependency for PDF / image extraction | This profile only. The capability contract requires deterministic AST extraction for code; non-code modalities are optional and tool-specific. |

These couplings must never be referenced from:

* The Codebase Analyst Agent definition.
* Any Skill the Agent invokes.
* Any Workflow, Standard, or Governance document.
* The Capability Contract itself.

---

## Security

All external input passes through `graphify/security.py` before use:

* URLs → `validate_url()` (http/https only) + `_NoFileRedirectHandler` (blocks `file://` redirects).
* Fetched content → `safe_fetch()` / `safe_fetch_text()` (size cap, timeout).
* Graph file paths → `validate_graph_path()` (must resolve inside `graphify-out/`).
* Node labels → `sanitize_label()` (strips control chars, caps 256 chars, HTML-escapes).

See Graphify's own `SECURITY.md` for the full threat model. ForgeOS Security Standards apply in addition when Graphify is used on a ForgeOS project.

---

## Adapter Boundary (no duplication)

| Owned by this profile (Tooling) | Owned by the Framework (Codebase Analyst + Skills) |
| --- | --- |
| Graph build, extraction, clustering, analysis | Deciding *whether* analysis is required |
| MCP server / CLI / library invocation | Selecting the analysis technique |
| Confidence-label production | Interpreting results into engineering conclusions |
| Graph + report file production | Identifying technical debt and risks |
| Freshness / cache mechanics | Producing the Architecture Assessment |
| Graphify-specific security validation | Approving any resulting Work Items |

Adding or changing Graphify must never require changes to the Codebase Analyst Agent, the Skills it invokes, the Workflow, or any Standard.

---

## Relationship to Existing Tooling

| Adapter | Relationship |
| --- | --- |
| MCP | Preferred adapter; `graphify --mcp` is a concrete example of an MCP-exposed external tool. |
| Function Calling | Underlying transport MCP clients often use. |
| Prompt Based | Fallback when no MCP client is available. |
| Slash Commands | The Claude-Code-specific `/graphify` command is one convenience entry point; not portable, not a ForgeOS concept. |

---

## Configuration

Graphify configuration is project-specific and stored with the project, not in the Framework. Typical configuration includes:

* Target path (default: current directory).
* Output directory (default: `graphify-out/`).
* Watch / hook behaviour for refresh.
* Optional export targets (Obsidian vault, Neo4j, etc.).

---

## What This Profile Does Not Define

* **Engineering process.** Owned by the Framework.
* **The Capability Contract itself.** Owned by `Tooling/03-Capabilities/Codebase-Analysis-Capability.md`.
* **Which platforms support MCP.** Owned by `Tooling/03-Capabilities/README.md`.
* **Architectural conclusions.** Owned by the Codebase Analyst Agent + Architect.

---

## Related Documents

* **ADR-007** — Codebase Analysis is an Agent, Not a Skill.
* **ADR-008** — Codebase Analysis Tooling Capability & Graphify Integration Contract.
* `Tooling/03-Capabilities/Codebase-Analysis-Capability.md` — the contract (authoritative).
* `Tooling/02-Adapters/MCP/README.md` — the preferred adapter.
* `Framework/04-Agents/Codebase Analyst/README.md` — the Agent that consumes Graphify via the contract.
* `Tooling/01-Platforms/GitHub/README.md` — the reference adapter-discipline pattern this profile mirrors.