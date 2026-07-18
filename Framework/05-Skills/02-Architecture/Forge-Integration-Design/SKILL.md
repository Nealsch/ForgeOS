# Forge-Integration-Design

```json
{
  "skill": "Forge-Integration-Design",
  "category": "02-Architecture",
  "purpose": "Forge-Integration-Design provides the capability to design how software components, systems and external services exchange information and coordinate behaviour. Its purpose is to create clear, reliable and maintainable interaction boundaries between systems before implementation begins. Effective integration design reduces complexity by defining responsibilities, communication patterns and data exchange expectations.",
  "outputs": [
    "text id=\"80fb0q\"\nIntegration Overview\n\nSystem Interaction Map\n\nCommunication Flows\n\nData Exchange Definitions\n\nIntegration Boundaries\n\nFailure Handling Considerations\n\nDependencies\n\nOpen Questions\n"
  ],
  "primaryTemplates": [
    "Integration-Design-template.md"
  ],
  "supportingTemplates": [
    "Architecture-Definition-template.md",
    "API-Specification-template.md"
  ]
}
```



## Purpose

Forge-Integration-Design provides the capability to design how software components, systems and external services exchange information and coordinate behaviour.

Its purpose is to create clear, reliable and maintainable interaction boundaries between systems before implementation begins.

Effective integration design reduces complexity by defining responsibilities, communication patterns and data exchange expectations.

---

# Responsibility

Forge-Integration-Design is responsible for:

* Identifying system interaction points
* Defining integration boundaries
* Designing communication flows
* Describing information exchange
* Identifying integration dependencies
* Considering reliability and failure handling
* Supporting consistent system interactions

Forge-Integration-Design does not:

* Implement APIs
* Select specific integration technologies without context
* Write integration code
* Configure infrastructure
* Replace security analysis

---

# When To Use

Apply Forge-Integration-Design when:

* Systems need to communicate
* External services are introduced
* Multiple application components interact
* Data must move between boundaries
* Integration complexity exists
* Existing integrations require redesign

---

# When Not To Use

Do not use Forge-Integration-Design when:

* No system interaction exists
* A simple internal function is being created
* Implementation details are already established
* Performing routine coding tasks

---

# Inputs

Forge-Integration-Design uses:

## Architecture Context

Including:

* System boundaries
* Components
* Responsibilities
* External dependencies

---

## Data Context

Including:

* Data models
* Information ownership
* Data exchange requirements

---

## Requirements

Including:

* User workflows
* Functional requirements
* Performance expectations
* Reliability expectations

---

# Integration Principles

## Clear Ownership

Each system or component should have clearly defined responsibilities.

Avoid unclear ownership of data or behaviour.

---

## Loose Coupling

Systems should interact through well-defined boundaries.

Changes in one system should minimise unnecessary impact on others.

---

## Explicit Contracts

Interactions should define:

* Expected inputs
* Expected outputs
* Behaviour
* Error conditions

---

## Reliable Communication

Integration design should consider:

* Failure scenarios
* Recovery approaches
* Availability expectations

---

## Appropriate Complexity

Use the simplest integration approach that satisfies requirements.

Avoid unnecessary distributed complexity.

---

# Integration Concepts

Forge-Integration-Design considers:

## System Boundaries

Identify:

* Internal components
* External systems
* Ownership boundaries

---

## Communication Patterns

Evaluate appropriate patterns such as:

* Request and response
* Event-based communication
* Asynchronous processing
* Scheduled exchange

---

## Data Exchange

Define:

* Information transferred
* Data ownership
* Transformation requirements
* Validation expectations

---

## Failure Handling

Consider:

* Communication failures
* Partial failures
* Retry behaviour
* Error reporting
* Recovery processes

---

# Operating Procedure

## Step 1: Identify Integration Requirements

Determine:

* Which systems communicate
* Why communication is required
* What outcomes are expected

---

## Step 2: Define Boundaries

Identify:

* System responsibilities
* Ownership areas
* Data boundaries

---

## Step 3: Design Information Exchange

Define:

* Information exchanged
* Direction of flow
* Frequency
* Ownership

---

## Step 4: Define Interaction Behaviour

Document:

* Expected requests
* Expected responses
* Success conditions
* Failure conditions

---

## Step 5: Evaluate Integration Risks

Consider:

* Dependency failures
* Data inconsistency
* Security exposure
* Performance concerns
* Operational complexity

---

## Step 6: Document Integration Approach

Capture:

* Integration overview
* Communication flows
* Responsibilities
* Constraints
* Open questions

---

# Outputs

Forge-Integration-Design produces:

```text id="80fb0q"
Integration Overview

System Interaction Map

Communication Flows

Data Exchange Definitions

Integration Boundaries

Failure Handling Considerations

Dependencies

Open Questions
```

---

## Templates

Use templates when integration design needs to be captured in a standard format that supports architecture, API and implementation work.

### Primary Template

* `Integration-Design-template.md` — use this template to document system interactions, communication flows, data exchanges, boundaries, failure handling and dependencies.

### Supporting Templates

* `Architecture-Definition-template.md` — use when integration design must remain consistent with the overall architecture.
* `API-Specification-template.md` — use when integration design and API contracts are closely aligned.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific integration details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Solution-Architecture

Defines the broader system structure.

```text id="6t92hl"
Solution Architecture
        |
        ▼
Forge-Integration-Design
```

---

## Forge-Data-Modelling

Provides information structures exchanged between systems.

```text id="xjz2hs"
Data Model
     |
     ▼
Integration Design
```

---

## Forge-Threat-Modelling

Evaluates risks created by system boundaries.

---

## Forge-API-Design

Future engineering capability that transforms integration requirements into implementation contracts.

---

## Forge-Deployment-Management

Uses integration requirements when preparing operational environments.

---

# Standards Applied

Forge-Integration-Design applies:

* Architecture Standards
* Security Standards
* Documentation Standards
* Deployment Standards

---

# Success Criteria

Forge-Integration-Design is successful when:

✓ System boundaries are clear

✓ Integration responsibilities are understood

✓ Data exchange is defined

✓ Communication expectations are documented

✓ Failure scenarios are considered

✓ Implementation teams understand interaction requirements

---

# ForgeOS Principle

Software rarely exists in isolation.

Forge-Integration-Design ensures systems work together intentionally through clear boundaries, responsibilities and communication patterns.
