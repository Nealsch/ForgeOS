# ForgeOS Testing Standard

## Purpose

The Testing Standard defines the enduring principles for verifying the correctness, reliability and quality of software developed using the ForgeOS framework.

Testing provides objective evidence that software satisfies its intended behaviour, remains maintainable and continues to operate correctly as the system evolves.

These standards apply throughout the Software Development Lifecycle (SDLC), regardless of programming language, framework or technology stack.

---

# Testing Philosophy

Testing is an engineering activity, not a project milestone.

Tests exist to:

* verify behaviour
* prevent regressions
* validate requirements
* enable safe change
* increase engineering confidence

Testing should continuously improve the quality and maintainability of the software.

---

# Testing Principles

## 1. Verify Behaviour

Tests should verify what the system is expected to do.

Implementation details may change, but observable behaviour should remain correct.

---

## 2. Test at the Appropriate Level

Software should be verified using the most appropriate testing level.

A balanced testing strategy should include:

* unit testing
* integration testing
* end-to-end testing

Each level has a distinct purpose and complements the others.

---

## 3. Critical Functionality Must Be Tested

Critical business functionality should always be protected by automated tests.

Every significant behavioural change should include verification of:

* expected behaviour
* edge cases
* failure conditions

---

## 4. Tests Must Be Reliable

Tests should produce consistent results.

Tests should be:

* deterministic
* repeatable
* isolated where practical
* independent of execution order

Unreliable tests reduce confidence in the engineering process.

---

## 5. Prevent Regression

Every defect corrected should reduce the likelihood of its recurrence.

Where practical, bug fixes should be accompanied by automated regression tests.

---

## 6. Verify Contracts

Interfaces between components should remain predictable.

Changes that affect APIs, data contracts or integrations should verify compatibility and avoid unintended breaking changes.

---

## 7. Testing Supports Safe Change

Well-designed tests enable confident refactoring and continuous improvement.

A comprehensive test suite should increase—not hinder—the ability to evolve the software.

---

## 8. Observe the System

Verification extends beyond automated tests.

Software should provide sufficient logging, metrics and diagnostics to support validation during development, deployment and operation.

A system that cannot be observed cannot be effectively verified.

---

## 9. Continuous Verification

Testing is performed continuously throughout development.

Software should be verified before release, after significant change and whenever risk justifies additional validation.

Quality is built continuously rather than inspected at the end.

---

## 10. Evidence Before Confidence

Engineering decisions should be supported by objective evidence.

Software should never be considered correct solely because it compiles, appears to work or has been manually exercised.

Confidence comes from repeatable verification.

---

# Relationship to Other Standards

This standard defines **how software quality is verified**.

It complements:

* Architecture Standards
* Coding Standards
* Documentation Standards
* Security Standards
* Deployment Standards

Together these standards establish the engineering quality expectations of ForgeOS.

---

# Immutable Engineering Knowledge

These principles define enduring testing expectations.

Project-specific test frameworks, coverage targets, automation tooling, CI/CD pipelines and testing technologies belong within the individual project rather than within the ForgeOS framework.

---

# ForgeOS Principle

Testing provides evidence, not assumptions.

Every test should increase confidence that the software continues to satisfy its requirements, remains safe to change and can be trusted throughout its operational lifetime.
