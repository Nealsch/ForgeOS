# Forge-Standards-Compliance

```json
{
  "skill": "Forge-Standards-Compliance",
  "category": "08-AI Assisted Engineering",
  "purpose": "Forge-Standards-Compliance provides the capability to identify, apply and verify adherence to applicable ForgeOS Standards throughout the Software Development Lifecycle. Its purpose is to ensure engineering work meets defined quality expectations before progressing through workflow stages. Forge-Standards-Compliance transforms Standards from passive documentation into active engineering controls.",
  "primaryTemplates": [
    "Compliance-Summary-template.md"
  ],
  "supportingTemplates": [
    "Project-Definition-template.md",
    "Architecture-Definition-template.md"
  ]
}
```



## Purpose

Forge-Standards-Compliance provides the capability to identify, apply and verify adherence to applicable ForgeOS Standards throughout the Software Development Lifecycle.

Its purpose is to ensure engineering work meets defined quality expectations before progressing through workflow stages.

Forge-Standards-Compliance transforms Standards from passive documentation into active engineering controls.

---

# Responsibility

Forge-Standards-Compliance is responsible for:

* Identifying applicable Standards
* Ensuring Standards are considered during work
* Reviewing outputs against expectations
* Detecting deviations
* Recommending corrective actions
* Supporting SDLC quality gates

Forge-Standards-Compliance does not:

* Create Standards
* Replace specialist reviews
* Approve business decisions
* Replace testing activities
* Override project requirements

---

# When To Use

Apply Forge-Standards-Compliance when:

* Beginning work in an SDLC phase
* Completing a significant task
* Reviewing deliverables
* Preparing for a quality gate
* Before release activities
* Evaluating engineering changes

---

# When Not To Use

Do not use Forge-Standards-Compliance for:

* Defining new engineering practices
* Replacing specialist expertise
* Performing detailed implementation reviews
* Making architectural decisions

---

# Inputs

Forge-Standards-Compliance uses:

## Work Output

Examples:

* Requirements
* Designs
* Code
* Tests
* Documentation
* Deployment artefacts

---

## Applicable Standards

Examples:

* Architecture Standards
* Coding Standards
* Security Standards
* Testing Standards
* Documentation Standards
* Deployment Standards
* Design Standards

---

## Workflow Requirements

Including:

* Current SDLC phase
* Required deliverables
* Quality gate expectations

---

# Operating Procedure

## Step 1: Identify Applicable Standards

Determine which Standards apply based on:

* Current SDLC phase
* Type of work performed
* Technology or domain involved
* Project constraints

Do not apply irrelevant Standards unnecessarily.

---

## Step 2: Review Expected Outcomes

Identify:

* Required deliverables
* Quality expectations
* Mandatory checks
* Acceptance criteria

---

## Step 3: Evaluate Compliance

Review whether the work:

* Follows applicable Standards
* Meets expected quality levels
* Contains required documentation
* Maintains traceability
* Respects existing decisions

---

## Step 4: Identify Deviations

Where compliance gaps exist:

Record:

* The deviation
* The affected Standard
* The impact
* Recommended corrective action

---

## Step 5: Determine Outcome

Possible outcomes:

### Compliant

The work satisfies applicable Standards.

Proceed through the workflow.

---

### Requires Improvement

Minor issues exist.

Corrective action is required before completion.

---

### Blocked

Significant compliance issues exist.

Work should not proceed until resolved.

---

# Compliance Review Output

Produce a compliance summary:

```text id="9o6l4t"
Work Reviewed:

SDLC Phase:

Applicable Standards:

Compliance Status:

Validated Areas:

Issues Identified:

Required Actions:

Approval Recommendation:
```

---

## Templates

Use templates when compliance assessments need to be documented consistently, including applicable standards, findings and recommendations.

### Primary Template

* `Compliance-Summary-template.md` — use this template to capture the compliance review scope, status, validated areas, issues and approval recommendations.

### Supporting Templates

* `Project-Definition-template.md` — use when compliance reviews need broader project context.
* `Architecture-Definition-template.md` — use when compliance findings relate to architecture decisions.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific compliance details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Task-Routing

Routing identifies required capabilities.

Compliance verifies the resulting work.

```text id="j2m3rq"
Forge-Task-Routing
        |
        ▼
Engineering Work
        |
        ▼
Forge-Standards-Compliance
```

---

## Forge-Session-Management

Compliance outcomes should be captured as part of session completion.

```text id="w9j8k4"
Session Completion
        |
        ▼
Forge-Standards-Compliance
        |
        ▼
Session Handoff
```

---

## Forge-Knowledge-Management

Important compliance findings may become reusable knowledge.

```text id="r3x5mn"
Compliance Finding
        |
        ▼
Forge-Knowledge-Management
```

---

# Standards Applied

Forge-Standards-Compliance primarily applies:

* All ForgeOS Standards
* Workflow quality gates
* Documentation practices
* Governance requirements

---

# Success Criteria

Forge-Standards-Compliance is successful when:

✓ Applicable Standards are identified

✓ Engineering outputs are evaluated

✓ Deviations are visible

✓ Corrective actions are defined

✓ Quality gates have evidence

✓ Engineering decisions remain traceable

---

# ForgeOS Principle

Standards only create value when they influence behaviour.

Forge-Standards-Compliance ensures that engineering quality is actively maintained throughout the Software Development Lifecycle.
