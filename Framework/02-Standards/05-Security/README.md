# ForgeOS Security Standard

## Purpose

The ForgeOS Security Standard defines the foundational security principles of the ForgeOS framework.

Security is a fundamental engineering responsibility that must be considered throughout the Software Development Lifecycle (SDLC). This standard establishes the minimum security expectations for every ForgeOS project, regardless of technology stack, deployment environment or application type.

It serves as the parent security standard from which all specialised security standards derive.

---

# Security Standards Hierarchy

This document defines the enduring security philosophy of ForgeOS.

Detailed security guidance is provided through specialised security standards that support different engineering activities and phases of the Software Development Lifecycle.

Current security standards include:

* OWASP ASVS Standard
* OWASP WSTG Standard
* OWASP Proactive Controls
* OWASP Cheat Sheets
* OWASP Top 10

As ForgeOS evolves, additional security standards may be adopted where they provide recognised industry best practices.

ForgeOS Skills reference these standards as required, ensuring that security guidance remains modular, maintainable and aligned with industry-recognised practices.

---

# Security Philosophy

Security is designed into software—it is never added afterwards.

Every engineering decision should consider its impact on confidentiality, integrity, availability, authenticity, accountability and resilience.

Where security and convenience conflict, security takes precedence unless an explicit, documented decision is made to accept the associated risk.

Security is a continuous engineering activity that spans requirements, architecture, implementation, testing, deployment and operations.

---

# Security Principles

## 1. Secure by Design

Security shall be considered from the earliest stages of design.

Architectural, implementation and operational decisions should minimise risk rather than compensate for it later.

---

## 2. Least Privilege

Every user, service, process and component should operate with only the permissions required to perform its intended function.

Permissions should be granted explicitly and reviewed regularly.

---

## 3. Defence in Depth

No single security control should be relied upon to protect a system.

Security should be implemented through multiple complementary layers including authentication, authorisation, validation, encryption, monitoring and auditing.

---

## 4. Zero Trust

Never trust users, devices, networks or external systems by default.

Every request should be authenticated, authorised and validated regardless of its origin.

---

## 5. Validate All External Input

All externally supplied data should be treated as untrusted.

Input should be validated, sanitised where appropriate and rejected when it does not conform to expected formats or business rules.

---

## 6. Protect Sensitive Information

Sensitive information should be protected throughout its lifecycle.

Secrets, credentials, cryptographic keys and personal information should never be exposed unnecessarily or stored insecurely.

---

## 7. Minimise the Attack Surface

Every exposed service, dependency, endpoint and permission increases risk.

Only functionality that delivers demonstrable value should be included.

Unused code, services, dependencies and interfaces should be removed.

---

## 8. Every Dependency Is a Security Decision

Every third-party dependency introduces trust, operational and supply-chain risk.

Before introducing a dependency:

* Verify that it is necessary.
* Prefer mature and actively maintained projects.
* Minimise transitive dependencies.
* Continuously monitor for vulnerabilities.
* Remove unused dependencies promptly.

---

## 9. Fail Securely

Systems should fail in a manner that preserves security.

Errors should not expose sensitive information, weaken security controls or leave the system in an insecure state.

---

## 10. Security Is Continuously Verified

Security is an ongoing engineering activity.

Projects should continuously review, monitor, test and improve their security posture throughout the software lifecycle.

Verification should be proportionate to system risk and aligned with recognised security standards.

---

# Applying Security Standards

Not every security standard applies equally to every engineering activity.

ForgeOS Skills are responsible for selecting and applying the appropriate security standards based on the capability being performed.

Typical examples include:

| ForgeOS Skill              | Applicable Security Standards                                           |
| -------------------------- | ----------------------------------------------------------------------- |
| Forge-Threat-Modelling     | ForgeOS Security Standard, OWASP ASVS                                   |
| Forge-Backend-Development  | ForgeOS Security Standard, OWASP Proactive Controls, OWASP Cheat Sheets |
| Forge-Frontend-Development | ForgeOS Security Standard, OWASP Proactive Controls, OWASP Cheat Sheets |
| Forge-Code-Review          | ForgeOS Security Standard, OWASP ASVS, OWASP Cheat Sheets               |
| Forge-Test-Strategy        | ForgeOS Security Standard, OWASP WSTG                                   |
| Forge-Quality-Assurance    | ForgeOS Security Standard, OWASP WSTG                                   |
| Forge-Defect-Management    | ForgeOS Security Standard, OWASP WSTG                                   |

This approach allows ForgeOS to load only the security knowledge required for the task being performed while maintaining consistent security expectations across the Software Development Lifecycle.

---

# Relationship to Other Standards

This standard establishes the overarching security expectations for all ForgeOS projects.

It complements:

* Architecture Standards
* Coding Standards
* Documentation Standards
* Testing Standards
* Deployment Standards

It is further supported by specialised security standards including:

* OWASP ASVS Standard
* OWASP WSTG Standard
* OWASP Proactive Controls
* OWASP Cheat Sheets
* OWASP Top 10

Security is the responsibility of every Agent and applies throughout every Workflow phase.

---

# Immutable Engineering Knowledge

This standard defines enduring security principles.

Specialised security standards provide implementation-independent security guidance.

Project-specific security decisions—including authentication mechanisms, authorisation models, infrastructure, cloud providers, cryptographic libraries, deployment architecture and regulatory compliance requirements—belong within the project rather than within the ForgeOS framework.

This separation ensures that ForgeOS remains technology-independent while allowing projects to adopt the security controls appropriate to their specific context.

---

# ForgeOS Principle

Security is a continuous engineering responsibility, not a phase, feature or checklist.

ForgeOS embeds security throughout the Software Development Lifecycle by combining enduring security principles with recognised industry standards. Every Skill applies the security guidance appropriate to its responsibility, ensuring that security is designed, implemented, verified and continuously improved as an integral part of software engineering.
