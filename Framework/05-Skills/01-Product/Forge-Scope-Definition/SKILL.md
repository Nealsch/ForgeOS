# Forge-Scope-Definition

```json
{
  "skill": "Forge-Scope-Definition",
  "category": "01-Product",
  "purpose": "Forge-Scope-Definition provides the capability to establish and maintain the explicit boundary of a project or work item — what is being built, for whom, what is deliberately excluded, and under which constraints — so that every downstream engineering decision is made against a shared, testable definition of scope.",
  "outputs": [
    "Project or work-item scope definition",
    "Explicit out-of-scope list with rationale",
    "Constraint and assumption register",
    "Scope-change inputs to Forge-Prioritisation"
  ],
  "primaryTemplates": [
    "Project-Definition-template.md"
  ],
  "supportingTemplates": [
    "Requirements-Discovery-template.md"
  ]
}
```

## Purpose

Forge-Scope-Definition turns an initial intent into an explicit, agreed boundary before requirements work and design begin. Scope is the reference against which requirements are judged in or out, estimates are sized, and change is controlled. Without it, "scope creep" is not a process failure but a missing-definition failure.

It is technology-independent: this Skill defines scope discipline, not solutions. Used primarily by the **AI Program Manager** and **Product Owner** during **Specify**; consumed by Forge-Requirements-Analysis, Forge-Solution-Architecture and Forge-Prioritisation.

---

# Responsibility

Forge-Scope-Definition is responsible for:

* Eliciting and recording project intent, objectives and success measures.
* Defining the in-scope boundary: systems, users, workflows and deliverables covered.
* Defining the explicit out-of-scope list, each entry with rationale — exclusions are decisions, not omissions.
* Capturing constraints (regulatory, budget, timeline, platform, integration) and assumptions with owners.
* Identifying boundary ambiguities and raising them as open questions to the Product Owner.
* Maintaining scope through change: assessing proposed changes for boundary impact and feeding them to Forge-Prioritisation.
* Providing the scope baseline that acceptance criteria and test scope are derived from.

It does **not**:

* Elicit individual stakeholder requirements (Forge-Requirements-Elicitation).
* Analyse, structure or validate requirements (Forge-Requirements-Analysis).
* Prioritise or sequence work (Forge-Prioritisation).
* Design the solution or evaluate technologies (02-Architecture skills).

---

# When To Use

* At the start of a **Specify** phase, before requirements elicitation at scale.
* When initiating any new project, work item, or significant feature.
* When a proposal's boundary is ambiguous or stakeholders disagree about what is included.
* When a proposed change would move the project boundary.

# When Not To Use

* To write or analyse requirements — use Forge-Requirements-Analysis.
* To decide build order — use Forge-Prioritisation.
* To re-state an already-documented, agreed scope with no change — reference the Project Definition instead.

---

# Inputs

* Project intent, problem statement or proposal.
* Stakeholder register and Product Owner direction.
* Existing project documentation (Project Definition, Roadmap).
* Known constraints from governance or standards.

# Method

## Step 1 — Anchor Intent
Record the problem, objective and success measures with the Product Owner; confirm a shared statement of why the work exists.

## Step 2 — Draft The Boundary
Enumerate what is included: target users, systems, capabilities and deliverables.

## Step 3 — Decide Exclusions
For every plausible neighbour capability, decide explicitly in or out; record each exclusion with rationale.

## Step 4 — Capture Constraints And Assumptions
List hard constraints and working assumptions; assign each an owner and a validation path.

## Step 5 — Surface Ambiguities
Identify boundary grey areas and raise them as open questions; do not silently resolve Product Owner decisions.

## Step 6 — Baseline And Communicate
Publish the Project Definition; brief downstream skills (Requirements-Analysis, Solution-Architecture, Test-Strategy).

## Step 7 — Maintain Under Change
On proposed change, assess boundary impact, update the definition, and route scheduling consequences to Forge-Prioritisation.

---

# Outputs

* Project or work-item scope definition (in-scope, out-of-scope, rationale).
* Constraint and assumption register.
* Open questions requiring Product Owner decisions.
* Scope-change assessments for Forge-Prioritisation.

---

# Standards Applied

* Requirements Standards (Specify phase)
* Documentation Standards
* Decision-Making ("AI proposes, Product Owner disposes")

---

# Interaction With Other Skills

* **Forge-Requirements-Elicitation** — operates inside the boundary this Skill defines.
* **Forge-Requirements-Analysis** — judges each requirement against the scope baseline.
* **Forge-Prioritisation** — receives scope-change impacts and sequences them.
* **Forge-Solution-Architecture** — designs only within the declared boundary.
* **Forge-Acceptance-Criteria** — derives done-conditions from the scope baseline.

---

# Success Criteria

Forge-Scope-Definition is successful when:

* A reader can determine, for any proposed capability, whether it is in scope — without asking.
* Every exclusion is a recorded decision with rationale.
* Constraints and assumptions have owners and validation paths.
* No downstream work proceeds on an unrecorded boundary assumption.
* Scope changes are assessed and routed before they silently widen the project.