# Forge-Architecture-Analysis

```json
{
  "skill": "Forge-Architecture-Analysis",
  "category": "02-Architecture",
  "purpose": "Forge-Architecture-Analysis provides the capability to derive and communicate the architectural structure of an existing codebase — components, boundaries, patterns and structural risks — by interpreting a knowledge graph and analysis report produced by the Codebase Analysis Tooling Capability.",
  "outputs": [
    "Architectural summary",
    "Component map",
    "Structural risk findings",
    "Inputs to the Architecture Assessment"
  ],
  "primaryTemplates": [
    "Architecture-Assessment-template.md"
  ],
  "supportingTemplates": [
    "Architecture-Definition-template.md",
    "Architecture-Decision-Record-template.md"
  ]
}
```

## Purpose

Forge-Architecture-Analysis turns the structural signals emitted by a codebase analysis tool into an engineering-grade understanding of how a system is built. It does **not** build the graph or run the tool — those are owned by the Tooling layer (per **ADR-008**). This Skill interprets the results.

It is used primarily by the **Codebase Analyst** Agent and may inform the **Architect**.

---

# Responsibility

Forge-Architecture-Analysis is responsible for:

* Reading a knowledge graph and analysis report that conform to the Codebase Analysis Capability Contract.
* Identifying components, modules and boundaries from nodes and edges.
* Recognising architectural patterns (layered, hexagonal, microservice, monolith, event-driven, etc.).
* Identifying high-degree "god node" concepts and their structural implications.
* Flagging structural risks (cyclic dependencies, hidden coupling, god objects, boundary violations).
* Preserving confidence labels (`EXTRACTED` / `INFERRED` / `AMBIGUOUS`) in every finding.
* Checking graph freshness before treating structure as current.

Forge-Architecture-Analysis does **not**:

* Build the graph or invoke the analysis tool directly (that is the Tooling layer's job).
* Make architectural decisions (that is the Architect's job).
* Approve Work Items or changes.

---

# When To Use

Apply Forge-Architecture-Analysis when:

* Onboarding an unfamiliar codebase.
* Producing an Architecture Assessment for an existing system.
* Reviewing structural health during the Improve phase.
* Scoping a migration or major refactoring effort.

---

# When Not To Use

Do not use this Skill when:

* No knowledge graph / analysis report exists (first produce one via the Tooling Capability).
* The question is purely about a single function's behaviour (use Forge-Debugging instead).
* The question is about *what to build next* (use Forge-Solution-Architecture instead).

---

# Inputs

* Knowledge graph (`graph.json` or equivalent) with confidence-labelled edges.
* Analysis report (`GRAPH_REPORT.md` or equivalent): god nodes, surprising connections, suggested questions.
* Freshness indicator (build timestamp / commit SHA).
* Existing architecture documentation, if any.

---

# Method

## Step 1 — Verify Freshness

Confirm the graph reflects the current repository state. If stale, request a refresh (`--update` or a rebuild) before continuing. Never present a stale graph as current fact.

## Step 2 — Read the High-Level Structure

Start from the analysis report's god nodes and communities. These describe the dominant concepts and natural clusters.

## Step 3 — Map Components and Boundaries

Walk the graph to identify:

* Major components and their nodes.
* Inter-component edges (the boundaries).
* Intra-component edges (internal structure).

## Step 4 — Classify Confidence

For every structural claim, record the edge confidence:

* `EXTRACTED` → may be reported as fact.
* `INFERRED` → report as likely, with the basis.
* `AMBIGUOUS` → report as unverified, requiring human review.

## Step 5 — Identify Patterns and Risks

Look for:

* Layering and direction of dependencies.
* Cycles and hidden coupling.
* God objects / overly central nodes.
* Boundary violations.
* Surprising cross-cutting connections (ranked in the report).

## Step 6 — Produce Findings

Record findings as inputs to the Architecture Assessment, each traceable to graph nodes or source locations.

---

# Outputs

* Architectural summary.
* Component map.
* Structural risk findings (with confidence and traceability).
* Inputs to the Architecture Assessment.

---

# Standards Applied

* Architecture Standards
* Documentation Standards
* Governance Standards

---

# Interaction With Other Skills

* **Forge-Dependency-Analysis** — feeds detailed dependency findings.
* **Forge-Technical-Debt-Assessment** — consumes structural risks as debt.
* **Forge-Documentation-Generation** — turns findings into documentation.
* **Forge-Architecture-Decision-Records** — records any decisions arising.

---

# Tooling Boundary

This Skill reads the **outputs** of the Codebase Analysis Capability Contract. It never addresses Graphify or any other specific tool. Per **ADR-008**, tool-specific coupling stays in the Tooling layer.

---

# Success Criteria

Forge-Architecture-Analysis is successful when:

* The system's structure is described accurately and at a useful level of detail.
* Confidence labels are preserved.
* Structural risks are explicit and traceable.
* The Architect can make design decisions from the findings without re-reading source.
* The analysis tool can be replaced without changing this Skill.