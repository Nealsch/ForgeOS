# OWASP ASVS — ForgeOS Application Standard

## Authority and Purpose

The **OWASP Application Security Verification Standard (ASVS)** is the authoritative source for *what to verify* in a secure application. It provides a catalogue of security requirements and verification levels that a system can be assessed against.

It sets the **goal**: applications must demonstrably satisfy defined security requirements, at a level of rigour appropriate to their risk.

This document does **not** reproduce ASVS requirements. It defines how ForgeOS adopts ASVS across:

1. Secure by Design architecture
2. Secure development
3. Secure testing
4. Software supply chain risk management

The canonical source remains authoritative for the full requirement catalogue, verification levels and mapping tables.

---

## Canonical Source

| Attribute | Value |
| --- | --- |
| Standard | OWASP Application Security Verification Standard (ASVS) |
| Current edition | ASVS v4.0.x (maintained by OWASP) |
| Canonical URL | https://owasp.org/www-project-application-security-verification-standard/ |
| License | CC BY-SA 4.0 (OWASP) |
| ForgeOS adoption | Verification-requirement standard; applied via the four pillars below |

When OWASP releases a new ASVS version, this document's referenced edition, chapter list and level definitions are re-aligned.

---

## What ASVS Establishes (the Goal)

ASVS defines a requirements catalogue organised into chapters, and three verification levels that describe increasing rigour:

### Verification Levels

| Level | Intent | Typical use |
| --- | --- | --- |
| Level 1 (L1) | Opportunistic, baseline verification; testable without source access. | Low-risk applications, external pentest scope. |
| Level 2 (L2) | Standard for applications handling sensitive data; requires design review. | Most business applications. |
| Level 3 (L3) | High-assurance for critical functions; deep design, code, and insider-threat review. | Finance, healthcare, critical infrastructure. |

### Chapter Structure

ASVS is organised into chapters covering the major security domains of an application. The chapter set (v4) covers areas such as architecture, authentication, session management, access control, validation, cryptography, error handling and logging, data protection, communications, business logic, files and resources, API and configuration. The authoritative list of chapters and their requirement IDs is on the canonical source.

> **Verification:** The chapter list and requirement IDs are published on https://owasp.org/www-project-application-security-verification-standard/. Do not quote individual requirement text from memory — always cite the canonical source by chapter and requirement ID.

---

## How ForgeOS Applies ASVS — Four Pillars

### Pillar 1 — Secure by Design Architecture

ASVS chapters on architecture, access control, cryptography and communications are design-time requirements, not after-the-fact checks. ForgeOS uses them to:

* Select the target **verification level** (L1/L2/L3) during `Forge-Requirements-Analysis`, based on data sensitivity and risk.
* Derive **architectural requirements** from the relevant ASVS chapters during `Forge-Solution-Architecture` and `Forge-Threat-Modelling`.
* Make security an **acceptance criterion**: a feature is not done until its applicable ASVS requirements are satisfied.

### Pillar 2 — Secure Development

Development teams implement to ASVS requirements, not just to functionality:

* Each ASVS chapter maps to implementation practices (see Proactive Controls for the *how*).
* Requirements that constrain implementation — e.g. session management, password storage, access control enforcement — are treated as hard constraints.
* `Forge-Code-Review` checks that implementation satisfies the applicable ASVS requirements, not just that the feature works.

### Pillar 3 — Secure Testing

This is ASVS's primary home. ASVS defines the **verification scope**:

* The target level (L1/L2/L3) determines how many requirements apply and how they are verified.
* Requirements are mapped to WSTG tests (see `OWASP-WSTG-Standard.md`) so that verification is evidence-based.
* `Forge-Test-Strategy` and `Forge-Test-Planning` produce verification evidence keyed to ASVS requirement IDs.
* A coverage report (requirements applicable / requirements verified / requirements passed) is the verification artefact.

### Pillar 4 — Software Supply Chain Risk Management

ASVS includes requirements relating to components and integrity (mapping to Top 10 A06 and A08). ForgeOS applies these by:

* Treating dependency and build-pipeline controls as verifiable requirements, not informal good practice.
* Including SBOM generation, signature verification, and dependency vulnerability monitoring as ASVS-aligned verification activities.
* Recording supply-chain verification evidence alongside functional verification.

---

## Choosing a Verification Level

ForgeOS does not mandate a single level. The level is chosen per project (or per component) based on risk:

```text
What data does the system process?
    ├── Non-sensitive, low-impact → L1
    ├── Sensitive personal or business data → L2
    └── Critical (financial, safety, regulated) → L3
```

The chosen level and its justification are recorded in project documentation. Where a project mixes risk profiles, different components may target different levels.

---

## Skill Consumption

| Skill | How it uses ASVS |
| --- | --- |
| `Forge-Requirements-Analysis` | Selects target level; derives security requirements from chapters. |
| `Forge-Acceptance-Criteria` | Turns ASVS requirements into acceptance criteria. |
| `Forge-Solution-Architecture` | Applies architecture, crypto, access-control, comms chapters to design. |
| `Forge-Threat-Modelling` | Uses ASVS to check coverage of threat scenarios. |
| `Forge-Backend-Development` / `Forge-Frontend-Development` | Implement to ASVS requirements. |
| `Forge-Code-Review` | Verifies implementation satisfies applicable ASVS requirements. |
| `Forge-Test-Strategy` / `Forge-Test-Planning` | Produces verification evidence keyed to ASVS requirement IDs. |

---

## SDLC Applicability

| SDLC phase | How ASVS applies |
| --- | --- |
| Specify | Level chosen; applicable requirements identified; turned into acceptance criteria. |
| Design | Architectural requirements applied. |
| Develop | Implemented as hard constraints. |
| Verify | Requirements verified with evidence; coverage report produced. |
| Release | Supply-chain and integrity requirements verified. |
| Operate | Operational requirements (logging, monitoring, config) verified in production. |
| Improve | Defects map back to ASVS requirement gaps; coverage report updated. |

---

## Relationship to Other Security Standards

| Standard | Relationship |
| --- | --- |
| ForgeOS Security Standard (`README.md`) | Parent; ASVS operationalises its "Security Is Continuously Verified" principle. |
| OWASP Top 10 | Top 10 = risk categories; ASVS = requirements that, if satisfied, address those categories. |
| OWASP Proactive Controls | Controls = how to build; ASVS = what to verify about what was built. |
| OWASP WSTG | ASVS = what to verify; WSTG = how to test it. |
| OWASP Cheat Sheets | Implementation guidance for satisfying ASVS requirements. |

---

## What This Document Does Not Do

* **Does not reproduce ASVS requirement text.** The canonical source is authoritative; requirements are cited by chapter and ID, not quoted.
* **Does not mandate a verification level.** Level selection is project-specific and risk-based.
* **Does not define engineering workflow.** Owned by `Framework/01-Workflow/`.

---

## Maintenance

* When OWASP releases a new ASVS version, update the "Current edition" line and re-align chapter references; do not carry forward stale requirement IDs.
* Project-specific level selection and any requirement deviations are recorded as project decisions, not here.
* Attribution: OWASP ASVS © OWASP Foundation, licensed under CC BY-SA 4.0. This ForgeOS document is an application guide, not a derivative reproduction.

---

## Related Documents

* `Framework/02-Standards/05-Security/README.md` — parent ForgeOS Security Standard.
* `Framework/02-Standards/05-Security/OWASP-Top10.md` — risk categories ASVS addresses.
* `Framework/02-Standards/05-Security/OWASP-Proactive-Controls.md` — how to build to ASVS.
* `Framework/02-Standards/05-Security/OWASP-WSTG-Standard.md` — how to test ASVS.
* `Framework/02-Standards/05-Security/OWASP-Cheat-Sheets.md` — implementation guidance.
* `https://owasp.org/www-project-application-security-verification-standard/` — canonical source.