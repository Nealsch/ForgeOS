---
purpose: Capture an architectural assessment of an existing codebase derived from codebase analysis tooling outputs (knowledge graph + analysis report).
when_used: When the Codebase Analyst must communicate the structure, dependencies, risks and technical debt of an existing system.
produced_by: Forge-Architecture-Analysis
consumed_by:
  - Forge-Solution-Architecture
  - Forge-Migration-Assessment
  - Forge-Technical-Debt-Assessment
  - Forge-Security-Surface-Review
  - Forge-Documentation-Generation
category: 02-Architecture
template_type: primary
---

# Architecture Assessment

## Purpose

Document the architectural understanding of an existing codebase, derived from codebase analysis tooling outputs and interpreted by the Codebase Analyst. This is an **assessment of current state**, not a design for future state (use `Architecture-Definition-template.md` for design).

## When Used

Use this template when:

* Onboarding an unfamiliar codebase.
* Reviewing structural health during the Improve phase.
* Scoping a migration or major refactoring effort.
* Providing architectural context to the Architect or other Agents.

## Produced By

`Forge-Architecture-Analysis` (Codebase Analyst Agent), drawing on `Forge-Dependency-Analysis`, `Forge-Technical-Debt-Assessment`, `Forge-Migration-Assessment`, `Forge-Repository-Metrics`, `Forge-Security-Surface-Review`, and `Forge-Documentation-Generation`.

## Consumed By

* Architect
* Product Manager
* Backend / Frontend Engineers
* Security Engineer
* QA Engineer
* Technical Writer

---

## Template

### Metadata

| Field | Value |
| --- | --- |
| Target repository | _repo path / URL_ |
| Target codebase binding | _project-under-development / meta (ForgeOS)_ |
| Analysis tool | _e.g. Graphify vX.Y_ |
| Adapter used | _MCP / CLI / Prompt-Based_ |
| Graph build timestamp | _ISO-8601_ |
| Source commit SHA | _git SHA analysed_ |
| Produced by | _Codebase Analyst_ |
| Produced on | _ISO-8601_ |
| Assessment scope | _full / partial (specify)_ |

### 1. Executive Summary

A short, plain-language description of the system, its dominant architectural pattern, and the single most important structural risk.

### 2. Freshness Statement

Confirm the graph reflects the current repository. State the build timestamp, commit SHA and any refresh performed before this assessment. If stale, state that findings may not reflect current state and what was done about it.

### 3. Structural Overview

* Dominant architectural pattern (layered, hexagonal, microservice, monolith, event-driven, etc.).
* Major components and their responsibilities.
* Component map (diagram or list).

### 4. Component Breakdown

For each major component:

* Purpose.
* Key nodes / entry points.
* Inbound dependencies.
* Outbound dependencies.
* Notable internal structure (communities / clusters).

### 5. Dependency Summary

* Internal dependency map summary.
* External dependencies (libraries / packages / services).
* Critical-path dependencies.

### 6. Findings

#### 6.1 Structural Risks

God nodes, cycles, hidden coupling, boundary violations. **Every finding must record its confidence label.**

| Finding | Location (node / source) | Confidence | Impact | Recommended Action |
| --- | --- | --- | --- | --- |
| | | `EXTRACTED` / `INFERRED` / `AMBIGUOUS` | | |

#### 6.2 Dependency Risks

Outdated, duplicated, unmaintained, single-point-of-failure dependencies.

| Finding | Dependency | Confidence | Impact | Recommended Action |
| --- | --- | --- | --- | --- |
| | | | | |

#### 6.3 Technical Debt

Quantified debt (impact / effort), prioritised.

| Item | Category | Impact | Effort | Priority | Confidence |
| --- | --- | --- | --- | --- | --- |
| | Structural / Dependency / Complexity / Docs / Test | | | | |

#### 6.4 Security Surface (Preliminary)

Entry points, trust-boundary crossings, sensitive flows. *Not a threat model — feeds Forge-Threat-Modelling.*

#### 6.5 Surprising Connections

Ranked surprising edges from the analysis report, each with confidence and interpretation.

### 7. Metrics

Counts and distributions from `Forge-Repository-Metrics`:

* Files, nodes, edges, communities, languages.
* Max / average degree; god-node count.
* Largest-community share.
* Any anomalies.

### 8. Migration Considerations (if applicable)

Blast radius, blockers, complexity score, sequencing recommendation (from `Forge-Migration-Assessment`).

### 9. Documentation Gaps

Missing or stale documentation identified during the assessment, and proposed glossary candidates.

### 10. Recommended Work Items

Work Items the Codebase Analyst recommends the Product Owner / Architect approve. **The Codebase Analyst does not approve these.**

| Recommendation | Type | Rationale | Confidence |
| --- | --- | --- | --- |
| | Tech Debt / Risk / Migration / Docs | | |

### 11. Confidence & Freshness Disclaimer

State explicitly which findings rest on `EXTRACTED` evidence, which on `INFERRED`, and which on `AMBIGUOUS`. State that the graph is a snapshot and give the freshness cut-off.

### 12. Traceability

Links back to the source `graph.json` / `GRAPH_REPORT.md` and (where possible) to source locations (`source_file:line`).

---

## Completion Criteria

* The freshness statement is present and accurate.
* Each finding carries a confidence label.
* `INFERRED` and `AMBIGUOUS` findings are distinguished from `EXTRACTED` facts.
* Findings are traceable to graph nodes or source locations.
* Recommended Work Items are clearly marked as recommendations, not approvals.
* The assessment distinguishes *what the tool found* from *what the Analyst concludes*.