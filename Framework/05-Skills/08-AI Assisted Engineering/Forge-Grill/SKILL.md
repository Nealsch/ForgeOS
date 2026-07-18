# Forge-Grill

```json
{
  "skill": "Forge-Grill",
  "category": "08-AI Assisted Engineering",
  "purpose": "Forge-Grill provides the capability to clarify, refine and validate human intent before engineering work begins. Its purpose is to ensure that requested outcomes are sufficiently understood before decisions are made or implementation starts. Forge-Grill transforms informal ideas, requests or problems into clear engineering objectives.",
  "primaryTemplates": [
    "Clarified-Intent-Summary-template.md"
  ],
  "supportingTemplates": [
    "Requirements-Discovery-template.md",
    "Project-Definition-template.md"
  ]
}
```



## Purpose

Forge-Grill provides the capability to clarify, refine and validate human intent before engineering work begins.

Its purpose is to ensure that requested outcomes are sufficiently understood before decisions are made or implementation starts.

Forge-Grill transforms informal ideas, requests or problems into clear engineering objectives.

---

# Responsibility

Forge-Grill is responsible for:

* Identifying ambiguity
* Asking focused clarification questions
* Understanding the desired outcome
* Establishing acceptance criteria
* Identifying assumptions
* Confirming shared understanding
* Improving requirement quality

Forge-Grill does not:

* Design technical solutions
* Select implementation technologies
* Write production code
* Replace architecture activities
* Make business decisions on behalf of stakeholders

---

# When To Use

Apply Forge-Grill when:

* Requirements are unclear
* A new feature is requested
* A problem statement is incomplete
* Multiple interpretations exist
* Business rules are undefined
* Acceptance criteria are missing
* Existing documentation conflicts
* A significant decision requires clarification

---

# When Not To Use

Do not use Forge-Grill when:

* Requirements are already clear
* The task is a straightforward implementation of an existing specification
* A previously approved decision already defines the outcome
* The activity is purely mechanical

---

# Inputs

Forge-Grill uses:

## Human Intent

Examples:

* Feature requests
* Problems to solve
* Improvement ideas
* Change requests
* Questions

---

## Project Context

Examples:

* Project objectives
* Existing requirements
* Previous decisions
* Domain terminology
* Current constraints

---

## Existing Knowledge

Examples:

* Documentation
* User feedback
* Business rules
* Technical constraints

---

# Operating Procedure

## Step 1: Understand the Desired Outcome

Identify:

* What is being requested?
* Why is it needed?
* Who benefits from the outcome?
* What problem is being solved?

Focus on the outcome rather than the proposed solution.

---

## Step 2: Identify Ambiguity

Review for uncertainty in:

* Objectives
* Scope
* Terminology
* User expectations
* Business rules
* Constraints
* Success criteria

Do not resolve ambiguity through assumptions.

---

## Step 3: Ask Focused Questions

Questions should:

* Reduce uncertainty
* Establish facts
* Clarify decisions
* Avoid unnecessary discussion

Prefer questions about:

* Desired outcome
* Users affected
* Required behaviour
* Constraints
* Priority
* Acceptance criteria

Avoid questions that prematurely constrain implementation.

---

## Step 4: Establish Understanding

Summarise:

* Objective
* Scope
* Assumptions
* Constraints
* Expected outcome

Confirm that the understanding accurately represents the intended requirement.

---

## Step 5: Identify Required Follow-Up Activities

Determine whether additional activities are required.

Examples:

* Requirements documentation
* Architecture review
* Security assessment
* Technical investigation
* Task breakdown

---

# Output

Forge-Grill produces a clarified intent summary.

Recommended format:

```text
Objective:

Problem:

Users / Stakeholders:

Expected Outcome:

Scope:

Out of Scope:

Assumptions:

Constraints:

Acceptance Criteria:

Open Questions:

Recommended Next Activity:
```

---

## Templates

Use templates when clarification outcomes need to be recorded consistently and handed off cleanly to the next engineering activity.

### Primary Template

* `Clarified-Intent-Summary-template.md` — use this template to capture objective, problem, stakeholders, expected outcome, scope, assumptions, constraints, acceptance criteria and next actions.

### Supporting Templates

* `Requirements-Discovery-template.md` — use when the clarified intent summary must remain linked to discovered requirements.
* `Project-Definition-template.md` — use when clarified intent must be placed into a broader project context.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific clarification details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Context-Loading

Forge-Grill depends on sufficient context to ask meaningful questions.

Relationship:

```text
Project Context
       |
       ▼
Forge-Context-Loading
       |
       ▼
Forge-Grill
```

---

## Forge-Task-Routing

After intent has been clarified, Forge-Task-Routing determines the required capabilities.

Relationship:

```text
Forge-Grill
       |
       ▼
Forge-Task-Routing
```

---

## Forge-Knowledge-Management

Important clarifications, decisions and assumptions should be preserved.

Relationship:

```text
Clarified Intent
       |
       ▼
Forge-Knowledge-Management
```

---

# Standards Applied

Forge-Grill must follow:

* Requirements Engineering practices
* Documentation Standards
* Decision Recording practices
* Traceability principles

---

# Success Criteria

Forge-Grill is successful when:

✓ The intended outcome is understood

✓ Ambiguity has been identified

✓ Assumptions are visible

✓ Scope is clear

✓ Acceptance criteria can be defined

✓ Implementation can proceed with confidence

---

# ForgeOS Principle

Good engineering begins with understanding the problem.

Forge-Grill ensures that AI agents and humans solve the correct problem before investing effort in implementation.
