# Forge-Refactoring

```json
{
  "skill": "Forge-Refactoring",
  "category": "03-Engineering",
  "purpose": "Provide a consistent capability for improving the internal structure, maintainability, readability, and quality of software without changing its externally observable behaviour. This Skill establishes a disciplined approach to evolving implementations so they remain easier to understand, modify, test, and extend throughout the software lifecycle, regardless of programming language, framework, or architecture.",
  "primaryTemplates": [
    "Implementation-Documentation-template.md"
  ],
  "supportingTemplates": [
    "Architecture-Decision-Record-template.md",
    "Project-Definition-template.md"
  ]
}
```



## Purpose

Provide a consistent capability for improving the internal structure, maintainability, readability, and quality of software without changing its externally observable behaviour.

This Skill establishes a disciplined approach to evolving implementations so they remain easier to understand, modify, test, and extend throughout the software lifecycle, regardless of programming language, framework, or architecture.

---

## Responsibility

Forge-Refactoring is responsible for improving implementation quality while preserving functional behaviour.

It reduces technical debt, improves code organisation, simplifies complexity, and aligns implementations with approved architectural decisions and engineering standards.

This Skill focuses on improving existing implementations. It does not introduce new functionality or redesign the solution architecture.

---

## When To Use

Use this Skill when:

* Improving maintainability
* Reducing technical debt
* Simplifying overly complex implementations
* Removing duplication
* Improving code organisation
* Improving readability
* Responding to Code Review findings
* Preparing code for future enhancements
* Aligning implementations with current engineering standards

---

## When Not To Use

Do not use this Skill when:

* Implementing new features
* Changing functional requirements
* Making architectural decisions
* Performing debugging investigations
* Fixing production defects that alter system behaviour
* Designing APIs
* Creating new data models

Those activities belong to their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Existing implementation
* Code review findings
* Technical debt assessments
* Engineering standards
* Architecture Decision Records (ADRs)
* Solution architecture
* Static analysis findings
* Maintainability concerns
* Approved improvement objectives

---

## Principles

### Preserve Behaviour

Refactoring should not intentionally alter externally observable system behaviour.

---

### Improve Incrementally

Small, controlled improvements reduce risk and simplify validation.

---

### Reduce Complexity

Prefer simpler structures that are easier to understand, maintain, and extend.

---

### Eliminate Duplication

Repeated logic should be consolidated where doing so improves clarity and maintainability.

---

### Improve Readability

Code should communicate intent clearly with minimal cognitive effort.

---

### Respect Architectural Boundaries

Refactoring should reinforce approved architectural responsibilities rather than weaken them.

---

### Maintain Testability

Changes should preserve or improve the ability to verify software correctness.

---

### Leave the Code Better

Each refactoring effort should leave the implementation in a more maintainable state than it was before.

---

## Concepts

### Technical Debt

The accumulated cost of implementation decisions that reduce long-term maintainability or increase future development effort.

---

### Behaviour Preservation

The externally visible behaviour of the system remains unchanged after refactoring.

---

### Code Smells

Indicators of potential maintainability problems that may justify refactoring.

---

### Continuous Improvement

Ongoing enhancement of implementation quality throughout the software lifecycle.

---

## Operating Procedure

1. Identify opportunities for improvement.
2. Understand the existing implementation and intended behaviour.
3. Confirm that behavioural changes are not required.
4. Plan small, manageable refactoring activities.
5. Improve structure while preserving functionality.
6. Maintain consistency with architecture and engineering standards.
7. Verify that existing behaviour remains unchanged.
8. Document significant structural improvements where appropriate.
9. Prepare the implementation for review and testing.

---

## Outputs

Typical outputs include:

* Improved implementation structure
* Reduced technical debt
* Simplified code organisation
* Improved readability
* Improved maintainability
* Updated supporting documentation where required

---

## Templates

Use templates when refactoring outcomes and supporting documentation need to be captured consistently and traceably.

### Primary Template

* `Implementation-Documentation-template.md` — use this template to document the changes made, the rationale, and the impact on implementation quality.

### Supporting Templates

* `Architecture-Decision-Record-template.md` — use when refactoring decisions require formal architectural traceability.
* `Project-Definition-template.md` — use when refactoring work affects project scope or objectives.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific refactoring details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

## Interaction With Other Skills

Typically receives input from:

* Forge-Code-Review
* Forge-Debugging
* Forge-Backend-Development
* Forge-Frontend-Development
* Forge-Database-Implementation

May reference:

* Forge-Solution-Architecture
* Forge-Architecture-Decision-Records
* Forge-Threat-Modelling
* Forge-Requirements-Analysis

Often followed by:

* Forge-Code-Review
* Quality Assurance Skills
* Delivery Skills

---

## Standards Applied

Refactoring should comply with applicable:

* Coding Standards
* Architecture Standards
* Security Standards
* Documentation Standards
* Testing Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* External behaviour remains unchanged.
* Technical debt is reduced.
* Readability and maintainability are improved.
* Complexity is reduced where practical.
* Architectural boundaries are strengthened.
* Code aligns more closely with engineering standards.
* The implementation is easier to understand, modify, and test.
* The software is ready for review and validation.

---

## ForgeOS Principle

Refactoring improves how software is built, not what the software does.

The objective is continuous improvement of implementation quality while preserving system behaviour, reducing future development effort, and maintaining alignment with approved architectural intent.
