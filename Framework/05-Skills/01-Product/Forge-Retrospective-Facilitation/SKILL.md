# Forge-Retrospective-Facilitation

```json
{
  "skill": "Forge-Retrospective-Facilitation",
  "category": "01-Product",
  "purpose": "Forge-Retrospective-Facilitation provides the capability to facilitate structured, blame-free retrospectives at iteration, release and project milestones — eliciting what worked, what did not and why, converting findings into concrete improvement actions, and tracking those actions to verified closure.",
  "outputs": [
    "Retrospective record (findings, causes, themes)",
    "Improvement actions with owners and review triggers",
    "Input to Forge-Roadmap-Planning and Forge-Prioritisation"
  ],
  "primaryTemplates": [
    "Decision-Log-template.md"
  ],
  "supportingTemplates": [
    "Session-Summary-template.md"
  ]
}
```

## Purpose

Forge-Retrospective-Facilitation is the Improve phase's engine for process learning. Its discipline is the conversion of experience into change: observations become findings, findings become causes, causes become a small number of owned actions — and the follow-through is tracked, not hoped for.

It is technology-independent and applies to human-AI collaboration as much as to human teams: session handoffs, agent behaviour and workflow friction are all legitimate retrospective material. Used primarily by the **AI Program Manager** during **Improve** and at milestones.

---

# Responsibility

Forge-Retrospective-Facilitation is responsible for:

* Selecting the retrospective format appropriate to the milestone and group.
* Facilitating blame-free elicitation across timeline, surprises, friction and wins.
* Distinguishing observations from interpretations; driving to causes with evidence.
* Converging on a small set of high-leverage improvement actions — each with an owner and a success signal.
* Recording the retrospective so findings survive staff and session turnover.
* Tracking improvement actions to verified closure and re-checking at the next retrospective.

It does **not**:

* Assign individual blame or conduct performance reviews.
* Assess product outcomes (Forge-Product-Evaluation) or code debt (Forge-Technical-Debt-Assessment) — though their findings inform discussion.
* Implement process changes — it proposes and tracks; owners and the Product Owner execute.

---

# When To Use

* At the end of every **iteration** (short form) and every **release** (full form).
* At project milestones and after significant incidents.
* When collaboration patterns between humans and AI agents show repeated friction.
* When a previous retrospective's actions need closure verification.

# When Not To Use

* To evaluate delivered product value — use Forge-Product-Evaluation.
* For root-cause analysis of a specific production incident — use the Operate-phase incident skills; feed their outcomes here.
* To redesign the roadmap — use Forge-Roadmap-Planning with retrospective input.

---

# Inputs

* Iteration/release records, session handoffs and decision logs.
* Metrics and observations from the period.
* Open actions from previous retrospectives.
* Participant concerns raised during the period.

# Method

## Step 1 — Set Safety
State the blame-free contract and the goal: improve the system, not indict participants.

## Step 2 — Gather Data
Collect observations across the period: what happened, surprises, friction points, wins.

## Step 3 — Generate Insights
Cluster observations into themes; drive from symptom to plausible cause using evidence from the record.

## Step 4 — Decide Actions
Select few, high-leverage actions; each gets an owner, a first step and a success signal.

## Step 5 — Close The Loop On Prior Actions
Verify closure of previous retrospective actions; investigate actions that stalled rather than silently dropping them.

## Step 6 — Record And Route
Publish the retrospective record; route process-level changes into Roadmap Planning and Prioritisation.

---

# Outputs

* Retrospective record (observations, themes, causes, actions).
* Improvement actions with owners, first steps and success signals.
* Closure verification of prior actions.

---

# Standards Applied

* Workflow Standards (phase exit criteria, Improve phase)
* Documentation Standards
* Decision-Making ("AI proposes, Product Owner disposes")

---

# Interaction With Other Skills

* **Forge-Product-Evaluation** — product outcomes provide retrospective evidence; process findings complement them.
* **Forge-Roadmap-Planning / Forge-Prioritisation** — improvement actions enter the normal work channels.
* **Forge-Session-Management** — session handoffs are primary evidence for human-AI collaboration friction.
* **Forge-Technical-Debt-Assessment** — process causes of debt accumulation surface here.

---

# Success Criteria

Forge-Retrospective-Facilitation is successful when:

* Retrospectives produce a few owned, verifiable actions — not lists of complaints.
* Prior actions are verified closed or explicitly investigated, never silently dropped.
* Participants speak candidly; findings attribute to system causes before person causes.
* The same friction does not survive three retrospectives unchanged.