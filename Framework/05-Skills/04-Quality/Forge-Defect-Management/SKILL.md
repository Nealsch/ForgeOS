# Forge-Defect-Management

```json
{
  "skill": "Forge-Defect-Management",
  "category": "04-Quality",
  "purpose": "Provide a structured capability for recording, triaging, tracking, and resolving defects throughout the Software Development Lifecycle (SDLC). This Skill ensures that every identified defect is captured consistently, assessed for impact and priority, tracked to resolution, and verified as fixed. It provides the single accountable process for product quality issues between discovery and closure.",
  "primaryTemplates": [
    "Work-Item-template.md"
  ],
  "supportingTemplates": [
    "Test-Plan-template.md",
    "Prioritisation-Matrix-template.md"
  ]
}
```

---

## Purpose

Provide a structured capability for recording, triaging, tracking, and resolving defects throughout the Software Development Lifecycle (SDLC).

This Skill ensures that every identified defect is captured consistently, assessed for impact and priority, tracked to resolution, and verified as fixed.

It provides the single accountable process for product quality issues between discovery and closure.

---

## Responsibility

Forge-Defect-Management is responsible for the lifecycle of defects from discovery to verified closure.

It determines how defects are recorded, how severity and priority are assessed, how fixes are tracked, and how closure is verified against the original failure.

This Skill manages defects as tracked work items. It does not execute tests, diagnose root causes within the codebase, or decide release readiness.

---

## When To Use

Use this Skill when:

* Recording a newly discovered defect
* Triaging and prioritising reported defects
* Assigning defects for investigation or resolution
* Tracking defect status through to closure
* Verifying that fixes resolve the original failure
* Reporting defect trends and quality indicators
* Reviewing outstanding defects before a release

---

## When Not To Use

Do not use this Skill when:

* Executing tests or producing test evidence
* Performing root-cause analysis inside the codebase
* Debugging or fixing code
* Assessing overall release readiness
* Managing feature backlogs or enhancement requests
* Tracking technical debt that is not a defect

These activities belong to their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Failed test results and evidence
* Bug reports from any source
* Reproduction steps where known
* Severity and impact information
* Release and iteration context
* Prioritisation criteria
* Fixed builds for verification

---

## Principles

### Every Defect Is Tracked

A defect that is not recorded cannot be prioritised, fixed, or learned from.

---

### Severity Describes Impact

Severity reflects user and business impact; priority reflects agreed response urgency. They are assessed separately.

---

### Fix Without Verification Is Not Closure

A defect is closed only when the fix is verified against the original failure evidence.

---

### Trends Inform Strategy

Defect data is analysed for patterns that feed back into testing strategy and development practice.

---

## Operating Procedure

1. Record the defect with reproduction steps, evidence, and environment details.
2. Assess severity based on impact and likelihood.
3. Triage and assign priority using agreed criteria.
4. Assign the defect for investigation and resolution.
5. Track status through analysis, fix, and verification.
6. Verify the fix against the original failure evidence.
7. Close the defect or return it with clear rationale.
8. Report defect trends and outstanding quality indicators.

---

## Outputs

Typical outputs include:

* Recorded, prioritised defect backlog
* Defect status and lifecycle reports
* Verified closures with evidence
* Defect trend and quality indicator reports
* Input to release readiness assessment

---

## Templates

Use templates when defects must be recorded and tracked consistently across teams and iterations.

### Primary Template

* `Work-Item-template.md` — use this template to record individual defects with description, severity, priority, status, and resolution tracking.

### Supporting Templates

* `Test-Plan-template.md` — use when linking defect records to the test cycles that discovered them.
* `Prioritisation-Matrix-template.md` — use when triaging defects against agreed impact and urgency criteria.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific defect details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

## Interaction With Other Skills

Typically receives input from:

* Forge-Test-Execution
* Forge-Test-Planning
* Forge-Technical-Debt-Assessment

Provides guidance for:

* Forge-Release-Readiness-Assessment
* Forge-Test-Strategy

---

## Standards Applied

Defect management should align with applicable:

* Quality Standards
* Testing Standards
* Documentation Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* All discovered defects are recorded and traceable.
* Severity and priority are assessed consistently.
* Defects progress through a visible lifecycle to verified closure.
* No defect is closed without verification evidence.
* Defect trends are reported and inform quality strategy.
* Outstanding defects are visible before release decisions.

---

## ForgeOS Principle

Defect management provides the **accountable path from discovery to verified closure**.

A consistent, evidence-based defect lifecycle ensures that known quality issues are never lost, silently accepted, or mistakenly declared fixed.
