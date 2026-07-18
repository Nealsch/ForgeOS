---
purpose: Capture the integration approach, interfaces, and communication expectations between systems.
when_used: After the architecture is defined and before detailed integration or implementation work begins.
produced_by: Forge-Integration-Design
consumed_by:
  - Forge-Backend-Development
  - Forge-Frontend-Development
  - Forge-API-Design
  - Forge-Test-Strategy
category: 02-Architecture
template_type: primary
---

# Integration Design

## Purpose

Document how systems and components will interact, exchange data, and handle failures.

## When Used

Use this template when defining integration boundaries, protocols, and expectations for connected systems.

## Produced By

Forge-Integration-Design or equivalent integration design activity.

## Consumed By

* Architects
* Engineers
* QA
* Operations

## Template

### Integration Overview

Describe the objective of the integration and the systems involved.

### System Interaction Map

List the systems, subsystems, and external services involved in the integration.

### Communication Flows

Define the key interactions and the flow of data between systems.

### Data Exchange Definitions

Document the data formats, payloads, and contracts used by each integration point.

### Integration Boundaries

Clarify what is in scope and out of scope for each integration.

### Failure Handling Considerations

Describe how errors, retries, and fallback behaviour should be handled.

### Dependencies

List any dependencies, configuration requirements, or sequencing constraints.

### Open Questions

Capture unknowns that require clarification before implementation.

## Completion Criteria

* The integration approach is clearly documented.
* System interactions and data flows are defined.
* Communication expectations and error handling are captured.
* Dependencies and open questions are recorded.
