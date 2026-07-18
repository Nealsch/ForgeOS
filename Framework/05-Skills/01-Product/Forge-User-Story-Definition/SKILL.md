# Forge-User-Story-Definition

```json
{
  "skill": "Forge-User-Story-Definition",
  "category": "01-Product",
  "purpose": "Forge-User-Story-Definition provides the capability to transform analysed requirements into user-focused descriptions of desired system behaviour. Its purpose is to create a shared understanding between stakeholders, designers and engineers by expressing functionality from the perspective of the user receiving value. User stories bridge the gap between business intent and engineering execution.",
  "outputs": [
    "text id=\"b7n2ax\"\nUser Story\n\nUser Role\n\nUser Goal\n\nExpected Value\n\nSupporting Requirements\n\nDependencies\n\nConstraints\n\nRelated Acceptance Criteria\n\nRelated Decisions\n"
  ],
  "primaryTemplates": [
    "User-Story-template.md"
  ],
  "supportingTemplates": [
    "Project-Definition-template.md",
    "Roadmap-template.md"
  ]
}
```



## Purpose

Forge-User-Story-Definition provides the capability to transform analysed requirements into user-focused descriptions of desired system behaviour.

Its purpose is to create a shared understanding between stakeholders, designers and engineers by expressing functionality from the perspective of the user receiving value.

User stories bridge the gap between business intent and engineering execution.

---

# Responsibility

Forge-User-Story-Definition is responsible for:

* Creating user-focused descriptions of functionality
* Identifying users and their goals
* Defining expected outcomes
* Breaking requirements into manageable units of value
* Maintaining alignment between user needs and implementation work
* Supporting communication between technical and non-technical stakeholders

Forge-User-Story-Definition does not:

* Replace requirements documentation
* Define technical implementation
* Decide architecture
* Prioritise business value
* Create test cases

---

# When To Use

Apply Forge-User-Story-Definition when:

* Requirements need to be converted into development work
* Features need to be expressed from a user perspective
* Teams need shared understanding of functionality
* Work needs to be broken into smaller deliverables
* Acceptance criteria need to be prepared

---

# When Not To Use

Do not use Forge-User-Story-Definition when:

* Requirements are not yet understood
* The work is purely technical infrastructure
* A detailed technical design is required
* The activity is documentation maintenance only

---

# Inputs

Forge-User-Story-Definition uses:

## Analysed Requirements

Including:

* Functional requirements
* User needs
* Business objectives
* Constraints
* Dependencies

---

## User Context

Including:

* User types
* Roles
* Goals
* Workflows
* Expected outcomes

---

## Project Context

Including:

* Existing decisions
* Domain terminology
* Scope boundaries

---

# User Story Structure

User stories should describe:

```text id="4v2m91"
As a [user type]

I want [capability]

So that [desired outcome]
```

The structure ensures focus remains on:

* Who needs something
* What they need
* Why it provides value

---

# Operating Procedure

## Step 1: Identify the User

Determine:

* Who benefits from the capability
* Who performs the action
* Who is affected by the outcome

Avoid creating stories around technical components.

Example:

Less effective:

> As a database administrator, I want a new indexing strategy.

Better:

> As a customer, I want search results quickly so that I can find products easily.

---

## Step 2: Identify the User Goal

Determine:

* What the user is trying to accomplish
* What problem they are solving
* What capability they require

Focus on outcomes rather than solutions.

---

## Step 3: Define the Value

Identify:

* Why the capability matters
* What improvement it creates
* What success looks like

The value statement should explain the purpose of the work.

---

## Step 4: Define Story Boundaries

Ensure the story:

* Represents a meaningful outcome
* Is sufficiently focused
* Can be understood independently
* Does not contain unnecessary implementation details

---

## Step 5: Identify Supporting Information

Capture where relevant:

* Business rules
* Dependencies
* Constraints
* Related requirements
* Related decisions

---

## Step 6: Validate Understanding

Confirm:

* The user is correctly identified
* The desired outcome is clear
* The story aligns with requirements
* Scope is appropriate

Use Forge-Grill when ambiguity remains.

---

# Outputs

Forge-User-Story-Definition produces:

```text id="b7n2ax"
User Story

User Role

User Goal

Expected Value

Supporting Requirements

Dependencies

Constraints

Related Acceptance Criteria

Related Decisions
```

---

## Templates

Use templates when user stories must be created consistently, remain traceable to requirements, and support testing and delivery.

### Primary Template

* `User-Story-template.md` — use this template as the standard structure for capturing user stories, goals, acceptance criteria references, dependencies and constraints.

### Supporting Templates

* `Project-Definition-template.md` — use when user stories need broader project context or when linking to higher-level initiatives.
* `Roadmap-template.md` — use when story planning requires release or roadmap alignment.

### How To Use Templates

* Copy the chosen template into project documentation.
* Keep template headings intact and replace guidance text with the story details.
* Remove instructional guidance from the final output after filling the sections.
* Apply metadata conventions from `Framework/07-Templates/README.md` if using tools or automation.

---

# Quality Guidelines

Good user stories should be:

## Valuable

They represent meaningful user or business outcomes.

---

## Understandable

Stakeholders and engineers should interpret them consistently.

---

## Focused

They should describe one primary capability or outcome.

---

## Testable

Completion should be objectively verifiable.

---

## Traceable

They should link back to originating requirements.

---

# Interaction With Other Skills

## Forge-Requirements-Analysis

Provides the validated information used to create stories.

```text id="p3h8rz"
Requirements Analysis
        |
        ▼
User Story Definition
```

---

## Forge-Acceptance-Criteria

Defines completion conditions.

```text id="j5w8vx"
User Story
      |
      ▼
Acceptance Criteria
```

---

## Forge-Task-Routing

Uses user stories as inputs for planning and implementation tasks.

---

## Forge-Grill

Resolves unclear user goals or conflicting expectations.

---

# Standards Applied

Forge-User-Story-Definition applies:

* Documentation Standards
* Design Standards
* Testing Standards
* Architecture Standards where system behaviour is affected

---

# Success Criteria

Forge-User-Story-Definition is successful when:

✓ Users are clearly identified

✓ Desired outcomes are understood

✓ Stories represent user value

✓ Scope boundaries are visible

✓ Stories trace back to requirements

✓ Engineers understand what needs to be achieved

---

# ForgeOS Principle

Software is created for people, not systems.

Forge-User-Story-Definition ensures engineering work remains connected to the users and outcomes it exists to serve.
