# Forge-Solution-Architecture

```json
{
  "skill": "Forge-Solution-Architecture",
  "category": "02-Architecture",
  "purpose": "Forge-Solution-Architecture provides the capability to design a complete software solution that satisfies defined requirements while balancing quality, maintainability, security, scalability and operational needs. Its purpose is to transform understood requirements into a technology-independent architectural blueprint that guides implementation decisions. Solution architecture establishes the structure of the system before detailed development begins.",
  "outputs": [
    "text\nArchitecture Overview\n\nSystem Context\n\nComponent Model\n\nSystem Boundaries\n\nData Flow Description\n\nIntegration Overview\n\nArchitectural Considerations\n\nRisks\n\nOpen Questions\n\nRecommended Approach\n"
  ],
  "primaryTemplates": [
    "Architecture-Definition-template.md"
  ],
  "supportingTemplates": [
    "Data-Model-template.md",
    "Integration-Design-template.md"
  ]
}
```



## Purpose

Forge-Solution-Architecture provides the capability to design a complete software solution that satisfies defined requirements while balancing quality, maintainability, security, scalability and operational needs.

Its purpose is to transform understood requirements into a technology-independent architectural blueprint that guides implementation decisions.

Solution architecture establishes the structure of the system before detailed development begins.

---

# Responsibility

Forge-Solution-Architecture is responsible for:

* Defining system boundaries
* Identifying major components
* Describing component relationships
* Evaluating architectural approaches
* Defining key system interactions
* Identifying architectural risks
* Supporting technical decision-making
* Establishing a foundation for detailed design

Forge-Solution-Architecture does not:

* Implement software
* Replace detailed technical design
* Select technologies without justification
* Define coding conventions
* Override business requirements

---

# When To Use

Apply Forge-Solution-Architecture when:

* Starting a new software project
* Designing significant new capabilities
* Introducing major system changes
* Multiple technical approaches exist
* System complexity requires planning
* Integration between systems is required
* Scalability or operational concerns exist

---

# When Not To Use

Do not use Forge-Solution-Architecture when:

* Requirements are not understood
* The task is a small isolated change
* Implementation details are already established
* A coding-level design decision is required

---

# Inputs

Forge-Solution-Architecture uses:

## Requirements

Including:

* Functional requirements
* Non-functional requirements
* Acceptance criteria
* Constraints
* Business objectives

---

## Project Context

Including:

* Existing architecture
* Previous decisions
* Domain knowledge
* Technology constraints
* Operational requirements

---

## Applicable Standards

Including:

* Architecture Standards
* Security Standards
* Deployment Standards
* Design Standards

---

# Architecture Principles

## Separation of Concerns

System responsibilities should be clearly separated.

---

## Simplicity

Prefer the simplest architecture that satisfies requirements.

Avoid unnecessary complexity.

---

## Maintainability

Architecture should support:

* Change
* Understanding
* Testing
* Extension

---

## Security by Design

Security considerations should be included from the beginning.

---

## Appropriate Scalability

Architecture should support expected growth without unnecessary over-engineering.

---

## Technology Independence

Architectural decisions should focus on capabilities and responsibilities before implementation technologies.

---

# Operating Procedure

## Step 1: Understand Requirements

Review:

* User needs
* System capabilities
* Constraints
* Quality expectations

Confirm architectural objectives.

---

## Step 2: Define System Context

Identify:

* System purpose
* Users
* External systems
* Major interactions
* Boundaries

Document what is inside and outside the system.

---

## Step 3: Identify Major Components

Define:

* Core capabilities
* Major subsystems
* Responsibilities
* Relationships

Avoid premature implementation detail.

---

## Step 4: Define System Interactions

Describe:

* Data flows
* Communication patterns
* Dependencies
* Integration points

---

## Step 5: Evaluate Architectural Options

Where multiple approaches exist:

Analyse:

* Benefits
* Limitations
* Risks
* Long-term impact

Use evidence-based reasoning.

---

## Step 6: Identify Architectural Risks

Consider:

* Security risks
* Scalability risks
* Reliability concerns
* Operational complexity
* Maintainability concerns

---

## Step 7: Produce Architecture Definition

Document:

* Architectural overview
* System boundaries
* Components
* Interactions
* Constraints
* Key decisions

---

# Outputs

Forge-Solution-Architecture produces:

```text
Architecture Overview

System Context

Component Model

System Boundaries

Data Flow Description

Integration Overview

Architectural Considerations

Risks

Open Questions

Recommended Approach
```

---

## Templates

Use templates when the solution architecture needs to be documented clearly and aligned with downstream implementation, data, integration, and security activities.

### Primary Template

* `Architecture-Definition-template.md` — use this template to capture the architecture overview, system context, component model, boundaries, data flows, integration expectations and architectural considerations.

### Supporting Templates

* `Data-Model-template.md` — use when architecture depends on a data model definition.
* `Integration-Design-template.md` — use when architecture must explicitly link to integration behaviour and communication flows.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific architecture details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Requirements-Analysis

Provides validated requirements.

```text
Forge-Requirements-Analysis
            |
            ▼
Forge-Solution-Architecture
```

---

## Forge-Architecture-Decision-Records

Captures significant architectural choices.

```text
Architecture Decision
          |
          ▼
Forge-Architecture-Decision-Records
```

---

## Forge-Threat-Modelling

Analyses security risks introduced by architecture.

---

## Forge-Data-Modelling

Defines information structures where required.

---

## Forge-Integration-Design

Defines system communication patterns.

---

# Standards Applied

Forge-Solution-Architecture applies:

* Architecture Standards
* Security Standards
* Documentation Standards
* Deployment Standards
* Design Standards

---

# Success Criteria

Forge-Solution-Architecture is successful when:

✓ System purpose is understood

✓ Boundaries are defined

✓ Major components are identified

✓ Responsibilities are clear

✓ Key risks are understood

✓ Architectural decisions are documented

✓ Development has a clear technical direction

---

# ForgeOS Principle

Good architecture creates clarity before complexity.

Forge-Solution-Architecture ensures software is intentionally designed before implementation begins.
