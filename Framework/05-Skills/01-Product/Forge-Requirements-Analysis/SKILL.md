# Forge-Requirements-Analysis

```json
{
  "skill": "Forge-Requirements-Analysis",
  "category": "01-Product",
  "purpose": "Forge-Requirements-Analysis provides the capability to evaluate, structure and validate software requirements before solution design and implementation begins. Its purpose is to transform discovered requirements into an organised, complete and actionable foundation for engineering decisions. Requirements analysis ensures that requirements are understood, consistent, feasible and traceable before technical solutions are designed.",
  "outputs": [
    "text\nRequirements Analysis Summary\n\nRequirement Classification\n\nFunctional Requirements\n\nNon-Functional Requirements\n\nConstraints\n\nDependencies\n\nRisks\n\nAssumptions\n\nOpen Questions\n\nTraceability Information\n\nAnalysis Findings\n\nReadiness Assessment\n"
  ],
  "primaryTemplates": [
    "Requirements-Specification-template.md"
  ],
  "supportingTemplates": [
    "Glossary-template.md",
    "Stakeholder-Register-template.md"
  ]
}
```



## Purpose

Forge-Requirements-Analysis provides the capability to evaluate, structure and validate software requirements before solution design and implementation begins.

Its purpose is to transform discovered requirements into an organised, complete and actionable foundation for engineering decisions.

Requirements analysis ensures that requirements are understood, consistent, feasible and traceable before technical solutions are designed.

---

# Responsibility

Forge-Requirements-Analysis is responsible for:

* Reviewing elicited requirements
* Evaluating completeness and clarity
* Identifying conflicts and dependencies
* Detecting assumptions and gaps
* Analysing functional and non-functional requirements
* Identifying risks and constraints
* Establishing requirement traceability
* Preparing requirements for design activities

Forge-Requirements-Analysis does not:

* Define technical architecture
* Select implementation technologies
* Write production code
* Replace stakeholder approval
* Override business priorities

---

# When To Use

Apply Forge-Requirements-Analysis when:

* Requirements have been gathered
* A feature requires refinement
* Multiple requirements may conflict
* Engineering complexity needs assessment
* A project is entering design
* Existing requirements need validation
* Scope needs clarification

---

# When Not To Use

Do not use Forge-Requirements-Analysis when:

* No requirements exist yet
* The primary need is discovering stakeholder needs
* The task is a simple implementation request with clear acceptance criteria
* The activity is purely technical debugging

---

# Inputs

Forge-Requirements-Analysis uses:

## Elicited Requirements

Including:

* Problem statements
* User needs
* Functional requirements
* Non-functional requirements
* Stakeholder expectations

---

## Project Context

Including:

* Project definition
* Existing decisions
* Glossary
* Constraints
* Previous requirements

---

## Applicable Standards

Including:

* Documentation Standards
* Architecture Standards
* Security Standards
* Design Standards

---

# Operating Procedure

## Step 1: Review Requirement Understanding

Evaluate whether requirements clearly describe:

* The problem
* Intended users
* Expected outcomes
* Success criteria

Identify unclear or incomplete areas.

---

## Step 2: Analyse Requirement Quality

Assess requirements against:

### Clarity

Are requirements understandable and unambiguous?

---

### Completeness

Are required behaviours and constraints identified?

---

### Consistency

Do requirements conflict with each other or existing decisions?

---

### Testability

Can the requirement be verified objectively?

---

### Traceability

Can requirements be linked to:

* User needs
* Design decisions
* Implementation work
* Tests

---

## Step 3: Classify Requirements

Organise requirements into categories.

Examples:

### Functional Requirements

Define system behaviour.

Examples:

* User actions
* Workflows
* Data processing
* System responses

---

### Non-Functional Requirements

Define quality expectations.

Examples:

* Performance
* Security
* Reliability
* Accessibility
* Maintainability

---

### Constraints

Define limitations.

Examples:

* Regulatory requirements
* Existing systems
* Resource limitations
* Business restrictions

---

## Step 4: Identify Dependencies and Risks

Determine:

* External dependencies
* Technical dependencies
* Business dependencies
* Unknown information
* Potential risks

Document areas requiring further investigation.

---

## Step 5: Identify Requirement Conflicts

Look for:

* Contradictory expectations
* Competing priorities
* Impossible constraints
* Undefined ownership

Where conflicts exist, invoke Forge-Grill.

---

## Step 6: Assess Feasibility

Evaluate whether requirements are:

* Achievable
* Realistic
* Sufficiently defined
* Compatible with project constraints

Feasibility assessment informs architecture but does not make architecture decisions.

---

## Step 7: Prepare Requirements Baseline

Create an approved understanding of:

* What will be built
* Why it will be built
* What constraints apply
* How success will be measured

---

# Outputs

Forge-Requirements-Analysis produces:

```text
Requirements Analysis Summary

Requirement Classification

Functional Requirements

Non-Functional Requirements

Constraints

Dependencies

Risks

Assumptions

Open Questions

Traceability Information

Analysis Findings

Readiness Assessment
```

---

## Templates

Use templates when requirements need to be captured in a consistent, traceable and reusable form for downstream design, testing and delivery.

### Primary Template

* `Requirements-Specification-template.md` — use this template as the main structure for the requirements analysis output, including functional and non-functional requirements, constraints, dependencies, risks, assumptions, open questions, traceability details and readiness assessment.

### Supporting Templates

* `Glossary-template.md` — capture and define domain terms to reduce ambiguity and improve requirement clarity.
* `Stakeholder-Register-template.md` — use when stakeholder roles, approvals or decision authority affect requirement scope and priorities.

### How To Use Templates

* Copy the selected template into the project documentation area.
* Preserve template headings and replace guidance text with project-specific details.
* Remove instructional guidance from the final output once the sections are filled.
* Apply machine-readable metadata where appropriate, as described in `Framework/07-Templates/README.md`, to support automation and discovery.

---

# Interaction With Other Skills

## Forge-Requirements-Elicitation

Provides the discovered information.

```text
Forge-Requirements-Elicitation
            |
            ▼
Forge-Requirements-Analysis
```

---

## Forge-Grill

Used when analysis identifies uncertainty.

```text
Requirement Gap
        |
        ▼
Forge-Grill
        |
        ▼
Clarified Requirement
```

---

## Forge-Solution-Architecture

Uses analysed requirements as design inputs.

```text
Forge-Requirements-Analysis
            |
            ▼
Forge-Solution-Architecture
```

---

## Forge-Acceptance-Criteria

Uses analysed requirements to define measurable validation conditions.

---

# Standards Applied

Forge-Requirements-Analysis applies:

* Documentation Standards
* Architecture Standards
* Security Standards
* Design Standards
* Testing Standards

---

# Success Criteria

Forge-Requirements-Analysis is successful when:

✓ Requirements are clearly understood

✓ Ambiguity has been identified or resolved

✓ Requirements are structured

✓ Dependencies are visible

✓ Risks are documented

✓ Requirements are testable

✓ Design activities can proceed with confidence

---

# ForgeOS Principle

Requirements should be understood before solutions are designed.

Forge-Requirements-Analysis ensures engineering decisions are based on structured, validated information rather than assumptions.
