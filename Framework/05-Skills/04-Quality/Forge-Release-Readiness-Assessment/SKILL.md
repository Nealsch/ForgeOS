# Forge-Release-Readiness-Assessment

```json
{
  "skill": "Forge-Release-Readiness-Assessment",
  "category": "04-Quality",
  "purpose": "Provide a structured capability for assessing whether a build or release candidate is ready to ship. This Skill consolidates quality evidence — test results, defect status, regression and performance risk, and outstanding concerns — into a single, evidence-based readiness verdict for the Verify-to-Release gate. It ensures release decisions are made on facts, not optimism.",
  "primaryTemplates": [
    "Release-Plan-template.md"
  ],
  "supportingTemplates": [
    "Test-Strategy-template.md",
    "Compliance-Summary-template.md"
  ]
}
```

---

## Purpose

Provide a structured capability for assessing whether a build or release candidate is ready to ship.

This Skill consolidates quality evidence — test results, defect status, regression and performance risk, and outstanding concerns — into a single, evidence-based readiness verdict for the Verify-to-Release gate.

It ensures release decisions are made on facts, not optimism.

---

## Responsibility

Forge-Release-Readiness-Assessment is responsible for producing an objective readiness verdict at the boundary between Verify and Release.

It determines what evidence must be assembled, how it is evaluated against agreed release criteria, and how residual risk is communicated to the release decision-maker.

This Skill assesses readiness and informs the gate decision. It does not plan the release, execute deployment, or operate the released system.

---

## When To Use

Use this Skill when:

* Approaching the Verify-to-Release quality gate
* Assessing a release candidate against exit criteria
* Consolidating test, defect, regression, and performance evidence
* Reviewing outstanding defects before a release decision
* Documenting accepted residual risks
* Providing an evidence pack for go / no-go decisions
* Reviewing readiness of a hotfix or patch release

---

## When Not To Use

Do not use this Skill when:

* Planning release scope or schedule
* Executing tests or producing test evidence
* Managing defects to resolution
* Deploying or rolling back releases
* Operating or monitoring the released system
* Making the final go / no-go business decision

These activities belong to their respective ForgeOS Skills and workflow roles.

---

## Inputs

Typical inputs include:

* Release criteria and exit criteria
* Test execution results and summary reports
* Open and unresolved defect status
* Regression test results and risk status
* Performance test results and risk status
* Compliance and security assessment summaries
* Release plan and scope

---

## Principles

### Evidence Decides

Readiness is assessed from verifiable evidence, not from confidence statements or schedule pressure.

---

### Criteria Are Agreed In Advance

Release criteria are defined before assessment begins; standards are never redefined to fit the result.

---

### Risk Is Made Explicit

Unresolved concerns are documented as accepted residual risks with named ownership, never left implicit.

---

### The Verdict Is Advisory And Honest

The assessment provides a clear, honest verdict; the release decision remains with the accountable owner.

---

## Operating Procedure

1. Confirm the release criteria and exit criteria in force.
2. Assemble test execution, defect, regression, and performance evidence.
3. Evaluate each criterion against the assembled evidence.
4. Identify unmet criteria and unresolved concerns.
5. Document residual risks with severity, likelihood, and proposed acceptance.
6. Formulate the readiness verdict with supporting evidence.
7. Present the evidence pack to the release decision-maker.
8. Record the assessment and the resulting gate decision.

---

## Outputs

Typical outputs include:

* Release readiness assessment
* Criteria-by-criteria evaluation with evidence
* Residual risk register with acceptance recommendations
* Go / no-go recommendation
* Recorded gate assessment for traceability

---

## Templates

Use templates when readiness assessment must be captured consistently and remain traceable to release criteria.

### Primary Template

* `Release-Plan-template.md` — use this template to anchor the assessment to release scope, criteria, and schedule.

### Supporting Templates

* `Test-Strategy-template.md` — use when quality evidence must be evaluated against agreed quality objectives and exit criteria.
* `Compliance-Summary-template.md` — use when regulatory or compliance evidence forms part of the readiness verdict.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific assessment details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

## Interaction With Other Skills

Typically receives input from:

* Forge-Test-Execution
* Forge-Defect-Management
* Forge-Regression-Testing
* Forge-Performance-Engineering
* Forge-Threat-Modelling

Provides guidance for:

* Forge-Release-Management
* Forge-Deployment-Verification

---

## Standards Applied

Release readiness assessment should align with applicable:

* Quality Standards
* Testing Standards
* Security Standards
* Documentation Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* Release criteria were agreed before assessment began.
* All quality evidence is assembled and traceable.
* Every criterion is evaluated with supporting evidence.
* Residual risks are explicit, owned, and recorded.
* The verdict is honest, evidence-based, and clearly recommended.
* The gate decision is recorded with the assessment that informed it.

---

## ForgeOS Principle

The Verify-to-Release gate is passed on **evidence, not optimism**.

A structured readiness assessment ensures that what ships is what was verified — and that every accepted risk was seen, understood, and consciously accepted.

