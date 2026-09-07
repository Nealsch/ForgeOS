# Verify

## Purpose

The Verify phase independently confirms that the implemented software satisfies the approved requirements, complies with the architecture and standards, and is ready for release.

Its purpose is to provide objective evidence that the software is functional, reliable, secure and fit for its intended use.

Verification must be independent of implementation wherever practical. Software should not progress to Release until the Verify quality gate has been successfully passed.

---

# Objectives

The objectives of the Verify phase are to:

* Validate implemented functionality.
* Verify compliance with requirements.
* Verify compliance with architecture and standards.
* Execute functional and non-functional testing.
* Identify and document defects.
* Confirm defect resolution.
* Assess release readiness.
* Produce objective evidence of software quality.

---

# Lead Agent

* QA Engineer

---

# Supporting Agents

* Backend Engineer
* Frontend Engineer
* Security Engineer
* DevOps Engineer
* Technical Writer
* Architect

Development agents support defect investigation and resolution but do not determine release readiness.

---

# Primary Skills

The QA Engineer may utilise ForgeOS Skills including:

* `Forge-Test-Strategy`
* `Forge-Test-Planning`
* `Forge-Security-Surface-Review`
* `Forge-Code-Review`
* `Forge-Debugging`

Skills required by this phase that are not yet in the catalogue (Test Execution and Reporting, Defect Management, Regression Testing, Performance Testing, Release Readiness Assessment) are tracked in the ForgeOS Project backlog (see WI-001).

---

# Inputs

The Verify phase begins with:

* Completed Software Build
* Approved Requirements
* User Stories
* Acceptance Criteria
* Test Plan
* Test Cases
* Architecture Documentation
* Automated Test Suite
* Applicable Framework Standards

---

# Activities

Typical activities include:

* Execute automated tests.
* Perform manual verification where required.
* Validate functional requirements.
* Validate non-functional requirements.
* Perform regression testing.
* Verify integrations.
* Assess security compliance.
* Record and prioritise defects.
* Confirm defect resolution.
* Produce test reports.
* Assess overall release readiness.

---

# Deliverables

The Verify phase should produce:

* Test Execution Results
* Test Report
* Defect Register
* Verification Summary
* Security Verification Results
* Regression Test Results
* Release Readiness Assessment
* Updated Project Plan

These deliverables become the primary inputs to the Release phase.

---

# Entry Criteria

The Verify phase may begin when:

* The Develop phase has successfully passed its quality gate.
* The software is feature complete for the planned release.
* Automated tests are available.
* Test documentation has been prepared.

---

# Exit Criteria

The Verify phase is complete when:

* Planned testing has been completed.
* Critical and high-priority defects have been resolved or formally accepted.
* Acceptance criteria have been satisfied.
* Test evidence has been recorded.
* Release readiness has been assessed.
* Outstanding risks have been documented.
* The software is ready for controlled release.

---

# Quality Gate

The Verify Gate is passed when:

* Functional requirements have been verified.
* Non-functional requirements have been verified.
* Test coverage meets project objectives.
* No unresolved defects prevent release.
* Security verification has been completed.
* Test evidence has been documented.
* The QA Engineer recommends progression to the Release phase.

---

# Next Phase

Once the Verify Gate has been successfully passed, responsibility transfers to the **DevOps Engineer**, who leads the **Release** phase.

---

# ForgeOS Principle

The Verify phase answers the question:

> **"Have we built the product correctly, and is there objective evidence that it is ready for release?"**

Verification is an independent quality activity. A feature is not considered complete simply because it has been implemented—it is complete only when it has been successfully verified against the approved requirements and quality standards.
