# Forge-Performance-Engineering

```json
{
  "skill": "Forge-Performance-Engineering",
  "category": "04-Quality",
  "purpose": "Provide a structured capability for establishing, verifying, and improving the performance characteristics of a system. This Skill spans both sides of performance work: defining and executing performance testing during verification, and driving performance optimisation during development. It ensures performance is managed against explicit objectives rather than discovered in production.",
  "primaryTemplates": [
    "Test-Plan-template.md"
  ],
  "supportingTemplates": [
    "Architecture-Assessment-template.md",
    "Test-Strategy-template.md"
  ]
}
```

---

## Purpose

Provide a structured capability for establishing, verifying, and improving the performance characteristics of a system.

This Skill spans both sides of performance work: defining and executing performance testing during verification, and driving performance optimisation during development.

It ensures performance is managed against explicit objectives rather than discovered in production.

---

## Responsibility

Forge-Performance-Engineering is responsible for performance objectives, measurement, verification, and improvement.

It determines how performance requirements are established, how load and stress conditions are tested, how bottlenecks are identified, and how optimisation work is prioritised and verified.

This Skill manages performance as an engineering discipline. It does not design system architecture, execute functional tests, or manage defects outside performance scope.

---

## When To Use

Use this Skill when:

* Defining performance objectives and budgets
* Planning performance, load, or stress testing
* Executing performance test cycles
* Establishing performance baselines
* Investigating response time, throughput, or resource concerns
* Prioritising and verifying optimisation work
* Validating scalability assumptions
* Reporting performance risk for release decisions

---

## When Not To Use

Do not use this Skill when:

* Defining functional test strategy or plans
* Executing functional or regression tests
* Recording or triaging non-performance defects
* Designing system architecture
* Performing code-level profiling as part of debugging
* Assessing overall release readiness

These activities belong to their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Non-functional requirements and performance expectations
* Solution architecture and deployment model
* Expected and peak usage profiles
* Existing performance baselines
* Production incident or slowdown reports
* Build or release candidate under test

---

## Principles

### Performance Is A Requirement

Performance objectives are defined explicitly and measured, never assumed.

---

### Measure Before Optimising

Optimisation decisions are based on measured evidence, not intuition; baselines precede improvement.

---

### Test At Realistic Scale

Performance testing reflects expected and peak production conditions as closely as practical.

---

### Optimisation Is Verified Change

Every optimisation is validated against the baseline so improvements are real and regressions are caught.

---

## Operating Procedure

1. Define or review performance objectives and budgets.
2. Model expected and peak usage profiles.
3. Establish performance baselines through measurement.
4. Design and execute performance, load, and stress tests.
5. Compare results against objectives and baselines.
6. Identify bottlenecks and quantify their impact.
7. Prioritise optimisation work by measured benefit.
8. Verify each optimisation against the baseline.
9. Report performance status and risk to stakeholders.

---

## Outputs

Typical outputs include:

* Performance objectives and budgets
* Performance test plans and results
* Performance baselines and trend data
* Bottleneck analysis with measured evidence
* Prioritised optimisation backlog
* Performance risk status for release decisions

---

## Templates

Use templates when performance objectives, testing, and optimisation work must be documented consistently and measurably.

### Primary Template

* `Test-Plan-template.md` — use this template to document performance test scope, scenarios, environments, and results.

### Supporting Templates

* `Architecture-Assessment-template.md` — use when performance analysis must consider architectural constraints and bottlenecks.
* `Test-Strategy-template.md` — use when performance testing must remain aligned with the overall quality strategy.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific performance details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

## Interaction With Other Skills

Typically receives input from:

* Forge-Solution-Architecture
* Forge-Test-Strategy
* Forge-Test-Planning

Provides guidance for:

* Forge-Release-Readiness-Assessment
* Forge-Technical-Debt-Assessment

---

## Standards Applied

Performance engineering should align with applicable:

* Quality Standards
* Testing Standards
* Architecture Standards
* Documentation Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* Performance objectives are explicit and measurable.
* Baselines exist and are kept current.
* Performance testing reflects realistic operating conditions.
* Bottlenecks are identified with measured evidence.
* Optimisations are prioritised by measured benefit and verified against baselines.
* Performance risk is visible before release decisions.

---

## ForgeOS Principle

Performance is **engineered, not hoped for**.

By pairing measurement-driven testing with verified optimisation, this Skill ensures the system's speed and scalability are deliberate outcomes — evidenced at verification time, not discovered by users in production.

