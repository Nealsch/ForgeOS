# Develop

## Purpose

The Develop phase transforms the approved architecture into working software by implementing, integrating and documenting the solution in accordance with the ForgeOS standards.

Its purpose is to build software that is correct, secure, maintainable and testable while remaining aligned with the approved design.

Development should follow an incremental approach, with functionality delivered in small, verifiable units rather than as large, monolithic changes.

---

# Objectives

The objectives of the Develop phase are to:

* Implement approved requirements.
* Follow the approved architecture.
* Produce high-quality, maintainable code.
* Implement automated tests.
* Integrate software components.
* Maintain project documentation.
* Keep the project plan current.
* Resolve implementation issues.
* Prepare the solution for formal verification.

---

# Lead Agents

* Backend Engineer
* Frontend Engineer

The lead agent depends on the area of the system being implemented.

---

# Supporting Agents

* Architect
* Security Engineer
* QA Engineer
* DevOps Engineer
* Technical Writer

The Architect provides technical guidance throughout development but should only approve architectural changes through the established decision process.

---

# Primary Skills

Development agents may utilise ForgeOS Skills including:

* `Forge-Backend-Development`
* `Forge-Frontend-Development`
* `Forge-API-Design`
* `Forge-Database-Implementation`
* `Forge-Refactoring`
* `Forge-Code-Review`
* `Forge-Debugging`
* `Forge-Standards-Compliance`
* `Forge-Documentation-Generation`

Skills required by this phase that are not yet in the catalogue (Automated Test Authoring, Performance Optimisation, Secure Coding) are tracked in the ForgeOS Project backlog (see WI-001).

---

# Inputs

The Develop phase begins with:

* Approved Architecture
* Requirements
* User Stories
* Acceptance Criteria
* API Specifications
* Data Models
* Technology Standards
* Project Plan
* Product Backlog
* Applicable Framework Standards

---

# Activities

Typical activities include:

* Implement features.
* Develop backend services.
* Develop frontend interfaces.
* Implement APIs.
* Create database migrations.
* Write automated tests.
* Refactor where appropriate.
* Update documentation.
* Resolve defects.
* Keep the Project Plan current.
* Maintain traceability between implementation and requirements.

---

# Deliverables

The Develop phase should produce:

* Working Source Code
* Automated Unit Tests
* Integration Tests
* Updated Documentation
* Updated Project Plan
* Updated Change Log
* Updated Project Journal
* Buildable Software
* Traceable Implementation of Approved Requirements

These deliverables become the primary inputs to the Verify phase.

---

# Entry Criteria

The Develop phase may begin when:

* The Design phase has successfully passed its quality gate.
* The architecture has been approved.
* Development tasks have been prioritised.
* Required technical decisions have been documented.

---

# Exit Criteria

The Develop phase is complete when:

* Approved functionality has been implemented.
* Source code complies with project standards.
* Automated tests have been created.
* Documentation has been updated.
* Code has been integrated successfully.
* Outstanding implementation issues have been documented.
* The solution is ready for independent verification.

---

# Quality Gate

The Develop Gate is passed when:

* Source code complies with the Coding Standard.
* The implementation satisfies the approved architecture.
* Automated tests execute successfully.
* Documentation reflects the implemented solution.
* Security issues identified during development have been addressed.
* The Backend and Frontend Engineers recommend progression to the Verify phase.

---

# Next Phase

Once the Develop Gate has been successfully passed, responsibility transfers to the **QA Engineer**, who leads the **Verify** phase with continued support from the engineering team.

---

# ForgeOS Principle

The Develop phase answers the question:

> **"Has the approved design been implemented correctly?"**

Implementation should always prioritise quality, maintainability and traceability over speed, ensuring that every completed feature is ready for independent verification before it is considered complete.
