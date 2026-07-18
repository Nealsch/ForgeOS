# Forge-Threat-Modelling

```json
{
  "skill": "Forge-Threat-Modelling",
  "category": "02-Architecture",
  "purpose": "Forge-Threat-Modelling provides the capability to identify, analyse and reduce potential security risks during system design. Its purpose is to incorporate security thinking into architecture decisions before implementation begins. Threat modelling enables teams to understand how systems may be misused, what assets require protection and what controls should be considered.",
  "outputs": [
    "text\nThreat Model\n\nAsset Inventory\n\nTrust Boundary Analysis\n\nThreat Identification\n\nRisk Assessment\n\nRecommended Mitigations\n\nResidual Risks\n"
  ],
  "primaryTemplates": [
    "Threat-Model-template.md"
  ],
  "supportingTemplates": [
    "Security-Risk-Assessment-template.md",
    "Architecture-Definition-template.md"
  ]
}
```



## Purpose

Forge-Threat-Modelling provides the capability to identify, analyse and reduce potential security risks during system design.

Its purpose is to incorporate security thinking into architecture decisions before implementation begins.

Threat modelling enables teams to understand how systems may be misused, what assets require protection and what controls should be considered.

---

# Responsibility

Forge-Threat-Modelling is responsible for:

* Identifying valuable system assets
* Identifying potential threats
* Analysing attack paths
* Evaluating security risks
* Recommending architectural controls
* Supporting secure design decisions
* Improving security awareness during development

Forge-Threat-Modelling does not:

* Perform penetration testing
* Replace security testing
* Perform vulnerability scanning
* Implement security controls
* Guarantee system security

---

# When To Use

Apply Forge-Threat-Modelling when:

* Designing a new system
* Introducing authentication or authorisation
* Handling sensitive information
* Adding external integrations
* Changing system boundaries
* Introducing new infrastructure
* Reviewing significant architectural changes

---

# When Not To Use

Do not use Forge-Threat-Modelling when:

* Performing routine code changes with no security impact
* Running automated security scans
* Fixing known implementation vulnerabilities
* Managing operational security incidents

---

# Inputs

Forge-Threat-Modelling uses:

## Architecture Context

Including:

* System boundaries
* Components
* Data flows
* Integration points

---

## Data Context

Including:

* Information assets
* Data ownership
* Data sensitivity
* Storage locations

---

## Requirements

Including:

* Security expectations
* Compliance requirements
* User roles
* Business risks

---

# Threat Modelling Principles

## Security Starts With Design

Security decisions should be considered before implementation.

---

## Protect What Matters

Focus analysis on:

* Valuable assets
* Important operations
* Critical dependencies

---

## Assume Misuse

Consider how systems may be:

* Misused accidentally
* Abused intentionally
* Accessed incorrectly

---

## Reduce Risk Through Design

Prefer architectural controls over relying only on later detection.

---

## Balance Security and Usability

Security controls should support the intended system purpose.

---

# Threat Modelling Concepts

## Assets

Identify what requires protection.

Examples:

* User information
* Credentials
* Business data
* System functionality
* Availability

---

## Threat Actors

Consider:

* External users
* Internal users
* Malicious actors
* Compromised systems

---

## Attack Surfaces

Identify exposed areas:

* Interfaces
* Integrations
* User inputs
* Authentication boundaries
* External dependencies

---

## Trust Boundaries

Identify where trust changes between:

* Users
* Applications
* Services
* Infrastructure
* External systems

---

## Threat Categories

Consider common threat types:

* Spoofing
* Tampering
* Repudiation
* Information disclosure
* Denial of service
* Elevation of privilege

---

# Operating Procedure

## Step 1: Understand System Context

Review:

* Architecture
* Components
* Data flows
* External dependencies

---

## Step 2: Identify Assets

Document:

* Important information
* Critical functions
* Required protections

---

## Step 3: Identify Trust Boundaries

Determine where:

* Access changes
* Data crosses boundaries
* External dependencies exist

---

## Step 4: Identify Threats

Analyse:

* Possible misuse
* Attack opportunities
* Failure scenarios

---

## Step 5: Assess Risk

Evaluate:

* Likelihood
* Impact
* Exposure
* Existing controls

---

## Step 6: Recommend Mitigations

Suggest:

* Architectural improvements
* Security controls
* Design changes

---

## Step 7: Document Outcomes

Capture:

* Identified threats
* Risk assessment
* Recommended actions
* Remaining risks

---

# Outputs

Forge-Threat-Modelling produces:

```text
Threat Model

Asset Inventory

Trust Boundary Analysis

Threat Identification

Risk Assessment

Recommended Mitigations

Residual Risks
```

---

## Templates

Use templates when threat modelling must be documented consistently and when risk, attack surface and mitigations need to be traceable.

### Primary Template

* `Threat-Model-template.md` — use this template to capture threats, assets, trust boundaries, risk assessment and mitigation recommendations.

### Supporting Templates

* `Security-Risk-Assessment-template.md` — use when a detailed security risk assessment is needed alongside the threat model.
* `Architecture-Definition-template.md` — use when threat modelling must remain aligned with the solution architecture.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific threat details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Solution-Architecture

Provides the system design being evaluated.

```text
Solution Architecture
        |
        ▼
Forge-Threat-Modelling
```

---

## Forge-Data-Modelling

Identifies information requiring protection.

---

## Forge-Integration-Design

Identifies external boundaries and communication risks.

---

## Forge-Security-Review

Future engineering capability for implementation-level security verification.

---

## Forge-Security-Testing

Validates implemented security controls.

---

# Standards Applied

Forge-Threat-Modelling applies:

* Security Standards
* Architecture Standards
* Documentation Standards

---

# Success Criteria

Forge-Threat-Modelling is successful when:

✓ Important assets are identified

✓ Trust boundaries are understood

✓ Potential threats are documented

✓ Security risks are visible

✓ Mitigations are considered

✓ Architecture decisions account for security impact

---

# ForgeOS Principle

Security should be designed into systems, not added after problems appear.

Forge-Threat-Modelling ensures security considerations influence architecture before implementation begins.
