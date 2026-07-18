# Forge-Backend-Development

```json
{
  "skill": "Forge-Backend-Development",
  "category": "03-Engineering",
  "purpose": "Provide a consistent capability for implementing backend systems that satisfy approved solution architecture, functional requirements, non-functional requirements, and established engineering standards. This Skill guides the creation of maintainable, secure, reliable, and testable backend components regardless of programming language, framework, or hosting environment.",
  "primaryTemplates": [
    "Implementation-Documentation-template.md"
  ],
  "supportingTemplates": [
    "API-Specification-template.md",
    "Architecture-Definition-template.md"
  ]
}
```



## Purpose

Provide a consistent capability for implementing backend systems that satisfy approved solution architecture, functional requirements, non-functional requirements, and established engineering standards.

This Skill guides the creation of maintainable, secure, reliable, and testable backend components regardless of programming language, framework, or hosting environment.

---

## Responsibility

Forge-Backend-Development is responsible for translating approved designs into working backend implementations.

It ensures that backend functionality is implemented consistently while maintaining alignment with architecture, data models, API contracts, security requirements, and coding standards.

This Skill focuses on implementation rather than architectural design.

---

## When To Use

Use this Skill when:

* Developing new backend services
* Implementing business logic
* Creating application services
* Building data access layers
* Implementing integrations defined by architecture
* Developing APIs from approved API specifications
* Implementing authentication and authorization mechanisms
* Modifying existing backend functionality
* Extending existing backend systems

---

## When Not To Use

Do not use this Skill when:

* Gathering requirements
* Designing solution architecture
* Defining APIs
* Performing data modelling
* Making architectural decisions
* Conducting threat modelling
* Reviewing code quality
* Refactoring existing implementations without introducing new functionality
* Debugging production issues

Those activities are covered by their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Approved requirements
* User stories
* Acceptance criteria
* Solution architecture
* Architecture Decision Records (ADRs)
* API specifications
* Data models
* Integration designs
* Security requirements
* Applicable engineering standards

---

## Principles

### Implement Before Optimising

Prioritise correctness, clarity, and maintainability before performance optimisation.

---

### Follow Approved Designs

Implementation should conform to approved architectural decisions rather than introducing alternative designs during development.

---

### Separation of Responsibilities

Backend components should have clearly defined responsibilities with minimal unnecessary coupling.

---

### Business Logic Belongs in the Backend

Business rules should be implemented within appropriate backend components rather than relying on external systems or presentation layers.

---

### Design for Maintainability

Solutions should favour readability, consistency, and ease of future enhancement.

---

### Fail Predictably

Errors should be handled consistently, producing meaningful outcomes while preserving system stability.

---

### Secure by Default

Security considerations should be incorporated throughout implementation rather than added after development.

---

### Observable Systems

Backend implementations should support effective monitoring, diagnostics, logging, and operational visibility where appropriate.

---

## Concepts

### Business Logic

Implements the rules governing system behaviour.

---

### Service Layer

Coordinates application behaviour while maintaining clear separation between external interfaces and business logic.

---

### Data Access

Manages persistence concerns independently from business rules.

---

### Integration Components

Implement communication with external systems using approved interfaces and contracts.

---

### Configuration

Operational configuration should remain external to implementation wherever practical.

---

## Operating Procedure

1. Review approved requirements and acceptance criteria.
2. Understand the approved solution architecture.
3. Review applicable API contracts and data models.
4. Implement backend components according to architectural responsibilities.
5. Apply security requirements throughout implementation.
6. Implement appropriate validation and error handling.
7. Produce code that is readable, maintainable, and consistent.
8. Verify implementation against acceptance criteria.
9. Prepare implementation for review and testing.

---

## Outputs

Typical outputs include:

* Backend services
* Business logic
* Application components
* Data access implementations
* Integration implementations
* Configuration assets
* Supporting documentation where required

---

## Templates

Use templates when backend implementation details, service definitions, or supporting documentation must be captured consistently and aligned with architecture or API contracts.

### Primary Template

* `Implementation-Documentation-template.md` — use this template to document backend design, service behaviour, data access patterns, integration points and operational considerations.

### Supporting Templates

* `API-Specification-template.md` — use when backend implementation depends on published API contracts.
* `Architecture-Definition-template.md` — use when backend implementation must stay aligned with the approved architecture.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific backend details.
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
* Forge-Integration-Design
* Forge-Threat-Modelling
* Forge-API-Design

Often works alongside:

* Forge-Frontend-Development
* Forge-Database-Implementation

Typically followed by:

* Forge-Code-Review
* Forge-Debugging
* Forge-Refactoring
* Quality Assurance Skills
* Delivery Skills

---

## Standards Applied

Implementation should comply with applicable:

* Coding Standards
* Security Standards
* Architecture Standards
* API Standards
* Documentation Standards
* Testing Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* Functional requirements are fully implemented.
* Acceptance criteria are satisfied.
* Architectural decisions are respected.
* API contracts are correctly implemented.
* Security requirements are addressed.
* Code is maintainable and understandable.
* Error handling is consistent.
* Backend components integrate successfully with dependent systems.
* The implementation is ready for review and testing.

---

## ForgeOS Principle

Backend development is the disciplined implementation of approved designs—not the redesign of them.

Implementation should faithfully realise architectural intent while producing maintainable, secure, and reliable software that can evolve throughout the system lifecycle.
