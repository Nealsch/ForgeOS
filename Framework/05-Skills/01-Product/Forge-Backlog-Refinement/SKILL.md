# Forge-Backlog-Refinement

```json
{
  "skill": "Forge-Backlog-Refinement",
  "category": "01-Product",
  "purpose": "Forge-Backlog-Refinement provides the capability to keep the work backlog execution-ready — decomposing, detailing, estimating at cohort level, de-duplicating and ordering upcoming work items so that the top of the backlog is always ready for the next iteration without re-litigating intent.",
  "outputs": [
    "Refined, execution-ready work items",
    "De-duplicated and consolidated backlog",
    "Readiness flags for iteration planning"
  ],
  "primaryTemplates": [
    "Work-Item-template.md"
  ],
  "supportingTemplates": [
    "User-Story-template.md"
  ]
}
```

## Purpose

Forge-Backlog-Refinement is the maintenance discipline between Prioritisation (which decides order by value) and iteration execution (which consumes ready items). A backlog left unrefined decays into either a wish-list of vague items or a graveyard of duplicates; refinement keeps the boundary between "idea" and "ready" explicit.

It is technology-independent. Used primarily by the **AI Program Manager** with the **Product Owner** during **Improve** and between iterations; consumed by Forge-Task-Routing and delivery skills.

---

# Responsibility

Forge-Backlog-Refinement is responsible for:

* Reviewing upcoming items for clarity, completeness and fitness for hand-over.
* Decomposing oversized items into deliverable work items with acceptance criteria.
* Detecting and consolidating duplicates and overlapping items.
* Confirming each ready item's scope alignment and dependency state.
* Applying cohort-level sizing adequate for sequencing (not false-precision estimates).
* Keeping item metadata current: category, phase, dependencies, linked artefacts.

It does **not**:

* Decide relative value or order — Forge-Prioritisation owns ordering.
* Create acceptance criteria from scratch — Forge-Acceptance-Criteria owns their definition; refinement verifies presence and currency.
* Execute the work or plan iteration schedules (delivery skills).

---

# When To Use

* Continuously during **Improve** and between iterations, so the top of the backlog stays execution-ready.
* When a work item has been pending long enough that its context may have drifted.
* When the backlog has grown faster than it has been consumed.

# When Not To Use

* To decide what is worth doing — use Forge-Prioritisation.
* To define success conditions for new capability — use Forge-Acceptance-Criteria.
* To reshape project direction — use Forge-Roadmap-Planning.

---

# Inputs

* Current backlog (all states).
* Prioritisation decisions and roadmap.
* Scope definition and glossary for boundary and terminology checks.
* Completed-item history for duplication detection.

# Method

## Step 1 — Triage
Sweep the backlog for stale, duplicated or superseded items; consolidate or retire with rationale.

## Step 2 — Decompose
Split items too large to deliver or verify; preserve traceability from parent to children.

## Step 3 — Detail
For each near-term item: confirm intent, boundary, dependencies and required artefacts are present and current.

## Step 4 — Verify Readiness
Check scope alignment, terminology and acceptance-criteria presence; flag gaps to the owning skill.

## Step 5 — Size At Cohort Level
Apply sizing fine-grained enough for sequencing, coarse enough to avoid false precision.

## Step 6 — Publish Readiness
Mark execution-ready items; hand the ready set to Forge-Task-Routing and iteration planning.

---

# Outputs

* Refined work items with current metadata and traceability.
* Consolidated, de-duplicated backlog.
* Readiness flags and gap reports for unresolved items.

---

# Standards Applied

* Workflow Standards (work-item lifecycle, ADR-005)
* Documentation Standards
* Requirements Standards (traceability)

---

# Interaction With Other Skills

* **Forge-Prioritisation** — owns order; refinement owns readiness. Refinement never reorders by value.
* **Forge-Acceptance-Criteria** — verifies criteria exist and are current on refined items.
* **Forge-Task-Routing** — consumes the execution-ready set.
* **Forge-Session-Management** — refined items anchor session scoping and handoffs.
* **Forge-Glossary-Management** — item wording must use glossary terms.

---

# Success Criteria

Forge-Backlog-Refinement is successful when:

* The top of the backlog is always executable without re-clarification sessions.
* No duplicate or contradictory items remain active.
* Every ready item traces to scope, has current acceptance criteria, and states its dependencies.
* Refinement effort stays proportional: near-term items refined, distant items coarse.