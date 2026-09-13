# Forge-Test-Execution

```json
{
  "skill": "Forge-Test-Execution",
  "category": "04-Quality",
  "purpose": "Provide a structured capability for executing planned tests and reporting their results. This Skill turns the test plan into executed, evidence-producing activity: it runs test cycles, records outcomes, captures evidence, and reports results and quality status to stakeholders. It ensures test execution is traceable, repeatable, and reported consistently.",
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

Provide a structured capability for executing planned tests and reporting their results.

This Skill turns the test plan into executed, evidence-producing activity: it runs test cycles, records outcomes, captures evidence, and reports results and quality status to stakeholders.

It ensures test execution is traceable, repeatable, and reported consistently.

---

## Responsibility

Forge-Test-Execution is responsible for carrying out the tests defined in the test plan and communicating their outcomes.

It determines how test cycles are run, how results and evidence are recorded, and how execution status is reported against the plan.

This Skill executes and reports on tests. It does not define the test strategy, design individual test cases, manage defects to resolution, or decide whether a release is ready.

---

## When To Use

Use this Skill when:

* Running a planned test cycle
* Executing test suites or test scenarios
* Recording test results and evidence
* Tracking execution progress against the test plan
* Reporting test outcomes and quality status
* Communicating cycle completion against entry and exit criteria
* Producing test summary reports

---

## When Not To Use

Do not use this Skill when:

* Defining the overall testing approach
* Planning test cycles or schedules
* Designing individual test cases
* Triaging or resolving defects
* Performing root-cause analysis of failures
* Assessing release readiness
* Debugging software

These activities belong to their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Approved test plan
* Test strategy and quality objectives
* Test cases and test scenarios
* Test environment access and configuration
* Test data
* Build or release candidate under test
* Entry criteria confirmation
* Known defects and open issues

---

## Principles

### Execute Against The Plan

Test execution follows an approved plan; ad-hoc testing is scoped and documented separately.

---

### Evidence Over Assertion

Every reported outcome is supported by captured, reviewable evidence.

---

### Traceability

Results trace back to test cases, requirements, and the build under test.

---

### Report Honestly

Pass, fail, blocked, and skipped states are reported accurately, without optimistic filtering.

---

### Repeatable Cycles

Execution is performed consistently so results are comparable across cycles and builds.

---

## Operating Procedure

1. Confirm entry criteria and the readiness of the build under test.
2. Prepare the test environment and test data.
3. Execute test cases according to the test plan.
4. Record outcomes, evidence, and observations for each test case.
5. Track execution progress against the plan.
6. Report blocked and failed tests, with evidence, for defect handling.
7. Summarise cycle results against exit criteria.
8. Publish the test execution report to stakeholders.

---

## Outputs

Typical outputs include:

* Test execution results
* Test evidence and artefacts
* Test summary and status reports
* Execution progress against the plan
* Confirmed failures ready for defect handling
* Exit criteria assessment input

---

## Templates

Use templates when test execution and reporting must be captured consistently and remain traceable to the plan.

### Primary Template

* `Test-Plan-template.md` — use this template as the baseline for recording execution cycles, results, and status against the planned scope.

### Supporting Templates

* `Test-Strategy-template.md` — use when reporting must remain aligned with quality objectives and exit criteria.
* `Project-Definition-template.md` — use when execution reporting needs broader project context.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific execution details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

## Interaction With Other Skills

Typically receives input from:

* Forge-Test-Strategy
* Forge-Test-Planning

Provides guidance for:

* Forge-Defect-Management
* Forge-Release-Readiness-Assessment

---

## Standards Applied

Test execution and reporting should align with applicable:

* Quality Standards
* Testing Standards
* Documentation Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* Tests are executed against an approved plan.
* Results and evidence are recorded for every test case.
* Execution status is traceable to requirements and builds.
* Failures are reported accurately and handed to defect management.
* Cycle outcomes are summarised against exit criteria.
* Stakeholders receive timely, honest quality status.

---

## ForgeOS Principle

Test execution produces **evidence**, not assurance on its own.

Consistent, traceable execution and honest reporting provide the factual basis on which defect handling, regression confidence, and release decisions are made.
