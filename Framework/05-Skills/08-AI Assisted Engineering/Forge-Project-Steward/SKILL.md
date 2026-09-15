# Forge-Project-Steward

```json
{
  "skill": "Forge-Project-Steward",
  "category": "08-AI Assisted Engineering",
  "purpose": "Forge-Project-Steward provides the capability to maintain continuous project alignment across sessions and phases — tracking the project's position in the SDLC, verifying that in-flight work stays consistent with decisions and scope, detecting drift between artefacts, and prompting the re-establishment of context so that neither human nor AI collaborators act on stale state.",
  "outputs": [
    "Project alignment state (phase position, in-flight work, open decisions)",
    "Drift findings with remediation proposals",
    "Context-restoration prompts for sessions and handoffs"
  ],
  "primaryTemplates": [
    "Work-Item-template.md"
  ],
  "supportingTemplates": [
    "Decision-Log-template.md"
  ]
}
```

## Purpose

Forge-Project-Steward is the continuity capability of ForgeOS: it ensures the project's *state* — where we are, what was decided, what is in flight — is always knowable and always current. Where Forge-Session-Management moves a single session safely from start to end, and Forge-Task-Routing picks the right capability for a task, the Steward watches across sessions: it is the mechanism that prevents decisions, scope and work from drifting apart over time.

Used continuously by the **AI Program Manager** across all phases, and consulted at every session start and end.

---

# Responsibility

Forge-Project-Steward is responsible for:

* Maintaining the authoritative alignment state: current phase and gate position of every in-flight work item.
* Verifying new work against recorded decisions, scope baseline and roadmap before it proceeds.
* Detecting drift: artefacts contradicting decisions, work exceeding scope, gates passed without evidence.
* Prompting context restoration at session starts and verifying handoff completeness at session ends.
* Surfacing stale work — items untouched past their review trigger — to Forge-Prioritisation.
* Escalating alignment conflicts to the Product Owner rather than resolving them silently.

It does **not**:

* Make product or engineering decisions (Product Owner / specialist agents).
* Sequence or prioritise work (Forge-Prioritisation).
* Select capabilities for a given task (Forge-Task-Routing).
* Manage the mechanics of a single session (Forge-Session-Management).

---

# When To Use

* At every **session start**, to restore alignment state before work begins.
* At every **session end**, to verify the handoff captures exact phase/gate position.
* When work in progress may have been affected by a new decision or scope change.
* When artefacts appear mutually inconsistent, or a work item's status is uncertain.
* Periodically, to sweep for stale work and undocumented drift.

# When Not To Use

* To choose which skill performs a task — Forge-Task-Routing.
* To open, run, or close a session's mechanics — Forge-Session-Management.
* To re-rank the backlog — Forge-Prioritisation.

---

# Inputs

* Session handoffs and session records.
* Decision log, scope baseline and roadmap.
* Work-item records and backlog state.
* Quality-gate records and audit results.

# Method

## Step 1 — Load State
At session start, reconstruct alignment state from the latest handoff: phase, gate positions, in-flight items, open decisions.

## Step 2 — Verify Currency
Check state against the decision log, scope baseline and roadmap for changes since last recorded.

## Step 3 — Detect Drift
Compare artefacts and in-flight work against decisions and scope; list contradictions and stale items.

## Step 4 — Propose Remediation
For each drift finding, propose a correction (update artefact, re-open gate, re-route work) — the Product Owner disposes.

## Step 5 — Guard Transitions
Before phase or gate transitions, verify exit-criteria evidence exists and handoffs are complete.

## Step 6 — Persist
At session end, ensure the handoff records exact alignment state so the next session restores without loss.

---

# Outputs

* Current project alignment state (phases, gates, in-flight work, open decisions).
* Drift findings with remediation proposals.
* Context-restoration prompts and verified session handoffs.

---

# Standards Applied

* Workflow Standards (SDLC phases, gates, exit criteria)
* Governance Standards (change and decision records)
* Documentation Standards

---

# Interaction With Other Skills

* **Forge-Session-Management** — owns session mechanics; the Steward supplies the alignment state sessions restore from and verify into.
* **Forge-Task-Routing** — routes tasks to capabilities; the Steward verifies routed work stays within decisions and scope.
* **Forge-Prioritisation** — receives stale-work and drift findings that affect ordering.
* **Forge-Scope-Definition** — supplies the scope baseline drift is measured against.
* **Forge-Roadmap-Planning** — roadmap changes trigger alignment re-verification.
* **Forge-Retrospective-Facilitation** — recurring drift themes become retrospective evidence.

---

# Success Criteria

Forge-Project-Steward is successful when:

* Any session can restore full project alignment from the recorded state alone.
* No work proceeds on stale decisions or an unrecorded scope change.
* Every in-flight item's phase and gate position is knowable on demand.
* Drift is surfaced and dispositioned by the Product Owner, never silently absorbed.
* Handoffs are complete enough that nothing lives only in a previous session's context.
