# Forge-Frontend-Development

```json
{
  "skill": "Forge-Frontend-Development",
  "category": "03-Engineering",
  "purpose": "Provide a consistent capability for implementing user-facing interfaces that realise approved user experience, functional requirements, accessibility expectations, and architectural decisions. This Skill guides the creation of maintainable, responsive, accessible, and consistent frontend applications regardless of programming language, framework, platform, or rendering technology.",
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

Provide a consistent capability for implementing user-facing interfaces that realise approved user experience, functional requirements, accessibility expectations, and architectural decisions.

This Skill guides the creation of maintainable, responsive, accessible, and consistent frontend applications regardless of programming language, framework, platform, or rendering technology.

---

## Responsibility

Forge-Frontend-Development is responsible for translating approved designs into functional user interfaces.

It ensures that presentation logic, user interaction, client-side behaviour, and communication with backend services are implemented consistently while remaining aligned with approved architecture, API contracts, and engineering standards.

This Skill focuses on implementation rather than user experience design or solution architecture.

---

## When To Use

Use this Skill when:

* Developing user interfaces
* Implementing application screens or pages
* Building reusable interface components
* Implementing client-side application behaviour
* Integrating frontend applications with backend services
* Implementing client-side validation
* Creating responsive user interfaces
* Improving existing frontend functionality
* Extending existing applications

---

## When Not To Use

Do not use this Skill when:

* Gathering requirements
* Designing user experience
* Defining visual design systems
* Creating solution architecture
* Designing APIs
* Performing backend implementation
* Conducting code reviews
* Refactoring existing implementations without introducing new functionality
* Debugging production issues

These activities are addressed by their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Approved requirements
* User stories
* Acceptance criteria
* Solution architecture
* API specifications
* User interface designs or wireframes
* Design system guidance
* Accessibility requirements
* Security requirements
* Applicable engineering standards

---

## Principles

### Implement the Approved Experience

Interfaces should faithfully implement the approved user experience rather than introducing unapproved design changes.

---

### Consistency Over Creativity

Users benefit from predictable behaviour, consistent navigation, and familiar interaction patterns.

---

### Separation of Presentation and Business Logic

Presentation concerns should remain distinct from application and business logic wherever practical.

---

### Accessibility by Design

Accessibility should be considered throughout implementation rather than treated as a later enhancement.

---

### Responsive Behaviour

Interfaces should adapt appropriately to supported devices, screen sizes, and interaction methods.

---

### Minimise Client Complexity

Client-side implementations should remain as simple as possible while delivering the required functionality.

---

### Graceful Failure

Applications should handle unexpected conditions without leaving users unable to continue their work.

---

### Performance Matters

Frontend implementations should minimise unnecessary loading, rendering, and processing while preserving maintainability.

---

## Concepts

### User Interface

The visual and interactive elements through which users interact with the system.

---

### Presentation Layer

Responsible for displaying information and collecting user input without containing unnecessary business rules.

---

### Client-Side State

Represents temporary application information required to support user interaction.

---

### API Consumption

Frontend components communicate with backend services through approved interfaces and contracts.

---

### Component Reuse

Reusable interface components promote consistency, maintainability, and efficient development.

---

## Operating Procedure

1. Review approved requirements and acceptance criteria.
2. Understand the approved user experience and architecture.
3. Review API specifications and interaction requirements.
4. Implement interface components according to approved designs.
5. Integrate with backend services using approved contracts.
6. Apply accessibility, responsiveness, and security requirements.
7. Implement appropriate validation and user feedback.
8. Verify functionality against acceptance criteria.
9. Prepare the implementation for review and testing.

---

## Outputs

Typical outputs include:

* User interface components
* Application screens or pages
* Client-side interaction logic
* Navigation structures
* API integration components
* Client-side validation
* Supporting implementation documentation where required

---

## Templates

Use templates when frontend implementation work requires consistent documentation of UI components, interaction flow, and integration expectations.

### Primary Template

* `Implementation-Documentation-template.md` — use this template to document frontend components, behaviour, integration points and user interface considerations.

### Supporting Templates

* `API-Specification-template.md` — use when frontend implementation depends on defined API contracts.
* `Architecture-Definition-template.md` — use when frontend design must remain aligned with the approved solution architecture.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific frontend details.
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
* Forge-API-Design
* Forge-Threat-Modelling

Often works alongside:

* Forge-Backend-Development
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

* User Interface Standards
* Accessibility Standards
* Coding Standards
* Security Standards
* API Standards
* Documentation Standards
* Testing Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* Functional requirements are implemented correctly.
* Acceptance criteria are satisfied.
* The approved user experience is realised.
* Interfaces are responsive and accessible.
* API integrations conform to approved contracts.
* Client-side behaviour is predictable and consistent.
* Code is maintainable and understandable.
* The implementation is ready for review and testing.

---

## ForgeOS Principle

Frontend development transforms approved user experiences into reliable, accessible, and maintainable interfaces.

Implementation should prioritise clarity, consistency, usability, and alignment with the approved architecture while remaining independent of any specific frontend technology.
