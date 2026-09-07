# Specify

## Purpose

The Specify phase establishes a complete and shared understanding of the product before any technical design or implementation begins.

Its purpose is to define **what** is to be built and **why**, while eliminating ambiguity, documenting assumptions and agreeing on the scope of the project.

No architectural design or software development should begin until the Specify phase has successfully passed its quality gate.

---

# Objectives

The objectives of the Specify phase are to:

* Understand the business problem.
* Define the product vision.
* Capture functional requirements.
* Capture non-functional requirements.
* Establish project scope.
* Identify out-of-scope items.
* Define business terminology.
* Identify assumptions and risks.
* Prioritise features.
* Define the Minimum Viable Product (MVP).
* Produce a complete and implementable project definition.

---

# Lead Agent

* Product Manager

---

# Supporting Agents

* Codebase Analyst
* Technical Writer

The Architect may participate to provide technical clarification but should not influence business requirements.

## Onboarding an Existing Codebase (ADR-007 / ADR-008)

When the project is not greenfield but inherits an existing codebase, the **Codebase Analyst** is engaged at the start of Specify to produce an **Architecture Assessment** (`Framework/07-Templates/02-Architecture/Architecture-Assessment-template.md`). The Codebase Analyst consumes the **Codebase Analysis Capability** (`Tooling/03-Capabilities/Codebase-Analysis-Capability.md`) and its Skills (`Forge-Architecture-Analysis`, `Forge-Dependency-Analysis`, `Forge-Technical-Debt-Assessment`, `Forge-Security-Surface-Review`, `Forge-Repository-Metrics`, `Forge-Documentation-Generation`) to establish what exists today. This assessment becomes a primary input to Requirements, Identified Risks, and Decision Candidates.

---

# Primary Skills

The Product Manager may utilise ForgeOS Skills including:

* `Forge-Requirements-Elicitation`
* `Forge-Requirements-Analysis`
* `Forge-User-Story-Definition`
* `Forge-Acceptance-Criteria`
* `Forge-Prioritisation`
* `Forge-Knowledge-Management`
* `Forge-Documentation-Generation`

Skills required by this phase that are not yet in the catalogue (Scope Definition, Risk Assessment, Glossary Management) are tracked in the ForgeOS Project backlog (see WI-001).

---

# Inputs

The Specify phase typically begins with:

* Product Vision
* Business Objectives
* Stakeholder Requests
* Existing Documentation
* User Research
* Applicable Framework Standards

---

# Activities

Typical activities include:

* Discover business requirements.
* Clarify project goals.
* Challenge assumptions.
* Resolve ambiguity.
* Define business terminology.
* Develop user stories.
* Define acceptance criteria.
* Prioritise features.
* Identify risks.
* Define MVP scope.
* Prepare the project for architectural design.

---

# Deliverables

The Specify phase should produce:

* Project Definition
* Requirements
* Project Glossary
* User Stories
* Acceptance Criteria
* MVP Definition
* Product Backlog
* Initial Roadmap
* Identified Risks
* Decision Candidates

These deliverables become the primary inputs to the Design phase.

---

# Entry Criteria

The Specify phase may begin when:

* A product idea or business problem has been identified.
* A Product Owner has been identified.
* The project has been created from the ForgeOS Project Template.

---

# Exit Criteria

The Specify phase is complete when:

* Business objectives are clearly understood.
* Functional requirements have been documented.
* Non-functional requirements have been documented.
* Product scope is agreed.
* Out-of-scope items have been identified.
* User stories include measurable acceptance criteria.
* Business terminology has been standardised.
* Major assumptions have been identified.
* Risks have been documented.
* The project is ready for architectural design.

---

# Quality Gate

The Specify Gate is passed when:

* Requirements are complete.
* Requirements are internally consistent.
* Requirements are testable.
* Product scope is clearly defined.
* Acceptance criteria are measurable.
* Stakeholder ambiguity has been reduced to an acceptable level.
* The Product Manager recommends progression to the Design phase.

---

# Next Phase

Once the Specify Gate has been successfully passed, responsibility transfers to the **Architect**, who leads the **Design** phase.

---

# ForgeOS Principle

The Specify phase answers the question:

> **"Are we building the right product?"**

Only after this question has been answered should the project proceed to technical design and implementation.
