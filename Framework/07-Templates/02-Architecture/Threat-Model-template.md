---
purpose: Capture identified threats, risks, and mitigation recommendations for the system design.
when_used: After the solution architecture is defined and security review is required.
produced_by: Forge-Threat-Modelling
consumed_by:
  - Forge-Solution-Architecture
  - Forge-Backend-Development
  - Forge-Frontend-Development
  - Forge-API-Design
  - Security Engineer
category: 02-Architecture
template_type: primary
---

# Threat Model

## Purpose

Document security threats, risk assessments, and mitigation recommendations for the proposed solution.

## When Used

Use this template once the architecture is defined and before implementation or security review.

## Produced By

Forge-Threat-Modelling or equivalent threat modelling activity.

## Consumed By

* Architects
* Engineers
* Security reviewers
* QA

## Template

### Asset Inventory

List the assets, data stores, and components that require protection.

### Trust Boundaries

Identify boundaries between trusted and untrusted zones.

### Threat Identification

Capture potential threats, attack vectors, and abuse cases.

### Risk Assessment

Assess likelihood, impact, and risk level for each threat.

### Recommended Mitigations

Document the controls, design changes, or compensating measures for each identified risk.

### Residual Risks

List any remaining risks that are accepted or require further monitoring.

## Completion Criteria

* Threats are identified for the relevant architecture and data flows.
* Risks are assessed and classified.
* Mitigations are documented and linked to threats.
* Residual risks are recorded.
* The document supports security review and implementation decisions.
