# Forge-Documentation-Generation

```json
{
  "skill": "Forge-Documentation-Generation",
  "category": "07-Documentation and Knowledge",
  "purpose": "Forge-Documentation-Generation provides the capability to generate or update documentation — architecture overviews, component summaries, data flow descriptions, glossary entries — from a knowledge graph and analysis report produced by the Codebase Analysis Tooling Capability.",
  "outputs": [
    "Generated documentation drafts",
    "Glossary candidates",
    "Inputs to the Architecture Assessment"
  ],
  "primaryTemplates": [
    "Architecture-Assessment-template.md",
    "Implementation-Documentation-template.md"
  ],
  "supportingTemplates": []
}
```

## Purpose

Forge-Documentation-Generation turns structural and dependency signals into draft documentation. It does **not** build the graph or run the tool (owned by the Tooling layer per **ADR-008**). This Skill interprets the results into prose, diagrams and glossary entries.

Used primarily by the **Codebase Analyst**; consumed by the **Technical Writer**.

---

# Responsibility

Forge-Documentation-Generation is responsible for:

* Reading a knowledge graph and analysis report conforming to the Codebase Analysis Capability Contract.
* Generating draft architecture overviews from community/structure data.
* Generating component summaries from node clusters.
* Generating data-flow descriptions from edge relations.
* Proposing glossary entries for high-degree ("god node") and surprising concepts.
* Preserving confidence labels (`EXTRACTED` / `INFERRED` / `AMBIGUOUS`) in generated text.
* Checking graph freshness before generating current-state documentation.

It does **not**:

* Approve documentation for publication (that is the Technical Writer's / Product Owner's role).
* Replace existing authoritative documentation without review.
* Make architectural decisions.

---

# When To Use

* Documenting an undocumented or poorly documented codebase.
* Refreshing stale architecture documentation.
* Onboarding an unfamiliar codebase.
* Producing the documentation section of an Architecture Assessment.

---

# When Not To Use

* No knowledge graph / analysis report exists.
* Authoritative documentation already exists and is current.
* The documentation must capture business rules not present in code (use Forge-Requirements-Elicitation instead).

---

# Inputs

* Knowledge graph with confidence-labelled edges.
* Analysis report (god nodes, communities, surprises).
* Existing documentation (for refresh / consistency check).
* Freshness indicator.

---

# Method

## Step 1 — Verify Freshness
Confirm the graph reflects the current repository.

## Step 2 — Identify Documentation Targets
From the analysis report: communities, high-degree nodes, surprising edges.

## Step 3 — Generate Drafts
Architecture overview, component summaries, data flows.

## Step 4 — Propose Glossary Entries
For god nodes and surprising concepts.

## Step 5 — Classify Confidence
Mark every generated claim with its source confidence. Generated text that relies on `INFERRED` or `AMBIGUOUS` edges must be marked.

## Step 6 — Produce Drafts
Hand drafts to the Technical Writer for review and publication.

---

# Outputs

* Generated documentation drafts.
* Glossary candidates.
* Inputs to the Architecture Assessment.

---

# Standards Applied

* Documentation Standards
* Architecture Standards
* Glossary Standards

---

# Interaction With Other Skills

* **Forge-Architecture-Analysis** — supplies structure to document.
* **Forge-Dependency-Analysis** — supplies data-flow content.
* **Forge-Repository-Metrics** — supplies quantitative content.

---

# Tooling Boundary

This Skill reads the **outputs** of the Codebase Analysis Capability Contract. It never addresses Graphify or any other specific tool directly (per **ADR-008**).

---

# Success Criteria

Forge-Documentation-Generation is successful when:

* Drafts are accurate, traceable and confidence-labelled.
* The Technical Writer can publish with review rather than re-derivation.
* Glossary candidates are grounded in graph concepts.
* The analysis tool can be replaced without changing this Skill.