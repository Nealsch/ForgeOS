# Forge-Regression-Testing

```json
{
  "skill": "Forge-Regression-Testing",
  "category": "04-Quality",
  "purpose": "Provide a structured capability for verifying that previously working functionality continues to work after change. This Skill defines and executes regression testing so that fixes, enhancements, and refactoring do not silently break existing behaviour. It protects accumulated product quality as the system evolves.",
  "primaryTemplates": [
    "Test-Plan-template.md"
  ],
  "supportingTemplates": [
    "Test-Strategy-template.md",
    "Project-Definition-template.md"
  ]
}
```

---

## Purpose

Provide a structured capability for verifying that previously working functionality continues to work after change.

This Skill defines and executes regression testing so that fixes, enhancements, and refactoring do not silently break existing behaviour.

It protects accumulated product quality as the system evolves.

---

## Responsibility

Forge-Regression-Testing is responsible for maintaining and applying the safety net that detects unintended change.

It determines which existing behaviour must be re-verified after change, how regression suites are selected and maintained, and how regression results are interpreted.

This Skill guards existing behaviour. It does not define new test strategy, execute first-pass testing of new features, or manage resulting defects.

---

## When To Use

Use this Skill when:

* Preparing to merge or release a change
* Verifying that defect fixes have not broken other behaviour
* Re-testing after refactoring or dependency upgrades
* Maintaining and curating the regression suite
* Selecting regression scope for a change
* Investigating whether a reported regression is genuine
* Establishing a regression baseline for a product

---

## When Not To Use

Do not use this Skill when:

* Defining the overall testing approach
* Executing first-pass tests of new functionality
* Recording or triaging discovered defects
* Performing performance or load testing
* Debugging the cause of a regression
* Assessing release readiness

These activities belong to their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Change set under test (fixes, features, refactoring)
* Existing test suites and regression baselines
* Test plan and strategy
* Historical defect records
* Build or release candidate under test
* Risk assessment for the change

---

## Principles

### Change Is The Risk

Regression risk comes from change; the scope of re-testing is driven by what changed and what depends on it.

---

### The Suite Is A Living Asset

Regression suites are curated continuously; obsolete tests are retired, and every fixed defect adds a regression case.

---

### Fast Feedback Wins

Regression testing is structured to give the earliest practical signal, prioritising high-risk and high-traffic behaviour.

---

### No Silent Breakage

Any behaviour change discovered during regression testing is surfaced and handled explicitly, never absorbed quietly.

---

## Operating Procedure

1. Identify the change set and the behaviour it may affect.
2. Select regression scope based on risk and dependency analysis.
3. Maintain the regression suite: add cases from fixed defects, retire obsolete ones.
4. Execute the regression suite against the build under test.
5. Compare results against the regression baseline.
6. Report any behavioural change with evidence.
7. Feed confirmed regressions into defect management.
8. Update the baseline once changes are accepted.

---

## Outputs

Typical outputs include:

* Regression test scope and selection rationale
* Regression execution results
* Confirmed regressions with evidence
* Updated regression suite and baseline
* Regression risk status for release decisions

---

## Templates

Use templates when regression scope, execution, and baselines must be documented consistently and traceably.

### Primary Template

* `Test-Plan-template.md` — use this template to document regression scope, suite composition, execution cycles, and results.

### Supporting Templates

* `Test-Strategy-template.md` — use when regression approach must remain aligned with the overall quality strategy.
* `Project-Definition-template.md` — use when regression planning needs broader project context.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific regression details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

## Interaction With Other Skills

Typically receives input from:

* Forge-Test-Strategy
* Forge-Test-Planning
* Forge-Test-Execution
* Forge-Defect-Management

Provides guidance for:

* Forge-Release-Readiness-Assessment

---

## Standards Applied

Regression testing should align with applicable:

* Quality Standards
* Testing Standards
* Documentation Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* Regression scope is selected deliberately, based on change and risk.
* Previously fixed defects remain covered by the suite.
* Behavioural changes are detected before release, not after.
* Confirmed regressions are handed to defect management with evidence.
* The regression suite remains current, trusted, and maintainable.
* Stakeholders receive a clear regression risk status.

---

## ForgeOS Principle

Regression testing protects **quality already earned**.

Every fix and feature adds value only while it keeps working; a curated regression suite ensures that new change never silently spends the quality the project has already paid for.
