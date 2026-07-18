# Forge-Database-Implementation

```json
{
  "skill": "Forge-Database-Implementation",
  "category": "03-Engineering",
  "purpose": "Provide a consistent capability for implementing persistent data storage that conforms to approved data models, architectural decisions, security requirements, and engineering standards. This Skill guides the creation and evolution of database structures, data access mechanisms, migrations, and supporting persistence components regardless of database technology, storage model, or deployment environment.",
  "primaryTemplates": [
    "Implementation-Documentation-template.md"
  ],
  "supportingTemplates": [
    "Data-Model-template.md",
    "Architecture-Definition-template.md"
  ]
}
```



## Purpose

Provide a consistent capability for implementing persistent data storage that conforms to approved data models, architectural decisions, security requirements, and engineering standards.

This Skill guides the creation and evolution of database structures, data access mechanisms, migrations, and supporting persistence components regardless of database technology, storage model, or deployment environment.

---

## Responsibility

Forge-Database-Implementation is responsible for translating approved logical and physical data models into operational database implementations.

It ensures that data structures are implemented consistently, preserve integrity, support application requirements, and remain maintainable throughout the system lifecycle.

This Skill focuses on implementation rather than database design or data modelling.

---

## When To Use

Use this Skill when:

* Creating new databases
* Implementing approved data models
* Creating or modifying database schemas
* Developing database migrations
* Implementing indexes and constraints
* Configuring data integrity rules
* Implementing persistence mechanisms
* Optimising approved database structures
* Extending existing databases

---

## When Not To Use

Do not use this Skill when:

* Performing requirements analysis
* Designing data models
* Making architectural decisions
* Selecting database technologies
* Defining API contracts
* Conducting code reviews
* Refactoring application code
* Investigating production issues unrelated to persistence

These activities belong to their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Approved requirements
* User stories
* Acceptance criteria
* Solution architecture
* Architecture Decision Records (ADRs)
* Approved data models
* Integration requirements
* Security requirements
* Data retention requirements
* Applicable engineering standards

---

## Principles

### Implement Approved Models

Database structures should faithfully implement approved data models without introducing unapproved structural changes.

---

### Preserve Data Integrity

Integrity constraints should protect data quality throughout its lifecycle.

---

### Support Evolution

Database implementations should accommodate controlled change through repeatable migration mechanisms.

---

### Minimise Redundancy

Data should be stored in a manner that reduces unnecessary duplication while supporting system requirements.

---

### Optimise Responsibly

Performance improvements should be based on demonstrated need and should not compromise maintainability or correctness.

---

### Protect Persistent Data

Security should be applied to stored data through appropriate controls, access management, and protection mechanisms.

---

### Design for Reliability

Database implementations should support backup, recovery, consistency, and operational resilience.

---

### Maintain Traceability

Changes to persistent structures should be controlled, versioned, and reproducible.

---

## Concepts

### Schema

The implemented structure that defines how data is organised within persistent storage.

---

### Migration

A controlled, repeatable process for evolving database structures while preserving existing data.

---

### Constraints

Rules that enforce data validity and integrity within the database.

---

### Indexes

Structures that improve data retrieval performance while supporting approved access patterns.

---

### Persistence Layer

The implementation responsible for storing, retrieving, and maintaining application data.

---

## Operating Procedure

1. Review approved requirements and acceptance criteria.
2. Review the approved data model and architectural decisions.
3. Implement database structures according to the approved design.
4. Create repeatable migration procedures for all structural changes.
5. Implement integrity constraints and validation rules.
6. Apply security and access control requirements.
7. Optimise storage structures where justified by requirements.
8. Validate the implementation against the approved data model.
9. Prepare the implementation for review and testing.

---

## Outputs

Typical outputs include:

* Database schemas
* Migration scripts
* Database objects
* Constraints
* Indexes
* Persistence configurations
* Supporting implementation documentation where required

---

## Templates

Use templates when database implementation work needs to be documented consistently and aligned with data modelling and architecture.

### Primary Template

* `Implementation-Documentation-template.md` — use this template to document schema design, migration approach, constraints, indexes, and persistence considerations.

### Supporting Templates

* `Data-Model-template.md` — use when database implementation must remain aligned with the approved data model.
* `Architecture-Definition-template.md` — use when database implementation must remain aligned with the solution architecture.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific implementation details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

## Interaction With Other Skills

Typically receives input from:

* Forge-Requirements-Analysis
* Forge-User-Story-Definition
* Forge-Acceptance-Criteria
* Forge-Solution-Architecture
* Forge-Architecture-Decision-Records
* Forge-Data-Modelling
* Forge-Threat-Modelling

Often works alongside:

* Forge-Backend-Development
* Forge-Integration-Design

Typically followed by:

* Forge-Code-Review
* Forge-Debugging
* Forge-Refactoring
* Quality Assurance Skills
* Delivery Skills

---

## Standards Applied

Implementation should comply with applicable:

* Data Standards
* Database Standards
* Security Standards
* Architecture Standards
* Coding Standards
* Documentation Standards
* Testing Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* Approved data models are implemented accurately.
* Database structures support functional requirements.
* Data integrity is enforced through appropriate constraints.
* Migrations are repeatable and reliable.
* Security requirements for persistent data are implemented.
* Performance supports expected usage patterns.
* Database changes are version-controlled and reproducible.
* The implementation is ready for review and testing.

---

## ForgeOS Principle

Database implementation is the disciplined realisation of approved data designs.

Persistent data is one of the system's most valuable assets. Database implementations should prioritise integrity, reliability, security, maintainability, and controlled evolution while remaining independent of any specific database technology.
