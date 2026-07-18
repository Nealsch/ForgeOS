# Forge-Requirements-Elicitation

```json
{
  "skill": "Forge-Requirements-Elicitation",
  "category": "01-Product",
  "purpose": "Forge-Requirements-Elicitation provides the capability to discover, understand and document stakeholder needs before software design and implementation begins. Its purpose is to transform initial ideas, problems or requests into a clear understanding of: * The problem being solved * The users affected * The desired outcomes * The business objectives * The constraints and assumptions * The scope of the proposed solution Requirements elicitation ensures software is built to solve the correct problem before engineering effort begins.",
  "primaryTemplates": [
    "Requirements-Discovery-template.md"
  ],
  "supportingTemplates": [
    "Stakeholder-Register-template.md",
    "Project-Definition-template.md"
  ]
}
```



## Purpose

Forge-Requirements-Elicitation provides the capability to discover, understand and document stakeholder needs before software design and implementation begins.

Its purpose is to transform initial ideas, problems or requests into a clear understanding of:

* The problem being solved
* The users affected
* The desired outcomes
* The business objectives
* The constraints and assumptions
* The scope of the proposed solution

Requirements elicitation ensures software is built to solve the correct problem before engineering effort begins.

---

# Responsibility

Forge-Requirements-Elicitation is responsible for:

* Discovering stakeholder needs
* Understanding the problem context
* Identifying users and stakeholders
* Exploring desired outcomes
* Identifying functional expectations
* Identifying non-functional expectations
* Capturing assumptions and constraints
* Identifying unanswered questions
* Producing structured requirement inputs

Forge-Requirements-Elicitation does not:

* Design technical solutions
* Make architecture decisions
* Define implementation details
* Prioritise business value alone
* Replace stakeholder decision-making

---

# When To Use

Apply Forge-Requirements-Elicitation when:

* Starting a new project
* Defining a new feature
* Understanding a business problem
* Converting an idea into a software initiative
* Existing requirements are incomplete
* Stakeholders have different expectations
* Scope boundaries are unclear

---

# When Not To Use

Do not use Forge-Requirements-Elicitation when:

* Requirements already exist and are sufficiently understood
* The task is purely implementation-focused
* The problem is a technical defect requiring investigation
* The activity is only documentation formatting

---

# Inputs

Forge-Requirements-Elicitation uses:

## Initial Request

Examples:

* Business idea
* Feature request
* Problem statement
* User feedback
* Change request

---

## Stakeholder Context

Including:

* Users
* Business owners
* Operational stakeholders
* External dependencies

---

## Existing Project Knowledge

Including:

* Project definition
* Existing requirements
* Glossary
* Previous decisions
* Constraints

---

# Operating Procedure

## Step 1: Understand the Problem

Identify:

* What problem exists?
* Why does it matter?
* Who experiences the problem?
* What happens if it is not solved?

Avoid jumping directly to solutions.

---

## Step 2: Identify Stakeholders and Users

Determine:

* Who requests the capability
* Who uses the capability
* Who is affected by the capability
* Who approves outcomes

Different stakeholders may have different expectations.

---

## Step 3: Discover Desired Outcomes

Clarify:

* What success looks like
* Expected user outcomes
* Business outcomes
* Operational outcomes

Focus on outcomes rather than implementation.

---

## Step 4: Identify Requirements

Capture:

### Functional Requirements

What the system should do.

Examples:

* User actions
* System behaviours
* Workflows
* Information handling

---

### Non-Functional Requirements

How the system should perform.

Examples:

* Security
* Performance
* Availability
* Accessibility
* Maintainability
* Scalability

---

## Step 5: Identify Constraints

Capture limitations including:

* Business constraints
* Technical constraints
* Regulatory requirements
* Time constraints
* Resource constraints

---

## Step 6: Identify Assumptions and Risks

Document:

* Known assumptions
* Unknown information
* Potential risks
* Dependencies

Unverified assumptions should be visible.

---

## Step 7: Validate Understanding

Before progressing:

Confirm:

* The problem is correctly understood
* Requirements reflect stakeholder intent
* Scope boundaries are clear
* Open questions are identified

Use Forge-Grill when ambiguity remains.

---

# Outputs

Forge-Requirements-Elicitation produces:

## Requirements Input

Containing:

```text
Problem Statement

Stakeholders

Users

Objectives

Functional Requirements

Non-Functional Requirements

Constraints

Assumptions

Dependencies

Open Questions

Success Criteria
```

---

## Templates

Use templates when requirement discovery must be captured consistently and handed off to analysis, design, or planning.

### Primary Template

* `Requirements-Discovery-template.md` — use this template to structure discovered requirements, stakeholder context, objectives, constraints, assumptions, dependencies and success criteria.

### Supporting Templates

* `Stakeholder-Register-template.md` — use when stakeholder relationships, approvals or decision authority must be documented.
* `Project-Definition-template.md` — use when discovered requirements need to be linked to broader project context.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific content.
* Remove instructional guidance from the final document once sections are complete.
* Include machine-readable metadata according to `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Grill

Used when clarification or deeper questioning is required.

```text
Requirement Discovery
        |
        ▼
Forge-Grill
        |
        ▼
Refined Understanding
```

---

## Forge-Requirements-Analysis

Follows elicitation.

```text
Requirements Elicitation
        |
        ▼
Requirements Analysis
```

Elicitation discovers information.

Analysis evaluates and structures it.

---

## Forge-User-Story-Definition

Uses elicited requirements to create user-focused work items.

---

## Forge-Acceptance-Criteria

Uses requirements to define measurable completion conditions.

---

# Standards Applied

Forge-Requirements-Elicitation applies:

* Documentation Standards
* Architecture Standards where system impacts exist
* Security Standards where risk exists
* Design Standards where user experience is involved

---

# Success Criteria

Forge-Requirements-Elicitation is successful when:

✓ The problem is understood

✓ Stakeholders are identified

✓ User needs are captured

✓ Requirements are documented

✓ Constraints are visible

✓ Assumptions are identified

✓ Ambiguity is reduced

✓ Engineering teams have sufficient information to proceed

---

# ForgeOS Principle

Good software begins with understanding.

Forge-Requirements-Elicitation ensures engineering effort begins with a clear problem, defined outcomes and shared understanding rather than assumptions.
