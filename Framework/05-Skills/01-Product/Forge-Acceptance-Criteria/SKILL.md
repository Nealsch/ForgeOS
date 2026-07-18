# Forge-Acceptance-Criteria

```json
{
  "skill": "Forge-Acceptance-Criteria",
  "category": "01-Product",
  "purpose": "Forge-Acceptance-Criteria provides the capability to define clear, measurable conditions that determine when a requirement, user story or feature has been successfully completed. Its purpose is to establish a shared understanding of expected outcomes between stakeholders, engineers and verification teams. Acceptance criteria create an objective definition of completion before implementation begins.",
  "outputs": [
    "text id=\"m1s8dv\"\nAcceptance Criteria\n\nSuccess Conditions\n\nFailure Conditions\n\nBusiness Rules\n\nBoundary Conditions\n\nValidation Notes\n\nRelated Requirements\n\nRelated User Stories\n"
  ],
  "primaryTemplates": [
    "Acceptance-Criteria-template.md"
  ],
  "supportingTemplates": [
    "Test-Plan-template.md",
    "Project-Definition-template.md"
  ]
}
```



## Purpose

Forge-Acceptance-Criteria provides the capability to define clear, measurable conditions that determine when a requirement, user story or feature has been successfully completed.

Its purpose is to establish a shared understanding of expected outcomes between stakeholders, engineers and verification teams.

Acceptance criteria create an objective definition of completion before implementation begins.

---

# Responsibility

Forge-Acceptance-Criteria is responsible for:

* Defining completion conditions
* Clarifying expected system behaviour
* Identifying success and failure scenarios
* Establishing validation boundaries
* Supporting consistent interpretation of requirements
* Enabling effective verification planning

Forge-Acceptance-Criteria does not:

* Create detailed test cases
* Define implementation solutions
* Replace requirements documentation
* Determine release decisions
* Perform testing activities

---

# When To Use

Apply Forge-Acceptance-Criteria when:

* Preparing work for development
* Refining user stories
* Defining feature expectations
* Reducing ambiguity before implementation
* Preparing verification activities
* Multiple interpretations of completion exist

---

# When Not To Use

Do not use Forge-Acceptance-Criteria when:

* Requirements are not understood
* The user outcome is unclear
* Implementation details are still being designed
* Performing detailed QA execution

---

# Inputs

Forge-Acceptance-Criteria uses:

## Requirements

Including:

* Functional requirements
* Non-functional requirements
* Business rules
* Constraints

---

## User Stories

Including:

* User type
* Desired capability
* Expected value

---

## Project Context

Including:

* Existing decisions
* Domain terminology
* Applicable standards

---

# Acceptance Criteria Principles

Acceptance criteria should be:

## Clear

The expected behaviour should be understandable by all stakeholders.

---

## Specific

Criteria should describe observable outcomes.

---

## Measurable

Completion should be objectively determined.

---

## Testable

A verification activity should be possible.

---

## Technology Independent

Criteria should describe outcomes rather than implementation.

---

# Acceptance Criteria Formats

ForgeOS supports multiple formats.

## Scenario Based

Preferred for behavioural requirements.

Format:

```text id="3y8z0x"
Given [initial condition]

When [action occurs]

Then [expected outcome]
```

Example:

```text id="5kq9mz"
Given a registered user

When the user submits valid login credentials

Then the user gains access to their account
```

---

## Rule Based

Useful for business constraints.

Example:

```text id="8v4s2n"
The system must prevent duplicate account registration using the same email address.
```

---

## Outcome Based

Useful for higher-level capabilities.

Example:

```text id="2k6r9p"
Users can complete checkout without requiring assistance.
```

---

# Operating Procedure

## Step 1: Review the Intended Outcome

Understand:

* What value is being delivered
* Who benefits
* Why the capability exists

Do not start from implementation.

---

## Step 2: Identify Success Conditions

Define:

* What must happen
* What users should experience
* What the system should achieve

---

## Step 3: Identify Failure Conditions

Consider:

* Invalid inputs
* Missing information
* Permission limitations
* Error scenarios
* Boundary conditions

---

## Step 4: Define Completion Boundaries

Clarify:

* What is included
* What is excluded
* What assumptions apply

Prevent scope expansion.

---

## Step 5: Validate Testability

Confirm:

* Criteria can be observed
* Criteria can be verified
* Expected behaviour is unambiguous

If criteria cannot be verified, return to requirements analysis.

---

# Outputs

Forge-Acceptance-Criteria produces:

```text id="m1s8dv"
Acceptance Criteria

Success Conditions

Failure Conditions

Business Rules

Boundary Conditions

Validation Notes

Related Requirements

Related User Stories
```

---

## Templates

Use templates when acceptance criteria need to be captured in a standard, testable and traceable format.

### Primary Template

* `Acceptance-Criteria-template.md` — use this template to structure acceptance criteria, success and failure conditions, business rules, boundaries, validation notes and traceability.

### Supporting Templates

* `Test-Plan-template.md` — use when acceptance criteria are directly driving verification planning and test design.
* `Project-Definition-template.md` — use when acceptance criteria need explicit project or scope context.

### How To Use Templates

* Copy the selected template into the project documentation.
* Preserve headings and replace guidance with the specific criteria and conditions.
* Remove instructional text once the template is completed.
* Follow `Framework/07-Templates/README.md` metadata guidance for automation or tooling.

---

# Interaction With Other Skills

## Forge-User-Story-Definition

Provides the user-focused context.

```text id="8m2r6j"
User Story
     |
     ▼
Acceptance Criteria
```

---

## Forge-Test-Design

Uses acceptance criteria to create verification scenarios.

```text id="9p5x1c"
Acceptance Criteria
        |
        ▼
Forge-Test-Design
```

---

## Forge-Requirements-Analysis

Used when acceptance criteria expose unclear requirements.

---

## Forge-Grill

Used when expected behaviour cannot be clearly defined.

---

# Standards Applied

Forge-Acceptance-Criteria applies:

* Documentation Standards
* Testing Standards
* Design Standards
* Coding Standards where implementation impact exists

---

# Success Criteria

Forge-Acceptance-Criteria is successful when:

✓ Completion is objectively defined

✓ Expected behaviour is clear

✓ Failure scenarios are considered

✓ Criteria can be verified

✓ Scope boundaries are understood

✓ Development teams know what success means

---

# ForgeOS Principle

A feature is not complete because code exists.

A feature is complete when the intended outcome has been achieved and can be demonstrated.
