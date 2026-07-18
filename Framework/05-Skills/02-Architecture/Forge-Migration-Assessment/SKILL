# Forge-Migration-Assessment

```json
{
  "skill": "Forge-Migration-Assessment",
  "category": "02-Architecture",
  "purpose": "Forge-Migration-Assessment provides the capability to scope a technology, framework, platform or architecture migration by combining architectural, dependency and technical-debt signals from the Codebase Analysis Tooling Capability with migration-specific risk analysis.",
  "outputs": [
    "Migration impact assessment",
    "Migration risk register",
    "Migration sequencing recommendation",
    "Inputs to the Architecture Assessment"
  ],
  "primaryTemplates": [
    "Architecture-Assessment-template.md"
  ],
  "supportingTemplates": [
    "Architecture-Decision-Record-template.md"
  ]
}
```

## Purpose

Forge-Migration-Assessment combines existing-state understanding (from the other Codebase Analyst skills) with target-state design to scope and de-risk a migration. It does **not** build the graph or run the tool (owned by the Tooling layer per **ADR-008**). This Skill interprets and combines results.

Used primarily by the **Codebase Analyst**; informs the **Architect** and **Product Owner**.

---

# Responsibility

Forge-Migration-Assessment is responsible for:

* Reading a knowledge graph and analysis report conforming to the Codebase Analysis Capability Contract.
* Identifying the blast radius of a proposed migration (which nodes/edges are affected).
* Identifying migration blockers (cyclic dependencies, god nodes, unsupported constructs).
* Estimating migration complexity and sequencing.
* Recording migration risks.
* Preserving confidence labels (`EXTRACTED` / `INFERRED` / `AMBIGUOUS`).
* Checking graph freshness before treating findings as current.

It does **not** approve migrations, commit to a target architecture, or approve Work Items.

---

# When To Use

* Major framework, language, platform, cloud or database migration.
* Monolith-to-service decomposition.
* Legacy replacement programmes.

---

# When Not To Use

* No knowledge graph / analysis report exists.
* The change is a localised feature addition (use Forge-Solution-Architecture instead).

---

# Inputs

* Knowledge graph with confidence-labelled edges.
* Analysis report.
* Dependency map (from Forge-Dependency-Analysis).
* Technical-debt findings (from Forge-Technical-Debt-Assessment), if produced.
* Proposed target architecture or migration scope.

---

# Method

## Step 1 — Verify Freshness
Confirm the graph reflects the current repository.

## Step 2 — Identify Blast Radius
Walk the graph to find every node/edge affected by the proposed migration.

## Step 3 — Identify Blockers
Flag constructs that block clean migration (cycles, god nodes, unsupported patterns).

## Step 4 — Estimate Complexity
Score the migration by surface area, blocker severity and dependency depth.

## Step 5 — Recommend Sequencing
Propose an ordering that resolves blockers before migrating dependents.

## Step 6 — Classify Confidence
Preserve edge confidence; report inferred blast radius accordingly.

## Step 7 — Produce Findings
Record an impact assessment, risk register and sequencing recommendation.

---

# Outputs

* Migration impact assessment (with confidence and traceability).
* Migration risk register.
* Migration sequencing recommendation.
* Inputs to the Architecture Assessment and an ADR if justified.

---

# Standards Applied

* Architecture Standards
* Governance (change-management, compatibility)
* Security Standards

---

# Interaction With Other Skills

* **Forge-Architecture-Analysis** — supplies structure.
* **Forge-Dependency-Analysis** — supplies critical-path and external-dependency risk.
* **Forge-Technical-Debt-Assessment** — supplies pre-existing debt that affects migration.
* **Forge-Solution-Architecture** — owns the target-state design.

---

# Tooling Boundary

This Skill reads the **outputs** of the Codebase Analysis Capability Contract. It never addresses Graphify or any other specific tool directly (per **ADR-008**).

---

# Success Criteria

Forge-Migration-Assessment is successful when:

* The migration blast radius is explicit and traceable.
* Blockers are identified before work begins.
* Sequencing minimises risk and rework.
* Confidence labels are preserved.
* The analysis tool can be replaced without changing this Skill.