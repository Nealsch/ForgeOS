# Forge-Code-Review

```json
{
  "skill": "Forge-Code-Review",
  "category": "03-Engineering",
  "purpose": "Provide a consistent capability for evaluating software implementations to ensure they satisfy approved requirements, architectural decisions, engineering standards, security expectations, and maintainability objectives before integration or release. This Skill establishes a structured approach to reviewing code regardless of programming language, framework, repository, or development methodology.",
  "primaryTemplates": [
    "Implementation-Documentation-template.md"
  ],
  "supportingTemplates": [
    "Compliance-Summary-template.md",
    "Architecture-Decision-Record-template.md"
  ]
}
```



## Purpose

Provide a consistent capability for evaluating software implementations to ensure they satisfy approved requirements, architectural decisions, engineering standards, security expectations, and maintainability objectives before integration or release.

This Skill establishes a structured approach to reviewing code regardless of programming language, framework, repository, or development methodology.

---

## Responsibility

Forge-Code-Review is responsible for assessing the quality and suitability of implemented software.

It verifies that code aligns with approved designs, complies with applicable standards, identifies defects and improvement opportunities, and promotes shared engineering knowledge.

This Skill evaluates implementation quality. It does not perform implementation or redesign the solution architecture.

---

## When To Use

Use this Skill when:

* Reviewing new features
* Reviewing bug fixes
* Reviewing refactoring changes
* Reviewing pull requests or merge requests
* Assessing implementation against acceptance criteria
* Verifying compliance with engineering standards
* Reviewing security-related changes
* Evaluating maintainability before integration
* Performing peer or AI-assisted reviews

---

## When Not To Use

Do not use this Skill when:

* Gathering requirements
* Designing architecture
* Writing implementation code
* Performing debugging investigations
* Conducting formal software testing
* Refactoring code directly
* Making architectural decisions outside the scope of the submitted changes

These activities belong to their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Source code changes
* Approved requirements
* User stories
* Acceptance criteria
* Solution architecture
* Architecture Decision Records (ADRs)
* API specifications
* Data models
* Security requirements
* Coding standards
* Governance

---

## Principles

### Review Against Approved Intent

Evaluate implementation against approved requirements and architectural decisions rather than personal preference.

---

### Be Objective

Reviews should focus on correctness, quality, and maintainability using measurable engineering criteria.

---

### Identify Root Causes

Highlight underlying design or implementation issues rather than only identifying symptoms.

---

### Preserve Readability

Code should be understandable by future maintainers, not only by its original author.

---

### Protect System Integrity

Changes should not introduce unnecessary complexity, hidden dependencies, or unintended side effects.

---

### Verify Security

Review implementations for compliance with approved security requirements and secure engineering practices.

---

### Promote Knowledge Sharing

Code reviews improve collective understanding and encourage consistent engineering practices across contributors.

---

### Encourage Continuous Improvement

Reviews should identify opportunities for improvement while recognising well-designed implementations.

---

## Concepts

### Review Findings

Observations raised during review that may require clarification, modification, or acceptance.

---

### Review Criteria

The agreed standards and expectations used to evaluate implementation quality.

---

### Review Scope

The submitted changes and their direct impact on the surrounding system.

---

### Review Outcome

The documented decision indicating whether the implementation is ready for integration or requires further work.

---

## Operating Procedure

1. Review the purpose and scope of the submitted changes.
2. Understand the associated requirements and acceptance criteria.
3. Verify alignment with approved architecture and design decisions.
4. Evaluate code readability, maintainability, and consistency.
5. Review correctness of business logic and implementation behaviour.
6. Verify compliance with coding, security, and documentation standards.
7. Assess potential impacts on reliability, performance, and maintainability.
8. Document findings with clear justification and suggested improvements.
9. Determine whether the implementation is ready for integration or requires revision.

---

## Outputs

Typical outputs include:

* Code review findings
* Review comments
* Improvement recommendations
* Approval decisions
* Requests for changes
* Review summaries
* Traceable review records

---

## Templates

Use templates when code review outcomes need to be documented consistently and traceably across implementation work.

### Primary Template

* `Implementation-Documentation-template.md` — use this template as a generic structure for capturing review context, findings, recommended changes, and traceability when a dedicated code review template is not available.

### Supporting Templates

* `Compliance-Summary-template.md` — use when review findings need to be linked to compliance or standards verification.
* `Architecture-Decision-Record-template.md` — use when review findings identify architecture-level decisions or significant technical trade-offs.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific review details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

## Interaction With Other Skills

Typically receives input from:

* Forge-Backend-Development
* Forge-Frontend-Development
* Forge-Database-Implementation
* Forge-API-Design
* Forge-Refactoring
* Forge-Debugging

May reference:

* Forge-Solution-Architecture
* Forge-Architecture-Decision-Records
* Forge-Threat-Modelling
* Forge-Requirements-Analysis
* Forge-Acceptance-Criteria

Often followed by:

* Forge-Refactoring
* Forge-Debugging
* Quality Assurance Skills
* Delivery Skills

---

## Standards Applied

Reviews should evaluate compliance with applicable:

* Coding Standards
* Architecture Standards
* Security Standards
* Documentation Standards
* API Standards
* Testing Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* Implementation satisfies approved requirements.
* Architectural decisions are respected.
* Code complies with applicable standards.
* Security concerns are identified where applicable.
* Readability and maintainability meet project expectations.
* Review findings are constructive, actionable, and traceable.
* The implementation is either approved with confidence or returned with justified recommendations.
* Review outcomes improve both software quality and engineering consistency.

---

## ForgeOS Principle

Code review is a quality assurance capability, not an approval ceremony.

Its purpose is to improve software quality, reduce long-term maintenance risk, verify alignment with approved designs, and strengthen engineering knowledge through objective, standards-based evaluation.
