# Forge-Dependency-Analysis

```json
{
  "skill": "Forge-Dependency-Analysis",
  "category": "03-Engineering",
  "purpose": "Forge-Dependency-Analysis provides the capability to identify, classify and assess the dependencies of an existing codebase — internal module dependencies and external library/package dependencies — by interpreting a knowledge graph and analysis report produced by the Codebase Analysis Tooling Capability.",
  "outputs": [
    "Dependency map",
    "Critical-path dependencies",
    "Dependency risk findings",
    "Inputs to the Architecture Assessment"
  ],
  "primaryTemplates": [
    "Architecture-Assessment-template.md"
  ],
  "supportingTemplates": [
    "Integration-Design-template.md"
  ]
}
```

## Purpose

Forge-Dependency-Analysis turns dependency signals from a codebase analysis tool into an engineering-grade view of what the system relies on — internally and externally. It does **not** build the graph or run the tool (those are owned by the Tooling layer per **ADR-008**). This Skill interprets the results.

Used primarily by the **Codebase Analyst**; may inform the **Architect**, **Security Engineer** and **DevOps Engineer**.

---

# Responsibility

Forge-Dependency-Analysis is responsible for:

* Reading a knowledge graph and analysis report conforming to the Codebase Analysis Capability Contract.
* Identifying internal dependencies between modules, components and functions from edges.
* Identifying external dependencies (libraries, packages, services) from manifests and call edges.
* Mapping the critical path — the dependencies the system cannot function without.
* Classifying dependency risks: outdated, unmaintained, duplicated, transitive, cyclic, single-point-of-failure.
* Preserving confidence labels (`EXTRACTED` / `INFERRED` / `AMBIGUOUS`) in every finding.
* Checking graph freshness before treating dependencies as current.

Forge-Dependency-Analysis does **not**:

* Build the graph or invoke the analysis tool directly.
* Decide dependency upgrades or removals (that is an engineering decision for the relevant Agent + Product Owner).
* Approve Work Items.

---

# When To Use

* Scoping the impact of an upgrade or removal.
* Assessing supply-chain risk (links to OWASP A06/A08 — see `Framework/02-Standards/05-Security/OWASP-Top10.md`).
* Onboarding an unfamiliar codebase.
* Migration assessment.
* Technical-debt review in the Improve phase.

---

# When Not To Use

* No knowledge graph / analysis report exists (produce one via the Tooling Capability first).
* The question is about a single function's internals (use Forge-Debugging instead).

---

# Inputs

* Knowledge graph with confidence-labelled edges (especially `imports`, `uses`, `calls` relations).
* Analysis report.
* Freshness indicator.
* Package manifests (where present) to cross-reference external dependencies.

---

# Method

## Step 1 — Verify Freshness
Confirm the graph reflects current manifests and source.

## Step 2 — Extract Internal Dependencies
Walk `imports` / `uses` / `calls` edges to map the internal dependency graph.

## Step 3 — Extract External Dependencies
Cross-reference graph nodes against package manifests; identify external entry points.

## Step 4 — Map the Critical Path
Identify dependencies that sit on every major execution path.

## Step 5 — Classify Confidence
Preserve `EXTRACTED` / `INFERRED` / `AMBIGUOUS` labels. Transitive dependencies inferred by a call-graph second pass are typically `INFERRED`.

## Step 6 — Assess Risks
Flag outdated, duplicated, unmaintained, cyclic, and single-point-of-failure dependencies.

## Step 7 — Produce Findings
Record findings traceable to graph nodes or source locations.

---

# Outputs

* Dependency map (internal + external).
* Critical-path dependencies.
* Dependency risk findings (with confidence and traceability).
* Inputs to the Architecture Assessment.

---

# Standards Applied

* Architecture Standards
* Security Standards (supply-chain emphasis — OWASP A06, A08)
* Documentation Standards

---

# Interaction With Other Skills

* **Forge-Architecture-Analysis** — consumes dependency findings to determine boundaries.
* **Forge-Security-Surface-Review** — consumes supply-chain findings.
* **Forge-Migration-Assessment** — uses dependency risk to scope migrations.

---

# Tooling Boundary

This Skill reads the **outputs** of the Codebase Analysis Capability Contract. It never addresses Graphify or any other specific tool directly (per **ADR-008**).

---

# Success Criteria

Forge-Dependency-Analysis is successful when:

* Internal and external dependencies are mapped accurately.
* The critical path is explicit.
* Confidence labels are preserved.
* Dependency risks are traceable and prioritised.
* The analysis tool can be replaced without changing this Skill.