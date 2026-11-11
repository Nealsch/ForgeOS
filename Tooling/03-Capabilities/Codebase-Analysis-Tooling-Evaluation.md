# Codebase Analysis Tooling Evaluation

## Purpose

Records the evaluation of open-source code-analysis tooling as candidate implementations of the **Codebase Analysis Capability** (`Tooling/03-Capabilities/Codebase-Analysis-Capability.md`) alongside the incumbent **Graphify**, and the dispositions that follow from it.

This closes **skill-catalogue gap #10** (split from gap #9 on 2026-09-13): the Codebase Analyst skills already exist; only the tooling evaluation remained.

This document lives in the **Tooling layer** and is **non-normative**. The capability contract remains the single source of truth for what a codebase analysis tool must provide. Consistent with the ADR-008 boundary, the tools named here must never be referenced from the Framework layer.

---

## Evaluation Record

| Field | Value |
| --- | --- |
| Date | 2026-11-11 |
| Work Item | WI-010 (`ForgeOS Project/Backlog/WI-010-adr008-tooling-evaluation.md`) |
| Origin | skill-gaps backlog #10 |
| Method | Best-of-breed research against the contract's mandatory areas plus license and practical fit; sources are each tool's official documentation and repository, verified on the evaluation date |
| Posture | **Evaluation-only** (Product Owner approved). No new tool profiles authored; Graphify remains the preferred implementation. |

---

## Tools Evaluated

| Tool | What it is | License | Maintenance (as researched) |
| --- | --- | --- | --- |
| **CodeQL** | GitHub's semantic code-analysis engine; code is extracted into a queryable database and queried (primary use: security scanning) | Proprietary (GitHub CodeQL Terms) | Active |
| **Joern** | Open-source code analysis platform built on Code Property Graphs (AST + control-flow + data-flow) with a Scala query language (CPGQL) | Apache-2.0 | Active (Whirly Labs + community) |
| **Glean** | Meta's system for collecting, deriving and querying facts about source code at organisational scale (RocksDB storage, Angle query language) | BSD | Active |
| **SCIP** | The SCIP Code Intelligence Protocol: a protobuf-based code-index format with a CLI and bindings, emitted by per-language indexers | Apache-2.0 | Active (now under the `scip-code` organisation) |
| **tree-sitter** | Parser generator and incremental parsing library (C runtime) with grammars for a large set of languages | MIT | Active |
| **Graphify** (incumbent) | Python library/CLI/MCP server; builds a confidence-labelled knowledge graph and the contract-format analysis report | Python package | Current preferred implementation |

---

## Contract-Fit Matrix

The contract is **all-or-nothing**: a tool satisfies the Codebase Analysis Capability if and only if it provides *every* mandatory requirement. One unmet mandatory requirement means the tool does not satisfy the contract today.

Legend: ✅ satisfies · ⚠️ partial / would need an adapter · ❌ does not satisfy · N/A not applicable.

| Contract requirement | Graphify | Joern | Glean | SCIP | tree-sitter | CodeQL |
| --- | --- | --- | --- | --- | --- | --- |
| Knowledge graph with `EXTRACTED` / `INFERRED` / `AMBIGUOUS` confidence labels | ✅ | ⚠️ CPG, no labels | ❌ | ❌ (format, not engine) | ❌ | ❌ |
| Analysis report (god nodes, ranked surprising connections, suggested questions) | ✅ | ❌ | ❌ | ❌ | ❌ | ❌ |
| Freshness indicator (snapshot timestamp / commit SHA) | ✅ | ⚠️ manual | ⚠️ DB versioning | ⚠️ index snapshot | N/A | ⚠️ DB staleness |
| Deterministic AST extraction (no LLM dependency for code) | ✅ (tree-sitter pass) | ✅ | ✅ | ✅ | ✅ (is the parser) | ✅ |
| Local execution | ✅ | ✅ (JVM CLI) | ⚠️ server-oriented | ✅ | ✅ | ✅ (CLI) |
| Schema validation of extractions | ✅ | ❌ | ✅ | ✅ (protobuf) | N/A | ✅ |
| Security validation of external input | ✅ | ❌ | ❌ | ✅ (schema parsing) | N/A | ✅ |
| Integration surface (MCP preferred / CLI acceptable / prompt fallback) | ✅ MCP + CLI + library | ⚠️ CLI / shell only | ⚠️ CLI + server | ⚠️ CLI | ❌ library only | ⚠️ CLI |
| Deliberate refresh (incremental or full rebuild) | ✅ (`--update`, `--watch`, hook) | ⚠️ rebuild | ✅ | ✅ (re-index) | N/A | ✅ (re-extract) |
| License fit for analysing private projects | ✅ | ✅ | ✅ | ✅ | ✅ | 🔴 restricted |

## Findings

### CodeQL — Not eligible

CodeQL is **not open source**. The GitHub CodeQL Terms and Conditions permit free use only for academic research, demonstrating the software, testing OSI-licensed queries, and analysing **open-source codebases**; analysing private or commercial code requires GitHub Advanced Security licensing. The software is provided "as-is", without support.

Beyond licensing, the fit is poor: CodeQL is a vulnerability-discovery engine (queries over extracted databases producing alerts), not a structural knowledge-graph builder — it provides neither confidence-labelled relationships nor the contract-format report.

**Disposition:** not a candidate for this capability. If a ForgeOS project wants CodeQL for security scanning, that is project-specific tooling owned by Project Documentation, not this capability.

### Joern — Future candidate; profile deliberately not authored

The strongest structural overlap of the candidates: Apache-2.0, actively maintained (Whirly Labs + community), local JVM CLI, deterministic multi-language front-ends (C/C++, Java, JavaScript, Python, JVM bytecode, Kotlin, PHP, Go, Ruby, Swift, C#, plus binary analysis via Ghidra), Code Property Graphs (AST + control-flow + data-flow), a Scala query language (CPGQL), taint analysis, and graph export.

It nevertheless **does not satisfy the contract today**:

* No `EXTRACTED` / `INFERRED` / `AMBIGUOUS` confidence labels on relationships.
* No contract-format analysis report (god nodes, ranked surprising connections, suggested questions).
* No native freshness indicator (snapshot timestamp / commit SHA).
* No MCP surface — CLI and interactive shell only.
* No contract-equivalent schema or security validation.

**Disposition:** future candidate, **no profile authored**. Creating a Tooling profile now would assert a contract satisfaction that does not hold. A profile becomes appropriate only once an adapter maps Joern's CPG output onto the contract's outputs (see Re-evaluation Triggers).

### Glean (Meta) — Not suitable

A system for collecting, deriving and querying **facts about source code** at organisational scale: RocksDB-backed fact storage, the Angle query language (Datalog-like, non-recursive), language indexers (full support for C++, C, Hack, Haskell, JavaScript/Flow, Python; SCIP/LSIF ingestion for several more), a Thrift server designed for replicated large-scale deployment, and a Glass/LSP layer. BSD-licensed and active.

Wrong shape and wrong scale for this capability: a persistent org-scale fact store rather than a per-project, locally rebuilt snapshot graph; no confidence labels; no contract-format report; and a heavyweight operational footprint (server-oriented; non-trivial local build) for what ForgeOS needs on demand.

**Disposition:** not suitable. No profile; no further tracking.

### SCIP (Sourcegraph) — A format, not an implementation

The **SCIP Code Intelligence Protocol**: a protobuf-based, self-contained code-index format with a CLI and Go/Rust/TypeScript/Haskell bindings. Compiler-accurate indexers (`scip-java`, `scip-typescript`, `rust-analyzer`, `scip-clang`, `scip-python`, `scip-dotnet`, `scip-php`, `scip-dart`, …) emit definitions, references and implementations. Apache-2.0, actively maintained.

It cannot satisfy the contract by nature: SCIP is a **data format/protocol**, not an analysis engine — it produces no graph, no confidence labels and no report.

**Disposition:** not an implementation. Recorded as a **potential upstream input format**: a future profile could ingest SCIP indexes (per-language, compiler-accurate symbol relations) as an extraction source for graph construction. Glean's native SCIP ingestion confirms its role as an interchange layer between code-intelligence systems.

### tree-sitter — Building block, already absorbed

An MIT-licensed parser generator and incremental parsing library (C runtime), robust to syntax errors, widely embedded in editors and code-navigation systems. It provides deterministic syntax trees only — no graph, no labels, no report, no freshness model — so it is not an analysis tool.

**Disposition:** **already absorbed.** tree-sitter is the deterministic AST extraction engine inside Graphify (`Tooling/01-Platforms/Graphify/README.md`). It is a building block for contract implementations, not a candidate implementation itself.

### Graphify (incumbent) — Status unchanged

Satisfies the contract by construction: confidence-labelled knowledge graph (`graphify-out/graph.json`), contract-format report (`GRAPH_REPORT.md`), freshness via build timestamp + commit SHA, deterministic tree-sitter AST extraction for code (LLM used only for optional non-code modalities), local execution, schema and security validation, MCP/CLI/library surfaces, and deliberate refresh (`--update`, `--watch`, post-commit hook).

**Disposition:** remains the **first and preferred implementation**. Nothing in this evaluation changes its status, its profile, or the contract.

---

## Dispositions Summary

| Tool | Disposition | Action recorded |
| --- | --- | --- |
| Graphify | Preferred implementation | None — status unchanged |
| Joern | Future candidate; profile not authored | Re-evaluate on the triggers below |
| Glean | Not suitable | None |
| SCIP | Not an implementation; potential upstream input format | Optionally consider as an ingestion format in a future profile |
| tree-sitter | Building block (inside Graphify) | None |
| CodeQL | Not eligible (license restrictions; purpose mismatch) | Excluded from this capability; project-level security tooling belongs to Project Documentation |

---

## Re-evaluation Triggers

Revisit this evaluation when any of the following occurs:

1. **Graphify risk** — Graphify becomes unmaintained, or a released version fails a contract requirement.
2. **Joern adapter** — an adapter exists that maps Joern CPG output to contract outputs (confidence labels, contract-format report, freshness indicator, schema and security validation). At that point, author a profile via the adoption path below.
3. **New native implementation** — a new tool emerges that satisfies the contract as-is.
4. **SCIP maturity** — SCIP ingestion becomes a practical extraction source for graph construction.

---

## Future Profile Adoption Path

Unchanged by this evaluation. To add a future tool:

1. Verify the tool satisfies **every** mandatory contract requirement (the contract is all-or-nothing).
2. Author a Tooling profile at `Tooling/01-Platforms/<tool>/README.md`, following the Graphify profile pattern, including the platform-coupling containment rule.
3. Register the tool in the contract's **Tooling Profiles** table.
4. Update `Tooling/03-Capabilities/README.md` if the tool consumes an adapter the way a platform does.
5. Make **no Framework changes** — adding or replacing a tool must never require changes to the Codebase Analyst Agent, the Skills it invokes, the Workflow, or any Standard.

---

## What This Document Does Not Define

* **The capability contract.** Owned by `Tooling/03-Capabilities/Codebase-Analysis-Capability.md` (normative).
* **A specific tool's behaviour.** Owned by each tool's profile; candidates without profiles have no recorded behaviour contract.
* **Engineering conclusions.** Analysis outputs are signals; interpretation, prioritisation and approval are owned by the Codebase Analyst Agent and the Product Owner (ADR-007 / ADR-008).
* **Project-specific tooling choices.** A project's own analysis or security tooling belongs to Project Documentation.

---

## Related Documents

* **ADR-007** — Codebase Analysis is an Agent, Not a Skill.
* **ADR-008** — Codebase Analysis Tooling Capability & Graphify Integration Contract.
* `Tooling/03-Capabilities/Codebase-Analysis-Capability.md` — the contract (normative).
* `Tooling/01-Platforms/Graphify/README.md` — the incumbent implementation profile.
* `Tooling/02-Adapters/MCP/README.md` — the preferred adapter.
* `Framework/04-Agents/Codebase Analyst/README.md` — the Agent that consumes the capability.
* `ForgeOS Project/Backlog/WI-010-adr008-tooling-evaluation.md` — the work-item record for this evaluation.
* `ForgeOS Project/Backlog/skill-gaps-backlog.md` — gap #10, closed by this evaluation.
