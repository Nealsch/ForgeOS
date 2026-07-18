---
purpose: Capture the API contract, endpoints, data models, and usage expectations in a standard format.
when_used: After integration and solution architecture are defined and before API implementation begins.
produced_by: Forge-API-Design
consumed_by:
  - Forge-Backend-Development
  - Forge-Frontend-Development
  - Forge-Test-Strategy
  - Forge-Code-Review
category: 03-Engineering
template_type: primary
---

# API Specification

## Purpose

Define the API contract and expected behaviour so implementation and integration are aligned.

## When Used

Use this template when the API design is ready to be documented for development, review, and testing.

## Produced By

Forge-API-Design or equivalent API design activity.

## Consumed By

* Backend engineers
* Frontend engineers
* QA
* Integration partners

## Template

### API Overview

Summarise the purpose, scope, and intended consumers of the API.

### Endpoints or Operations

For each endpoint or operation, capture:

* Name
* Path
* Method
* Description
* Inputs
* Outputs
* Status codes
* Authentication/authorization requirements
* Validation rules

### Data Models

Define the request and response data structures and key fields.

### Error Handling

Describe the expected error responses and handling behaviour.

### Versioning

Document any versioning strategy or compatibility considerations.

### Usage Examples

Provide examples for common request and response scenarios.

## Completion Criteria

* The API contract is documented clearly.
* Endpoints and data models are defined.
* Authentication and error handling behaviour are described.
* Usage expectations are clear enough for implementation and testing.
