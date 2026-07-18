---
purpose: Capture the system data model in a structured format that supports design, implementation, and data consistency.
when_used: After the solution architecture is defined and before data implementation begins.
produced_by: Forge-Data-Modelling
consumed_by:
  - Forge-Backend-Development
  - Forge-Database-Implementation
  - Forge-API-Design
  - Forge-Test-Strategy
category: 02-Architecture
template_type: primary
---

# Data Model

## Purpose

Document the key entities, relationships, and data constraints needed to support the solution.

## When Used

Use this template once the architecture is defined and data structures must be designed for implementation.

## Produced By

Forge-Data-Modelling or equivalent data modelling activity.

## Consumed By

* Architects
* Database engineers
* Backend developers
* API designers

## Template

### Data Model Overview

Describe the purpose of the data model and the business context it supports.

### Entities

List the primary entities and their responsibilities.

### Attributes

For each entity, describe the key attributes and their meaning.

### Relationships

Define relationships between entities and cardinality.

### Data Constraints

Capture constraints such as required fields, uniqueness, and referential integrity.

### Business Rules

Document rules that govern data behaviour and validation.

### Lifecycle Considerations

Note creation, modification, retention, and deletion behaviour where relevant.

## Completion Criteria

* The data model is clearly documented.
* Entities, attributes, and relationships are defined.
* Constraints and business rules are documented.
* The model is aligned with the architecture and requirements.
* The document supports implementation and review.
