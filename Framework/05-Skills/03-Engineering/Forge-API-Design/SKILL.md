# Forge-API-Design

```json
{
  "skill": "Forge-API-Design",
  "category": "03-Engineering",
  "purpose": "Forge-API-Design provides the capability to design clear, consistent and maintainable interfaces between software systems and components. Its purpose is to define API contracts that enable reliable communication between consumers and providers while supporting security, usability and future evolution. A well-designed API creates a stable boundary between implementation details and system capabilities.",
  "outputs": [
    "text\nAPI Contract\n\nEndpoint or Operation Definitions\n\nRequest Models\n\nResponse Models\n\nError Definitions\n\nAuthentication Requirements\n\nUsage Documentation\n\nVersioning Considerations\n"
  ],
  "primaryTemplates": [
    "API-Specification-template.md"
  ],
  "supportingTemplates": [
    "Integration-Design-template.md",
    "Architecture-Definition-template.md"
  ]
}
```



## Purpose

Forge-API-Design provides the capability to design clear, consistent and maintainable interfaces between software systems and components.

Its purpose is to define API contracts that enable reliable communication between consumers and providers while supporting security, usability and future evolution.

A well-designed API creates a stable boundary between implementation details and system capabilities.

---

# Responsibility

Forge-API-Design is responsible for:

* Defining API contracts
* Designing resource and operation structures
* Establishing request and response expectations
* Defining error behaviour
* Supporting consistency across interfaces
* Considering security and performance requirements
* Supporting API maintainability

Forge-API-Design does not:

* Implement API code
* Select frameworks without project context
* Configure API infrastructure
* Replace integration design
* Replace security testing

---

# When To Use

Apply Forge-API-Design when:

* Creating a new API
* Extending an existing API
* Designing system boundaries
* Creating external integrations
* Exposing application capabilities
* Defining contracts between components

---

# When Not To Use

Do not use Forge-API-Design when:

* Building internal functions with no interface boundary
* Making minor implementation changes
* Writing routine business logic
* Performing API infrastructure operations

---

# Inputs

Forge-API-Design uses:

## Requirements

Including:

* User needs
* Functional requirements
* Business workflows
* Acceptance criteria

---

## Architecture Context

Including:

* System boundaries
* Component responsibilities
* Integration requirements

---

## Data Context

Including:

* Data models
* Information ownership
* Data relationships

---

## Security Context

Including:

* Authentication requirements
* Authorisation requirements
* Data protection requirements

---

# API Design Principles

## Clear Contracts

APIs should clearly define:

* Available operations
* Required inputs
* Expected outputs
* Possible failures

---

## Consistency

Similar capabilities should follow similar patterns.

Consistency reduces learning effort and implementation errors.

---

## Simplicity

APIs should expose only what consumers need.

Avoid unnecessary complexity.

---

## Stability

API changes should consider existing consumers.

Breaking changes require deliberate management.

---

## Separation of Concerns

API interfaces should expose capabilities, not internal implementation details.

---

## Secure by Design

APIs should consider:

* Authentication
* Authorisation
* Input validation
* Data exposure
* Abuse prevention

---

# API Design Concepts

## Resources and Capabilities

Define:

* What the API provides
* Which entities or capabilities are exposed
* Consumer expectations

---

## Request Design

Consider:

* Required information
* Optional information
* Validation rules
* Input constraints

---

## Response Design

Consider:

* Response structure
* Data completeness
* Consistency
* Consumer needs

---

## Error Handling

Define:

* Error categories
* Error information
* Recovery expectations

Errors should help consumers respond appropriately without exposing unnecessary internal details.

---

## Versioning

Consider:

* API evolution
* Compatibility
* Migration approaches

---

## Documentation

API contracts should be understandable by:

* Developers
* Integrators
* Future maintainers
* AI agents

---

# Operating Procedure

## Step 1: Understand API Purpose

Identify:

* Why the API exists
* Who consumes it
* What capability it provides

---

## Step 2: Define Contract Boundaries

Document:

* Available operations
* Inputs
* Outputs
* Responsibilities

---

## Step 3: Define Data Exchange

Specify:

* Data structures
* Validation rules
* Relationships
* Constraints

---

## Step 4: Define Behaviour

Document:

* Expected success scenarios
* Failure scenarios
* Edge cases

---

## Step 5: Review Security Considerations

Evaluate:

* Authentication
* Authorisation
* Data exposure
* Abuse scenarios

---

## Step 6: Validate Design

Confirm:

* Requirements are satisfied
* Consumers can use the API effectively
* Future changes are considered

---

# Outputs

Forge-API-Design produces:

```text
API Contract

Endpoint or Operation Definitions

Request Models

Response Models

Error Definitions

Authentication Requirements

Usage Documentation

Versioning Considerations
```

---

## Templates

Use templates when API design needs to be captured consistently for implementation, integration and documentation.

### Primary Template

* `API-Specification-template.md` — use this template to document API contracts, endpoint definitions, request and response models, error handling, authentication and versioning.

### Supporting Templates

* `Integration-Design-template.md` — use when API design is part of broader integration work.
* `Architecture-Definition-template.md` — use when API design must remain aligned with the solution architecture.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific API details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Integration-Design

Defines broader system communication requirements.

```text
Integration Design
        |
        ▼
Forge-API-Design
```

---

## Forge-Data-Modelling

Provides data structures exposed through APIs.

---

## Forge-Authentication

Provides identity and access requirements.

---

## Forge-Backend-Development

Uses API designs for implementation.

---

## Forge-Testing

Uses API contracts to define verification scenarios.

---

# Standards Applied

Forge-API-Design applies:

* Architecture Standards
* Coding Standards
* Security Standards
* Documentation Standards
* Testing Standards

---

# Success Criteria

Forge-API-Design is successful when:

✓ API purpose is clear

✓ Consumer expectations are understood

✓ Contracts are documented

✓ Data exchange is defined

✓ Errors are predictable

✓ Security considerations are included

✓ Implementation can proceed without ambiguity

---

# ForgeOS Principle

An API is a promise between systems.

Forge-API-Design ensures that promise is intentional, understandable and maintainable before implementation begins.

