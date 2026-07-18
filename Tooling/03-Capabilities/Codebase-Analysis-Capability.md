# Codebase Analysis Capability

## Purpose

Defines the **platform-neutral contract** that any codebase analysis tool must satisfy to be used by the ForgeOS **Codebase Analyst Agent** and its Skills.

This document is the boundary between the Framework (which owns the engineering outcome) and any concrete analysis tool (which owns the analysis mechanics). It is normative for **ADR-008**.

Multiple tools may satisfy this contract simultaneously. Graphify is the first and current preferred implementation (`Tooling/01-Platforms/Graphify/README.md`).

---

## Why a Capability Contract?

ForgeOS is platform-independent (AGENTS.md → Core Principles). ADR-007 establishes that Codebase Analysis is an Agent and that Graphify is merely *a preferred implementation*, not a Skill. ADR-008 closes the gap by introducing this contract.

The contract guarantees that:

* The Codebase Analyst Agent and its Skills address **the contract**, never a specific tool.
* Any tool satisfying the contract can be added, substituted or supplemented without changes to the Framework.
* Platform-specific coupling (e.g. Graphify's Claude Code skill wrapper) is confined to that tool's profile.

This mirrors the **Platform Adapter Contract** (`Tooling/README.md`) and the **GitHub adapter** (`Tooling/01-Platforms/GitHub/README.md`).

---

## Contract

A tool satisfies the Codebase Analysis Capability if and only if it provides all of the following.

### 1. Inputs

| Input | Required | Description |
| --- | --- | --- |
| Target repository path | Yes | A directory on the engineer's machine — the **project-under-development**, never the ForgeOS Framework itself. |
| Pre-existing graph snapshot | No | For incremental refresh. |

### 2. Outputs

| Output | Required | Description |
| --- | --- | --- |
| Knowledge graph | Yes | Persistent representation of **nodes** (concepts, modules, functions, etc.) and **edges** (relationships). Every edge must carry a **confidence label**. |
| Analysis report | Yes | Identifies god nodes, ranked surprising connections, and suggested questions. |
| Freshness indicator | Yes | Build timestamp and/or commit SHA on the graph. |
| Visualisation / exports | Optional | Interactive graph, Obsidian vault, wiki, SVG/GraphML, Neo4j cypher, etc. |

### 3. Confidence Labels (mandatory)

Every edge in the knowledge graph must carry exactly one of:

| Label | Meaning |
| --- | --- |
| `EXTRACTED` | Relationship is explicitly stated in source (e.g. an import statement, a direct call). May be reported as fact. |
| `INFERRED` | Reasonable deduction (e.g. call-graph second pass, co-occurrence). Report as likely, with basis. |
| `AMBIGUOUS` | Uncertain. Report as unverified; requires human review. |

No relationship may be presented as a fact unless tagged `EXTRACTED`.

### 4. Quality Signals (mandatory)

* **Deterministic AST extraction** for supported code languages, independent of any LLM.
* **Local execution.** The tool must run entirely on the engineer's machine; no mandatory external server.
* **Schema validation** of extractions before graph construction.
* **Security validation** of all external input (URLs, paths, labels).

### 5. Integration Surface

The tool must be consumable by ForgeOS through **at least one** of:

| Surface | Preference | Use case |
| --- | --- | --- |
| **MCP server** (local stdio) | Preferred | Online, interactive queries from any MCP-compatible AI platform (Cline, Claude Code, VS Code Agent, Cursor). |
| **CLI / library** | Acceptable | Batch analysis, report generation, metrics, documentation generation. |
| **Prompt-Based fallback** | Acceptable | When a platform exposes no tool surface; the Agent reads the report file directly. |

### 6. Freshness Model

* The graph is a **snapshot**, not live state.
* The tool must support **deliberate refresh** (incremental or full rebuild).
* The freshness indicator must be inspectable so the Agent never presents a stale graph as current.

---

## Adapter Boundary (no duplication)

| Owned by the Capability + tool profile (Tooling) | Owned by the Framework (Codebase Analyst Agent + Skills) |
| --- | --- |
| Graph build, extraction, clustering, analysis mechanics | Deciding *whether* analysis is required |
| MCP server / CLI / library invocation | Selecting the analysis technique |
| Confidence-label production | Interpreting results into engineering conclusions |
| Graph + report file production | Identifying technical debt and risks |
| Freshness / cache mechanics | Producing the Architecture Assessment |
| Tool-specific security validation | Approving any resulting Work Items |

Adding or replacing a tool must never require changes to the Codebase Analyst Agent, the Skills it invokes, the Workflow, or any Standard.

---

## Tooling Profiles

| Tool | Status | Profile | Notes |
| --- | --- | --- | --- |
| Graphify | Preferred | `Tooling/01-Platforms/Graphify/README.md` | First implementation. MCP-native. |

Future tools may be added here without Framework changes.

---

## What This Document Does Not Define

* **Engineering process.** Owned by the Framework (Workflow, Standards).
* **A specific tool's behaviour.** Owned by each tool's profile.
* **Which platforms support MCP.** Owned by `Tooling/03-Capabilities/README.md`.
* **Architectural decisions.** Owned by the Architect / Product Owner, informed by the Codebase Analyst.

---

## Related Documents

* **ADR-007** — Codebase Analysis is an Agent, Not a Skill.
* **ADR-008** — Codebase Analysis Tooling Capability & Graphify Integration Contract.
* `Tooling/01-Platforms/Graphify/README.md` — the Graphify implementation profile.
* `Tooling/02-Adapters/MCP/README.md` — the preferred adapter.
* `Framework/04-Agents/Codebase Analyst/README.md` — the Agent that consumes the capability.
* `Tooling/README.md` — the Platform Adapter Contract this mirrors.