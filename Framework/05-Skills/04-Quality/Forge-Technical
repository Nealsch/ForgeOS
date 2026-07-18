# Forge-Technical-Debt-Assessment

```json
{
  "skill": "Forge-Technical-Debt-Assessment",
  "category": "04-Quality",
  "purpose": "Forge-Technical-Debt-Assessment provides the capability to identify, classify and quantify technical debt in an existing codebase by interpreting structural, dependency and complexity signals from a knowledge graph and analysis report produced by the Codebase Analysis Tooling Capability.",
  "outputs": [
    "Technical debt findings",
    "Debt-prioritised backlog recommendations",
    "Inputs to the Architecture Assessment"
  ],
  "primaryTemplates": [
    "Architecture-Assessment-template.md"
  ],
  "supportingTemplates": []
}
```

## Purpose

Forge-Technical-Debt-Assessment turns structural and dependency signals into a quantified view of technical debt. It does **not** build the graph or run the tool (those are owned by the Tooling layer per **ADR-008**). This Skill interprets the results.

Used primarily by the **Codebase Analyst** and **Product Manager** (Improve phase).

---

# Responsibility

Forge-Technical-Debt-Assessment is responsible for:

* Reading a knowledge graph and analysis report conforming to the Codebase Analysis Capability Contract.
* Identifying debt categories: structural (god nodes, cycles), dependency (outdated, duplicated), complexity (hotspots), documentation (missing), test (gaps).
* Quantifying debt by impact, effort and risk.
* Prioritising debt for the Improve-phase backlog.
* Preserving confidence labels (`EXTRACTED` / `INFERRED` / `AMBIGUOUS`).
* Checking graph freshness before treating findings as current.

It does **not** approve Work Items or decide repayment schedule — those are Product Owner decisions.

---

# When To Use

* Improve-phase technical-debt review.
* Architecture Assessment production.
* Pre-migration debt triage.

---

# When Not To Use

* No knowledge graph / analysis report exists (produce one via the Tooling Capability first).
* The question is a single known bug (use Forge-Debugging instead).

---

# Inputs

* Knowledge graph with confidence-labelled edges.
* Analysis report (god nodes, surprising connections).
* Repository metrics (file sizes, churn, complexity) where available.
* Existing technical-debt register, if any.

---

# Method

## Step 1 — Verify Freshness
Confirm the graph reflects the current repository.

## Step 2 — Identify Debt Categories
Classify findings into structural, dependency, complexity, documentation and test debt.

## Step 3 — Quantify
For each item, estimate impact (risk + cost-of-delay) and effort (remediation work).

## Step 4 — Classify Confidence
Preserve edge confidence labels. Report `INFERRED`/`AMBIGUOUS` debt accordingly.

## Step 5 — Prioritise
Rank by impact/effort; recommend a repayment sequence.

## Step 6 — Produce Findings
Record traceable findings and backlog recommendations.

---

# Outputs

* Technical-debt findings (with confidence and traceability).
* Debt-prioritised backlog recommendations (for Product Owner approval).
* Inputs to the Architecture Assessment.

---

# Standards Applied

* Architecture Standards
* Coding Standards
* Documentation Standards

---

# Interaction With Other Skills

* **Forge-Architecture-Analysis** — supplies structural debt.
* **Forge-Dependency-Analysis** — supplies dependency debt.
* **Forge-Repository-Metrics** — supplies complexity/churn signals.
* **Forge-Prioritisation** — ranks the resulting backlog.

---

# Tooling Boundary

This Skill reads the **outputs** of the Codebase Analysis Capability Contract. It never addresses Graphify or any other specific tool directly (per **ADR-008**).

---

# Success Criteria

Forge-Technical-Debt-Assessment is successful when:

* Debt is categorised, quantified and prioritised.
* Confidence labels are preserved.
* Findings are traceable.
* The Product Owner can act on the backlog recommendations without re-analysis.
* The analysis tool can be replaced without changing this Skill.