# Forge-Debugging

```json
{
  "skill": "Forge-Debugging",
  "category": "03-Engineering",
  "purpose": "Provide a consistent capability for diagnosing, analysing, and resolving software defects through a structured, evidence-based approach. This Skill establishes a disciplined method for identifying the root cause of unexpected system behaviour, validating hypotheses, implementing corrective actions, and confirming that defects have been resolved without introducing unintended side effects. The Skill is applicable regardless of programming language, framework, platform, or deployment environment.",
  "primaryTemplates": [
    "Implementation-Documentation-template.md"
  ],
  "supportingTemplates": [
    "Architecture-Decision-Record-template.md",
    "Project-Definition-template.md"
  ]
}
```



## Purpose

Provide a consistent capability for diagnosing, analysing, and resolving software defects through a structured, evidence-based approach.

This Skill establishes a disciplined method for identifying the root cause of unexpected system behaviour, validating hypotheses, implementing corrective actions, and confirming that defects have been resolved without introducing unintended side effects.

The Skill is applicable regardless of programming language, framework, platform, or deployment environment.

---

## Responsibility

Forge-Debugging is responsible for identifying the underlying cause of software defects and guiding their resolution.

It ensures that investigations are systematic, evidence-driven, traceable, and focused on resolving root causes rather than symptoms.

This Skill focuses on diagnosis and corrective action. It does not replace testing, code review, or architectural design.

---

## When To Use

Use this Skill when:

* Investigating reported defects
* Diagnosing unexpected system behaviour
* Resolving runtime errors
* Analysing integration failures
* Investigating performance anomalies
* Troubleshooting deployment-related issues
* Identifying data consistency problems
* Validating corrective actions before release
* Supporting incident resolution

---

## When Not To Use

Do not use this Skill when:

* Implementing new functionality
* Designing solution architecture
* Performing routine code reviews
* Refactoring code without an identified defect
* Conducting formal software testing
* Defining requirements or acceptance criteria
* Making architectural decisions unrelated to defect resolution

These activities are addressed by their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Defect reports
* Incident reports
* Error messages
* Application logs
* Monitoring and telemetry data
* User feedback
* Source code
* Configuration
* Test results
* Reproduction steps
* Architecture documentation
* Applicable engineering standards

---

## Principles

### Reproduce Before Repair

Confirm the reported behaviour before attempting corrective action.

---

### Investigate the Root Cause

Resolve the underlying cause rather than masking symptoms.

---

### Base Decisions on Evidence

Use observable data, logs, traces, metrics, and reproducible behaviour to guide the investigation.

---

### Isolate Variables

Change one factor at a time to understand its impact and avoid introducing uncertainty.

---

### Preserve System Stability

Minimise risk while investigating and implementing corrective actions.

---

### Validate Every Fix

Confirm that the defect is resolved and that no unintended behaviour has been introduced.

---

### Capture Learning

Significant investigations should contribute to improved documentation, standards, and future prevention.

---

### Prevent Recurrence

Where practical, implement improvements that reduce the likelihood of similar defects occurring again.

---

## Concepts

### Defect

A deviation between expected and actual system behaviour.

---

### Root Cause

The underlying condition that directly results in the observed defect.

---

### Reproduction

A repeatable sequence of actions that consistently demonstrates the defect.

---

### Corrective Action

The implementation change that removes the identified root cause.

---

### Regression

The unintended introduction of new defects as a result of corrective changes.

---

## Operating Procedure

1. Understand the reported issue and expected behaviour.
2. Reproduce the defect in a controlled manner.
3. Gather evidence from logs, telemetry, monitoring, and system observations.
4. Form and test hypotheses regarding the root cause.
5. Isolate the contributing factors.
6. Identify and implement the appropriate corrective action.
7. Verify that the defect has been resolved.
8. Assess for regressions and unintended side effects.
9. Document findings, root cause, corrective action, and lessons learned where appropriate.

---

## Outputs

Typical outputs include:

* Root cause analysis
* Corrective implementation
* Investigation findings
* Updated documentation
* Defect resolution records
* Improvement recommendations
* Preventative actions where appropriate

---

## Templates

Use templates when debugging findings need to be recorded consistently and handed off cleanly to remediation and verification work.

### Primary Template

* `Implementation-Documentation-template.md` — use this template to document defect investigation, root cause analysis, corrective actions, and lessons learned.

### Supporting Templates

* `Architecture-Decision-Record-template.md` — use when debugging identifies architecture decisions or significant technical trade-offs.
* `Project-Definition-template.md` — use when debugging findings need to be linked to broader project context.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with defect-specific investigation details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

## Interaction With Other Skills

Typically receives input from:

* Forge-Backend-Development
* Forge-Frontend-Development
* Forge-Database-Implementation
* Forge-Code-Review
* Quality Assurance Skills
* Incident or operational activities

May reference:

* Forge-Solution-Architecture
* Forge-Architecture-Decision-Records
* Forge-Data-Modelling
* Forge-Integration-Design
* Forge-Threat-Modelling
* Forge-API-Design

Often followed by:

* Forge-Code-Review
* Forge-Refactoring
* Quality Assurance Skills
* Delivery Skills

---

## Standards Applied

Debugging activities should comply with applicable:

* Coding Standards
* Architecture Standards
* Security Standards
* Documentation Standards
* Testing Standards
* Operational Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* The defect is reliably reproduced.
* The root cause is identified using objective evidence.
* Corrective actions resolve the underlying issue.
* No unintended regressions are introduced.
* System stability is maintained throughout the investigation.
* Significant findings are documented.
* Lessons learned improve future engineering practices.

---

## ForgeOS Principle

Debugging is the disciplined pursuit of understanding before correction.

Effective debugging seeks evidence over assumptions, identifies root causes rather than symptoms, validates every corrective action, and strengthens both the software and the engineering process through continuous learning.
