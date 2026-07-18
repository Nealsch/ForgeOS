# Forge-Test-Strategy

```json
{
  "skill": "Forge-Test-Strategy",
  "category": "04-Quality",
  "purpose": "Provide a structured capability for defining how software quality will be verified throughout the Software Development Lifecycle (SDLC). This Skill establishes the overall testing approach, scope, objectives, quality goals, test levels, responsibilities, and risk-based priorities that guide all subsequent testing activities. It ensures that testing is planned strategically rather than performed as a collection of isolated activities.",
  "primaryTemplates": [
    "Test-Strategy-template.md"
  ],
  "supportingTemplates": [
    "Test-Plan-template.md",
    "Project-Definition-template.md"
  ]
}
```



## Purpose

Provide a structured capability for defining how software quality will be verified throughout the Software Development Lifecycle (SDLC).

This Skill establishes the overall testing approach, scope, objectives, quality goals, test levels, responsibilities, and risk-based priorities that guide all subsequent testing activities.

It ensures that testing is planned strategically rather than performed as a collection of isolated activities.

---

## Responsibility

Forge-Test-Strategy is responsible for defining the overall approach to software verification and validation.

It determines what will be tested, why it will be tested, how confidence will be established, and how testing activities align with project objectives, quality expectations, and business risk.

This Skill defines the testing strategy. It does not create detailed test plans, test cases, or execute tests.

---

## When To Use

Use this Skill when:

* Initiating a new project
* Defining the quality approach for a product
* Planning a release
* Establishing testing objectives
* Determining appropriate test levels
* Selecting verification approaches
* Identifying quality risks
* Defining responsibilities for testing activities
* Reviewing or improving an existing testing approach

---

## When Not To Use

Do not use this Skill when:

* Designing individual test cases
* Preparing detailed test execution schedules
* Automating specific tests
* Executing tests
* Recording defects
* Debugging software
* Performing code reviews

These activities belong to their respective ForgeOS Skills.

---

## Inputs

Typical inputs include:

* Business objectives
* Project vision
* Functional requirements
* Non-functional requirements
* User stories
* Acceptance criteria
* Solution architecture
* Risk assessments
* Regulatory or compliance requirements
* Organisational quality standards
* Project constraints

---

## Principles

### Quality Is Planned

Quality should be designed into the development process rather than inspected after implementation.

---

### Risk Drives Testing

Testing effort should be prioritised according to business impact, technical complexity, likelihood of failure, and operational risk.

---

### Verify at Multiple Levels

Confidence is achieved through complementary testing activities performed at appropriate levels throughout the system.

---

### Test Early

Testing considerations should begin during requirements and design rather than after implementation.

---

### Balance Cost and Confidence

Testing should provide sufficient confidence while making effective use of available time and resources.

---

### Maintain Traceability

Testing objectives should remain traceable to requirements, risks, and acceptance criteria.

---

### Continuous Feedback

Testing should provide actionable information that supports continuous improvement throughout development.

---

### Independence Where Appropriate

Critical verification activities benefit from objective assessment independent of implementation where practical.

---

## Concepts

### Test Strategy

The high-level approach that defines how quality will be achieved and verified.

---

### Test Levels

Logical stages of verification that collectively provide confidence in system quality.

Examples include component, integration, system, and acceptance testing.

---

### Risk-Based Testing

The prioritisation of testing activities according to the likelihood and impact of potential failures.

---

### Quality Objectives

The measurable outcomes that testing seeks to demonstrate.

---

### Exit Criteria

The conditions that indicate sufficient confidence has been achieved for a development phase or release.

---

## Operating Procedure

1. Understand business objectives and project goals.
2. Review functional and non-functional requirements.
3. Identify quality risks and critical system areas.
4. Define the overall testing objectives.
5. Determine appropriate test levels and verification approaches.
6. Establish quality goals and success criteria.
7. Define responsibilities and ownership for testing activities.
8. Define entry and exit criteria for major testing phases.
9. Document and communicate the agreed testing strategy.

---

## Outputs

Typical outputs include:

* Test strategy
* Quality objectives
* Risk-based testing priorities
* Test level definitions
* Entry and exit criteria
* Testing scope
* Testing responsibilities
* Verification approach

---

## Templates

Use templates when quality strategy documentation must be captured consistently and aligned with testing, architecture and delivery activities.

### Primary Template

* `Test-Strategy-template.md` — use this template to document the overall testing approach, scope, objectives, test levels, and risk-based priorities.

### Supporting Templates

* `Test-Plan-template.md` — use when the test strategy is directly informing detailed test planning.
* `Project-Definition-template.md` — use when strategy documentation must remain aligned with project objectives.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific quality strategy details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

## Interaction With Other Skills

Typically receives input from:

* Forge-Requirements-Analysis
* Forge-User-Story-Definition
* Forge-Acceptance-Criteria
* Forge-Solution-Architecture
* Forge-Threat-Modelling
* Forge-Prioritisation

Provides guidance for:

* Forge-Test-Planning
* Forge-Test-Case-Design
* Forge-Test-Automation
* Forge-Quality-Assurance
* Forge-Quality-Control
* Forge-Defect-Management
* Forge-Test-Reporting

---

## Standards Applied

Test strategies should align with applicable:

* Quality Standards
* Testing Standards
* Security Standards
* Architecture Standards
* Risk Management Standards
* Documentation Standards
* Governance

---

## Success Criteria

The Skill is successfully applied when:

* Testing objectives align with business goals.
* Testing scope is clearly defined.
* Risks drive testing priorities.
* Appropriate test levels are identified.
* Quality objectives are measurable.
* Entry and exit criteria are established.
* Responsibilities are clearly defined.
* The strategy provides a coherent framework for all subsequent testing activities.

---

## ForgeOS Principle

Test strategy defines **how confidence will be established**, not how individual tests are performed.

A well-defined strategy ensures that testing is purposeful, risk-driven, traceable to business objectives, and integrated throughout the SDLC, providing a consistent foundation for all quality assurance activities.
