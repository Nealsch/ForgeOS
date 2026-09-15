# Forge-Authentication

```json
{
  "skill": "Forge-Authentication",
  "category": "03-Engineering",
  "purpose": "Forge-Authentication provides the capability to implement identity verification — establishing and proving who a user or system is — during the Develop phase: credential handling, session establishment, token issuance and validation, multi-factor flows and identity-provider integration, per the identity requirements set by design, while remaining independent of any identity platform or protocol library.",
  "outputs": [
    "Implemented authentication flows satisfying design requirements",
    "Identity-relevant implementation decisions with traceability",
    "Findings and questions fed to Forge-Security-Review"
  ],
  "primaryTemplates": [
    "Implementation-Documentation-template.md"
  ],
  "supportingTemplates": [
    "Security-Risk-Assessment-template.md"
  ]
}
```

## Purpose

Forge-Authentication owns the **implementation moment** of identity: the design says who must be verified and how strongly; this Skill makes it real in code. Authorisation — what an authenticated identity may do — is a separate concern: design-level authorisation models are forged in Forge-Threat-Modelling and Forge-API-Design, and server-side enforcement discipline is owned by Forge-Secure-Coding. This Skill implements the verification half.

It is technology-independent: protocols and identity providers are project decisions. Used primarily by the **Backend Engineer** and **Full-Stack Engineer** during **Develop**; consumed by Forge-Security-Review and Forge-Security-Testing.

---

# Responsibility

Forge-Authentication is responsible for:

* Implementing credential verification per design requirements: hashing via vetted platform primitives, never custom schemes.
* Implementing session establishment and lifecycle: secure session identifiers, expiry, invalidation on privilege or password change.
* Implementing token issuance and validation with signature, audience and lifetime checks.
* Implementing multi-factor verification flows where the design requires them.
* Integrating external identity providers per the project's chosen pattern, without weakening locally-owned checks.
* Implementing authentication failure behaviour: uniform responses, rate-limit hooks, no user-enumeration signals.
* Recording identity-relevant implementation decisions with traceability to design requirements.
* Feeding authentication findings to Forge-Security-Review and test hooks to Forge-Automated-Test-Authoring.

It does **not**:

* Decide authorisation policy or enforce authorisation decisions (Forge-Secure-Coding C1; design via Forge-Threat-Modelling / Forge-API-Design).
* Select the identity platform, protocol stack or libraries (Project Documentation).
* Operate the identity infrastructure in production (09-Operations skills).
* Review or penetration-test the implementation (Forge-Security-Review / Forge-Security-Testing).

---

# When To Use

* During **Develop**, whenever user or system identity must be established.
* When integrating or replacing an identity-provider integration.
* When adding multi-factor verification to existing flows.

# When Not To Use

* To model authorisation, roles or permissions — Forge-Secure-Coding (enforcement) and Forge-Threat-Modelling / Forge-API-Design (design).
* To manage secrets and credentials lifecycle — Forge-Secrets-Management.
* To review implemented authentication — Forge-Security-Review; to test it — Forge-Security-Testing.

---

# Inputs

* Identity and access requirements from design (Forge-Threat-Modelling, Forge-API-Design).
* ForgeOS Security Standard (zero-trust, least-privilege principles).
* Project decisions on identity platform and protocols.
* Session and token policies from the design artefacts.

# Method

## Step 1 — Read Requirements
Confirm verification strength, session policy, and provider pattern from the design artefacts; raise gaps before coding.

## Step 2 — Implement Verification
Implement credential checks with vetted primitives; uniform failure responses; no enumeration signals.

## Step 3 — Implement Sessions And Tokens
Enforce identifier entropy, expiry, invalidation, and signature/audience/lifetime validation on tokens.

## Step 4 — Implement Factors
Where required, add additional verification factors per the design's flows.

## Step 5 — Integrate Provider
Wire external identity provider(s) per the project pattern; never bypass local validation for convenience.

## Step 6 — Harden Failure Paths
Add rate-limit hooks, logging per observability requirements, and safe recovery flows.

## Step 7 — Record And Hand Over
Record decisions with requirement traceability; hand findings to Forge-Security-Review and behaviours to test authoring.

---

# Outputs

* Implemented authentication flows satisfying design requirements.
* Traceable identity implementation decisions.
* Findings for Forge-Security-Review; test hooks for Forge-Automated-Test-Authoring.

---

# Standards Applied

* ForgeOS Security Standard (parent)
* OWASP Authentication Cheat Sheet and ASVS authentication/identity management sections (requirement levels)
* Coding Standards

---

# Interaction With Other Skills

* **Forge-Threat-Modelling / Forge-API-Design** — supply identity requirements this Skill implements.
* **Forge-Secure-Coding** — owns authorisation enforcement and general security discipline; authentication implements the "who", authorisation enforces the "may".
* **Forge-Secrets-Management** — owns credential and key lifecycle this Skill consumes.
* **Forge-Security-Review / Forge-Security-Testing** — verify and test the implementation.
* **Forge-Automated-Test-Authoring** — authors authentication behaviour tests.

---

# Tooling Landscape (Illustrative, Non-Normative)

Standards-based federation patterns (assertion-exchange and declaration-based verification patterns) exemplify the *pattern* of delegated identity verification. Identity platforms and protocol libraries are project decisions — named exemplars live in Project Documentation, never here.

---

# Tooling Boundary

This Skill defines authentication implementation discipline and selection criteria, never platform or library mandates. Concrete identity providers, protocol libraries and multi-factor services belong to **Project Documentation**. Any named technology is illustrative, swappable without Framework changes, and never referenced normatively (per the ADR-008 boundary discipline).

---

# Success Criteria

Forge-Authentication is successful when:

* Identity verification satisfies the design's strength requirements with no custom cryptography.
* Sessions and tokens enforce entropy, expiry, invalidation and validation checks.
* Failure paths leak nothing — no enumeration, no bypass, no silent fallback.
* Every implementation decision traces to a design requirement or ASVS reference.
* Residual concerns reach Forge-Security-Review before the phase gate.
