# Forge-Repository-Metrics

```json
{
  "skill": "Forge-Repository-Metrics",
  "category": "03-Engineering",
  "purpose": "Forge-Repository-Metrics provides the capability to collect, interpret and report quantitative repository metrics — file counts, size, churn, complexity, language breakdown, community/cluster counts — from a knowledge graph and analysis report produced by the Codebase Analysis Tooling Capability.",
  "outputs": [
    "Repository metrics report",
    "Metric-based health indicators",
    "Inputs to the Architecture Assessment"
  ],
  "primaryTemplates": [
    "Architecture-Assessment-template.md"
  ],
  "supportingTemplates": []
}
```

## Purpose

Forge-Repository-Metrics turns quantitative signals from a codebase analysis tool into engineering-grade health indicators. It does **not** build the graph or run the tool (owned by the Tooling layer per **ADR-008**). This Skill interprets the results.

Used primarily by the **Codebase Analyst** and **DevOps Engineer**; informs the **Product Manager** (Improve phase).

---

# Responsibility

Forge-Repository-Metrics is responsible for:

* Reading a knowledge graph and analysis report conforming to the Codebase Analysis Capability Contract.
* Reporting counts: files, nodes, edges, communities, supported languages.
* Reporting distributions: node degree, community size, file size, churn (where available).
* Computing simple health indicators: god-node count, max degree, avg degree, surprise count.
* Flagging metric anomalies (e.g. one community holding >50% of nodes).
* Preserving freshness (metrics are point-in-time).

It does **not** define SLAs, SLOs or performance thresholds (those are Standards/Governance-owned).

---

# When To Use

* Repository health review (Improve phase).
* Onboarding an unfamiliar codebase.
* Architecture Assessment production.

---

# When Not To Use

* No knowledge graph / analysis report exists.
* Performance/latency metrics of a running system are needed (that is operational monitoring, not repository metrics).

---

# Inputs

* Knowledge graph with node/edge/community attributes.
* Analysis report.
* Optional: git history for churn metrics.

---

# Method

## Step 1 — Verify Freshness
Confirm the graph reflects the current repository.

## Step 2 — Collect Counts
Files, nodes, edges, communities, languages.

## Step 3 — Compute Distributions
Degree distribution, community-size distribution, file-size distribution.

## Step 4 — Compute Health Indicators
God-node count, max/avg degree, surprise count, largest-community share.

## Step 5 — Flag Anomalies
Any metric outside expected ranges.

## Step 6 — Produce Report
Record traceable metrics and indicators.

---

# Outputs

* Repository metrics report.
* Metric-based health indicators.
* Inputs to the Architecture Assessment.

---

# Standards Applied

* Architecture Standards
* Documentation Standards

---

# Interaction With Other Skills

* **Forge-Architecture-Analysis** — consumes community/structure counts.
* **Forge-Technical-Debt-Assessment** — consumes complexity/churn signals.

---

# Tooling Boundary

This Skill reads the **outputs** of the Codebase Analysis Capability Contract. It never addresses Graphify or any other specific tool directly (per **ADR-008**).

---

# Success Criteria

Forge-Repository-Metrics is successful when:

* Metrics are accurate and reproducible.
* Health indicators are explicit and explained.
* Freshness is recorded.
* The analysis tool can be replaced without changing this Skill.