# Forge-Roadmap-Planning

```json
{
  "skill": "Forge-Roadmap-Planning",
  "category": "01-Product",
  "purpose": "Forge-Roadmap-Planning provides the capability to translate strategic direction, evaluation findings and improvement actions into a sequenced, outcome-oriented roadmap — grouping work into themes and milestones with explicit assumptions, so that Prioritisation operates inside a coherent forward plan rather than as isolated sequencing decisions.",
  "outputs": [
    "Themed, milestone-based roadmap",
    "Assumption and dependency map for planned themes",
    "Roadmap change recommendations"
  ],
  "primaryTemplates": [
    "Roadmap-template.md"
  ],
  "supportingTemplates": [
    "Prioritisation-Matrix-template.md"
  ]
}
```

## Purpose

Forge-Roadmap-Planning is the bridge between strategy and sequencing. It answers "in what direction, in what order of magnitude, and why now" at a level above individual work items, giving Forge-Prioritisation a stable frame so that ordering decisions are consistent instead of ad hoc.

It is technology-independent. Used primarily by the **AI Program Manager** and **Product Owner** during **Improve** (and at project initiation); consumed by Forge-Prioritisation and Forge-Backlog-Refinement.

---

# Responsibility

Forge-Roadmap-Planning is responsible for:

* Consolidating inputs — product evaluation findings, strategic direction, risk posture, technical debt signals — into candidate themes.
* Grouping work into outcome-oriented themes rather than feature lists.
* Sequencing themes into milestones based on value, risk, dependencies and capacity assumptions.
* Recording the assumptions each theme rests on, with validation points.
* Maintaining the roadmap as a living plan: re-planning on material change, not calendar habit.
* Feeding each milestone's candidate items into Prioritisation and Refinement.

It does **not**:

* Order individual work items (Forge-Prioritisation).
* Detail items for execution (Forge-Backlog-Refinement).
* Set business direction — the Product Owner owns strategy; this Skill structures it into a plan.

---

# When To Use

* At project initiation, to establish the first roadmap.
* During **Improve**, when evaluation findings or completed milestones change the forward picture.
* When strategy, constraints or capacity assumptions materially change.
* When work requests arrive faster than the current plan can absorb them coherently.

# When Not To Use

* To sequence or rank specific items — use Forge-Prioritisation.
* To refine items for execution — use Forge-Backlog-Refinement.
* To check delivered value of past work — use Forge-Product-Evaluation.

---

# Inputs

* Strategic direction and Product Owner objectives.
* Forge-Product-Evaluation findings and Forge-Retrospective-Facilitation actions.
* Forge-Risk-Assessment register and Forge-Technical-Debt-Assessment signals.
* Current roadmap, capacity and dependency information.

# Method

## Step 1 — Consolidate Inputs
Collect strategic, evaluative and risk inputs; identify tensions between them explicitly.

## Step 2 — Form Themes
Group candidate work into outcome-oriented themes; each theme states the outcome it pursues.

## Step 3 — Sequence
Order themes into milestones by value, risk (from the risk register), dependencies and capacity assumptions.

## Step 4 — Record Assumptions
For each theme, record the assumptions it rests on and when each will be validated.

## Step 5 — Publish
Maintain the roadmap as the single forward-planning artefact, cross-linked to backlog and decision log.

## Step 6 — Re-Plan On Signal
Re-plan when assumptions are invalidated, capacity shifts, or evaluation findings demand it; record roadmap changes as decisions.

---

# Outputs

* Themed, milestone-based roadmap with assumptions.
* Dependency and validation map.
* Roadmap-change decision records.

---

# Standards Applied

* Workflow Standards (phase structure)
* Documentation Standards
* Decision-Making ("AI proposes, Product Owner disposes")

---

# Interaction With Other Skills

* **Forge-Prioritisation** — orders items within the roadmap frame; roadmap changes flow down, sequencing learnings flow up.
* **Forge-Backlog-Refinement** — refines the near-term milestones into ready items.
* **Forge-Product-Evaluation / Forge-Retrospective-Facilitation** — primary evidence inputs for re-planning.
* **Forge-Risk-Assessment** — risk posture shapes theme sequencing.
* **Forge-Scope-Definition** — project scope bounds what themes are legitimate.

---

# Success Criteria

Forge-Roadmap-Planning is successful when:

* The roadmap explains not just what is next, but why — with traceable assumptions.
* Prioritisation decisions are consistent with the roadmap or trigger a recorded re-plan.
* Every theme names its outcome and its validation point.
* Stale plans are re-planned on signal, not on ritual.