# OWASP Cheat Sheets — ForgeOS Application Standard

## Authority and Purpose

The **OWASP Cheat Sheet Series** is the authoritative source for concrete, actionable implementation guidance for specific security topics. Each cheat sheet is a focused, practical document on one area (e.g. authentication, SQL injection prevention, secrets management).

It sets the **goal**: developers and reviewers should apply consistent, vetted implementation patterns rather than improvising.

This document does **not** reproduce cheat sheet content. It defines how ForgeOS adopts the Cheat Sheet Series across:

1. Secure by Design architecture
2. Secure development
3. Secure testing
4. Software supply chain risk management

The canonical source remains authoritative for each cheat sheet's content.

---

## Canonical Source

| Attribute | Value |
| --- | --- |
| Standard | OWASP Cheat Sheet Series |
| Current edition | Continuously maintained (no versioned release) |
| Canonical URL | https://owasp.org/www-project-cheat-sheets/ |
| License | CC BY-SA 4.0 (OWASP) |
| ForgeOS adoption | Implementation-guidance standard; applied via the four pillars below |

The Cheat Sheet Series is continuously maintained. When a cheat sheet's guidance changes, the project's implementation should be reviewed against it.

---

## What the Cheat Sheet Series Establishes (the Goal)

The series provides a library of focused implementation guides covering topics such as:

* Application architecture and secure design patterns
* Authentication, password storage, and session management
* Authorisation and access control
* Input validation and injection prevention (SQL injection, command injection, etc.)
* Cross-site scripting (XSS) prevention
* Cross-site request forgery (CSRF) prevention
* Cryptographic storage and transport protection
* Secrets management and key handling
* Logging and error handling
* Secure file upload and download
* REST and GraphQL API security
* Supply chain, dependency and third-party library management
* Container, cloud and deployment security
* Privacy and data protection

The authoritative list of cheat sheets is on the canonical source. Each sheet is independently maintained, so the project should link to and follow the current version.

> **Verification:** The available cheat sheets are listed at https://owasp.org/www-project-cheat-sheets/. Cite sheets by name and URL; do not reproduce their guidance in ForgeOS documents.

---

## How ForgeOS Applies the Cheat Sheets — Four Pillars

### Pillar 1 — Secure by Design Architecture

Cheat sheets on architecture, authentication, authorisation, cryptography, and supply chain inform design decisions. ForgeOS uses them to:

* Validate architectural choices during `Forge-Solution-Architecture` against the relevant sheets.
* Apply the relevant cheat sheet during `Forge-Threat-Modelling` when identifying controls for each threat.
* Reference cheat sheets in ADRs when a security-relevant architectural decision is made.

### Pillar 2 — Secure Development

This is the Cheat Sheets' primary home. ForgeOS uses them as the implementation reference:

* When implementing a security-critical feature (auth, crypto, validation, encoding), the developer references the relevant cheat sheet.
* When reviewing code, `Forge-Code-Review` checks implementation against the relevant cheat sheet.
* The parent ForgeOS Security Standard principle "Every Dependency Is a Security Decision" uses the supply chain cheat sheets when selecting and vetting dependencies.

Cheat sheets are referenced by link, not copied, so that the latest guidance is always used.

### Pillar 3 — Secure Testing

Cheat sheets inform test expectations:

* Test cases derive expected behaviour from cheat sheet guidance.
* Remediation guidance for findings (e.g. from WSTG tests) is anchored to the relevant cheat sheet.
* `Forge-Test-Planning` records the cheat sheet that informed each security test's expected outcome.

### Pillar 4 — Software Supply Chain Risk Management

The series includes cheat sheets on dependency management, third-party libraries, and supply chain integrity. ForgeOS uses them to:

* Define dependency selection and vetting practice (maps to Proactive Control C2 and Top 10 A06).
* Establish integrity controls (signing, SBOM) (maps to Top 10 A08).
* Align container and deployment security with vetted guidance.

---

## How Cheat Sheets Relate to Other OWASP Standards

Cheat Sheets are the **implementation layer** of the OWASP ecosystem:

```text
Top 10          → what can go wrong (risk categories)
    ↓
Proactive Ctrls → how to build it right (development practices)
    ↓
ASVS            → what to verify (requirements)
    ↓
WSTG            → how to test it (test procedures)
    ↓
Cheat Sheets    → how to implement the controls (concrete guidance)
```

When a developer needs to know *exactly* how to implement a control, the cheat sheet is the first stop. The other standards define the *why*, *what*, and *verify*.

---

## Skill Consumption

| Skill | How it uses Cheat Sheets |
| --- | --- |
| `Forge-Solution-Architecture` | Architecture, auth, crypto, supply-chain sheets for design. |
| `Forge-Threat-Modelling` | Sheets for selecting controls to counter threats. |
| `Forge-Backend-Development` | Implementation sheets for server-side features. |
| `Forge-Frontend-Development` | XSS, CSRF, client-side storage, SPA sheets. |
| `Forge-API-Design` | REST/GraphQL sheets for API surface design. |
| `Forge-Code-Review` | Checks implementation against relevant sheets. |
| `Forge-Database-Implementation` | SQL injection prevention and query safety sheets. |
| `Forge-Test-Strategy` / `Forge-Test-Planning` | Uses sheets to define expected behaviour and remediation. |
| `Forge-Refactoring` | Applies sheets when correcting security defects. |

---

## SDLC Applicability

| SDLC phase | How Cheat Sheets apply |
| --- | --- |
| Specify | Sheets on requirements-relevant topics inform acceptance criteria. |
| Design | Architecture and design sheets applied. |
| Develop | Implementation sheets are the developer's reference (Pillar 2). |
| Verify | Sheets inform expected behaviour and remediation (Pillar 3). |
| Release | Supply chain, container and deployment sheets applied. |
| Operate | Logging, monitoring, and incident-response sheets inform operations. |
| Improve | Defect remediation references the relevant sheet. |

---

## Relationship to Other Security Standards

| Standard | Relationship |
| --- | --- |
| ForgeOS Security Standard (`README.md`) | Parent; Cheat Sheets provide the concrete "how" for its principles. |
| OWASP Top 10 | Cheat Sheets provide implementation guidance for Top 10 risk controls. |
| OWASP Proactive Controls | Cheat Sheets detail how to implement each control. |
| OWASP ASVS | Cheat Sheets help satisfy ASVS requirements. |
| OWASP WSTG | Cheat Sheets provide remediation guidance for WSTG findings. |

---

## What This Document Does Not Do

* **Does not reproduce cheat sheet content.** The canonical source is authoritative; sheets are cited by name and URL.
* **Does not select project-specific technologies.** Cheat Sheets advise on patterns; project-specific tooling choices are recorded in project documentation.
* **Does not define engineering workflow.** Owned by `Framework/01-Workflow/`.

---

## Maintenance

* The Cheat Sheet Series is continuously maintained; ForgeOS references the live versions rather than pinning a snapshot.
* When a cheat sheet is retired or merged, update references here and in project documentation.
* Attribution: OWASP Cheat Sheet Series © OWASP Foundation, licensed under CC BY-SA 4.0. This ForgeOS document is an application guide, not a derivative reproduction.

---

## Related Documents

* `Framework/02-Standards/05-Security/README.md` — parent ForgeOS Security Standard.
* `Framework/02-Standards/05-Security/OWASP-Top10.md` — risks the sheets help prevent.
* `Framework/02-Standards/05-Security/OWASP-Proactive-Controls.md` — development practices the sheets detail.
* `Framework/02-Standards/05-Security/OWASP-ASVS-Standard.md` — requirements the sheets help satisfy.
* `Framework/02-Standards/05-Security/OWASP-WSTG-Standard.md` — tests whose findings the sheets remediate.
* `https://owasp.org/www-project-cheat-sheets/` — canonical source.