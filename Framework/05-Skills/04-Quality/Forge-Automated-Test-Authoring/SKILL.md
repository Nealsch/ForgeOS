# Forge-Automated-Test-Authoring

```json
{
  "skill": "Forge-Automated-Test-Authoring",
  "category": "04-Quality",
  "purpose": "Forge-Automated-Test-Authoring provides the capability to translate test plans and acceptance criteria into automated tests — selecting test sizes and flavours, designing unit and integration tests, applying property-based and contract-testing patterns, defining test-data strategy, and assessing test quality through mutation-testing feedback — while remaining independent of any specific test framework or technology stack.",
  "outputs": [
    "Automated test suites (unit, integration, contract)",
    "Test-design decisions recorded against the test plan",
    "Test-quality assessment (mutation-score feedback, coverage gaps)"
  ],
  "primaryTemplates": [
    "Test-Plan-template.md"
  ],
  "supportingTemplates": [
    "Test-Strategy-template.md",
    "Implementation-Documentation-template.md"
  ]
}
```

## Purpose

Forge-Automated-Test-Authoring turns quality intent into executable tests. Forge-Test-Planning decides *what* must be verified; Forge-Test-Execution *runs* the tests and reports results. This Skill owns the space between: **authoring the tests themselves** — well-designed, hermetic, maintainable, and honest about what they prove.

It is deliberately technology-independent. The Skill defines test-authoring capability and selection criteria; the project's own documentation owns the concrete frameworks, runners and libraries. Any tool named in the Tooling Landscape below is an illustrative exemplar of a pattern, never a requirement.

Used primarily by the **Quality Assurance Engineer** during the **Develop** phase; consumed by Forge-Test-Execution.

---

# Responsibility

Forge-Automated-Test-Authoring is responsible for:

* Translating test plans and acceptance criteria into automated tests.
* Selecting appropriate test sizes (small/medium/large) and flavours (unit, integration, end-to-end) per test intent.
* Designing hermetic tests: deterministic, isolated, order-independent.
* Choosing meaningful test values — non-default, boundary, and negative cases that would fail if the implementation is wrong.
* Authoring unit tests for business logic and integration tests for data-access, boundary and service interactions.
* Applying the property-based testing pattern where input domains are complex or edge cases are hard to enumerate manually.
* Applying the consumer-driven contract-testing pattern across service boundaries.
* Defining test-data strategy: builders, factories, anonymised realistic data; real dependencies preferred over mocks where cost allows (throwaway-environment pattern).
* Assessing test quality — treating mutation testing as the measure of assertion strength, not coverage percentage alone.
* Recording test-design decisions traceably against the test plan.

It does **not**:

* Define quality strategy or test approach (Forge-Test-Strategy).
* Produce test plans, scope, or entry/exit criteria (Forge-Test-Planning).
* Execute tests, capture evidence, or report quality status (Forge-Test-Execution).
* Protect existing behaviour across change (Forge-Regression-Testing).
* Choose the project's test frameworks or libraries (Project Documentation).

---

# When To Use

* During **Develop**, as behaviour is implemented, to author the tests specified by the plan.
* When strengthening an existing suite whose assertions are weak (mutation feedback).
* When introducing tests for a legacy area covered by an approved test plan.

---

# When Not To Use

* No test strategy or plan exists yet — use Forge-Test-Strategy and Forge-Test-Planning first.
* Ad-hoc verification during debugging — use Forge-Debugging; only promoted tests belong to this Skill.

---

# Inputs

* Test plan with scenarios, levels, and entry/exit criteria (`Test-Plan-template.md`).
* Test strategy with objectives and risk priorities, where available.
* Acceptance criteria from user stories or requirements.
* Implementation-under-test and its design documentation.

---

# Method

## Step 1 — Trace To The Plan
Map every test to be authored to a planned scenario or acceptance criterion. Untestable criteria are surfaced back to Forge-Test-Planning.

## Step 2 — Select Size And Flavour
Classify each test: small (single process, no I/O), medium (one machine, in-process dependencies), large (multi-system, end-to-end). Prefer the smallest size that proves the behaviour.

## Step 3 — Design For Hermeticity
Remove order dependence, shared mutable state, network and clock dependence. Time, randomness and concurrency are injected, never assumed.

## Step 4 — Choose Meaningful Values
Use non-default, boundary and negative values. A test that would pass against a broken default-initialised implementation proves nothing.

## Step 5 — Author Unit And Integration Tests
Write unit tests for logic and integration tests for persistence, boundaries and service interactions, using real dependencies over mocks where the cost allows.

## Step 6 — Apply Advanced Patterns Where Justified
* **Property-based testing** — where input domains are large or invariants matter more than examples.
* **Contract testing** — where a service boundary exists between separately deployed components.
* **Throwaway environments** — where integration fidelity beats mock fidelity.

## Step 7 — Assess Test Quality
Apply mutation-testing feedback where the project's tooling supports it: surviving mutants indicate weak assertions. Record coverage and mutation observations as inputs to Forge-Test-Execution reporting.

## Step 8 — Record And Hand Over
Document design decisions against the plan and hand the suite to Forge-Test-Execution and Forge-Regression-Testing.

---

# Outputs

* Automated test suites (unit, integration, contract) committed to the project.
* Test-design decisions traceable to the test plan.
* Test-quality observations (mutation scores, coverage notes) for quality reporting.

---

# Standards Applied

* Testing Standards
* Coding Standards
* Security Standards (OWASP WSTG alignment, where the plan includes security-relevant scenarios)
* Documentation Standards

---

# Interaction With Other Skills

* **Forge-Test-Strategy** — supplies objectives and risk priorities that shape test design.
* **Forge-Test-Planning** — supplies scenarios, levels and criteria; receives back untestable items.
* **Forge-Test-Execution** — consumes the authored suite; returns quality evidence.
* **Forge-Regression-Testing** — the suite becomes the regression safety net.
* **Forge-Secure-Coding** — secure implementation and its security tests are authored together.
* **Forge-Performance-Engineering** — performance tests are authored under that Skill's objectives, using this Skill's design discipline.

---

# Tooling Landscape (Illustrative, Non-Normative)

The following widely used open-source tools exemplify the patterns above. They are **examples only** — each exists in multiple language ecosystems, any equivalent may be chosen, and none is required or referenced normatively:

* Property-based testing: Hypothesis (Python), fast-check (JS/TS), jqwik (Java), FsCheck (.NET), rapidcheck (C++).
* Mutation testing: Stryker family (JS/TS, C#, Scala), PIT (Java), mutmut (Python).
* Real-dependency integration: Testcontainers (14+ language implementations) — the throwaway-environment pattern.
* Contract testing: Pact (consumer-driven contracts).
* Test-authoring principles: Google Testing Blog and *Software Engineering at Google* (test sizes, hermeticity, meaningful values) — technology-agnostic foundations.

Concrete framework and library choices belong to **Project Documentation** (per the Tooling Boundary below).

---

# Tooling Boundary

This Skill defines **capability and selection criteria**, never tool mandates. Language-specific frameworks, runners, assertion and mocking libraries, property-based and mutation-testing tools belong to Project Documentation. Tools named in the Tooling Landscape are illustrative of a pattern, swappable without Framework changes, and never referenced normatively (per the ADR-008 boundary discipline).

---

# Success Criteria

Forge-Automated-Test-Authoring is successful when:

* Every authored test traces to a planned scenario or acceptance criterion.
* Tests are hermetic, deterministic and independent of execution order.
* Test values are deliberate — default-value false confidence is eliminated.
* Advanced patterns (property-based, contract, real-dependency integration) are applied where justified and documented otherwise.
* Test-quality feedback (mutation, coverage) exists for the authored suite.
* The suite runs on the project's chosen tooling with no Framework-level tool coupling.