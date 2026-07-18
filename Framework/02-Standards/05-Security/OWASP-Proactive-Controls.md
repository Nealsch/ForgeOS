# OWASP Proactive Controls — ForgeOS Application Standard

## Authority and Purpose

The **OWASP Top 10 Proactive Controls** is the authoritative source for the development-side controls that prevent the most common web application vulnerabilities. Where the OWASP Top 10 names *what* can go wrong, the Proactive Controls describe *how to build it right*.

It sets the **goal**: secure development practices that address risk categories before they become vulnerabilities.

This document does **not** reproduce OWASP content. It defines how ForgeOS adopts the Proactive Controls across:

1. Secure by Design architecture
2. Secure development
3. Secure testing
4. Software supply chain risk management

The canonical source remains authoritative for the full description of each control.

---

## Canonical Source

| Attribute | Value |
| --- | --- |
| Standard | OWASP Top 10 Proactive Controls |
| Current edition | Proactive Controls (latest, maintained by OWASP) |
| Canonical URL | https://owasp.org/www-project-proactive-controls/ |
| License | CC BY-SA 4.0 (OWASP) |
| ForgeOS adoption | Development-practice standard; applied via the four pillars below |

When OWASP revises the Proactive Controls, this document's referenced controls are re-aligned.

---

## What the Proactive Controls Establish (the Goal)

The Proactive Controls define ten development practices that, when applied early, prevent the majority of common vulnerabilities. The ten controls are:

| ID | Control |
| --- | --- |
| C1 | Define Security Requirements |
| C2 | Leverage Security Frameworks and Libraries |
| C3 | Secure Database Access |
| C4 | Encode and Escape Data |
| C5 | Validate All Inputs |
| C6 | Implement Digital Identity |
| C7 | Enforce Access Controls |
| C8 | Protect Data Everywhere |
| C9 | Implement Security Logging and Monitoring |
| C10 | Handle All Errors and Exceptions |

Each control is a development practice, not a tool. The OWASP page for each control is the authoritative definition.

> **Verification:** The control list above is stated on https://owasp.org/www-project-proactive-controls/. If OWASP revises it, update this table first, then re-align the application guidance.

---

## How ForgeOS Applies the Proactive Controls — Four Pillars

### Pillar 1 — Secure by Design Architecture

Controls C1, C2, C6, C7 and C8 must be considered during architecture, because they constrain design choices:

| Control | Architecture decision it forces |
| --- | --- |
| C1 Security Requirements | Security requirements (and their source standards) are identified before design. |
| C2 Frameworks & Libraries | Security-critical functions (auth, crypto, validation) use vetted frameworks, not bespoke code. |
| C6 Digital Identity | The authentication and identity architecture is chosen, including federation if relevant. |
| C7 Access Controls | The authorisation model (centralised, policy-based) is designed, not improvised. |
| C8 Protect Data Everywhere | Sensitive data flows are mapped, and protection is specified for each state (transit, at rest, in use). |

These are applied during `Forge-Requirements-Analysis`, `Forge-Solution-Architecture` and `Forge-Threat-Modelling`.

### Pillar 2 — Secure Development

The Proactive Controls are primarily a development standard. ForgeOS maps each control to a concrete practice:

| Control | ForgeOS development practice |
| --- | --- |
| C1 | Derive security requirements from applicable standards (Top 10, ASVS) and make them acceptance criteria. |
| C2 | Use approved frameworks for auth, crypto, validation, encoding; never invent security mechanisms. |
| C3 | Parameterised queries / ORM; least-privilege DB accounts; no dynamic SQL with concatenation. |
| C4 | Contextual output encoding for HTML, URL, JavaScript, CSS; template engine auto-escaping where possible. |
| C5 | Allowlist input validation at trust boundaries; reject non-conforming input; sanitise only where needed. |
| C6 | Use vetted identity providers / libraries; secure session management; MFA where appropriate. |
| C7 | Centralised, deny-by-default authorisation; checks on every sensitive action. |
| C8 | Encrypt sensitive data in transit and at rest; minimise data collected and retained; protect keys. |
| C9 | Structured security logs for auth events, access decisions, integrity failures; no secrets in logs. |
| C10 | Fail closed; generic messages to users; detailed errors in logs only; never leak stack traces. |

These are enforced via `Forge-Backend-Development`, `Forge-Frontend-Development`, `Forge-API-Design`, and `Forge-Code-Review`.

### Pillar 3 — Secure Testing

The Proactive Controls define what secure testing must *verify was implemented*:

* C3 → database access tests (SQL injection, least privilege) per WSTG.
* C4, C5 → input validation and output encoding tests; injection and XSS tests per WSTG.
* C6, C7 → authentication and authorisation tests per WSTG and ASVS.
* C8 → data protection tests (transport, at rest, key handling).
* C9 → logging verification (security events captured, no secrets logged).
* C10 → error handling tests (fail-closed, no information disclosure).

Static analysis and code review (via `Forge-Code-Review`) confirm that controls are present in the implementation, not just claimed.

### Pillar 4 — Software Supply Chain Risk Management

C2 is the supply-chain control within the Proactive Controls: using external frameworks and libraries introduces risk. ForgeOS applies:

* **Selection** — prefer mature, actively maintained projects with good security posture.
* **Pinning** — versions are pinned, not floating.
* **Monitoring** — dependencies are continuously monitored for vulnerabilities (CVE feeds, audit tools).
* **Minimisation** — transitive dependencies are reviewed; unused dependencies are removed.
* **Integrity** — package signatures / hashes are verified before use.

These map directly to Top 10 A06 (Vulnerable Components) and A08 (Integrity Failures).

---

## Skill Consumption

| Skill | How it uses OWASP Proactive Controls |
| --- | --- |
| `Forge-Requirements-Analysis` | C1 — derive security requirements. |
| `Forge-Solution-Architecture` | C2, C6, C7, C8 — architectural decisions. |
| `Forge-Backend-Development` | C2–C10 — all server-side development practices. |
| `Forge-Frontend-Development` | C4, C5, C6, C8, C10 — client-side encoding, validation, identity, data, errors. |
| `Forge-API-Design` | C5, C7, C8, C9 — validation, access control, data protection, logging. |
| `Forge-Code-Review` | Verifies presence and correct implementation of each control. |
| `Forge-Database-Implementation` | C3 — secure database access. |
| `Forge-Refactoring` | Applies C2 to remove bespoke security code in favour of frameworks. |

---

## SDLC Applicability

| SDLC phase | How Proactive Controls apply |
| --- | --- |
| Specify | C1 — security requirements derived and turned into acceptance criteria. |
| Design | C2, C6, C7, C8 — architectural decisions made. |
| Develop | C2–C10 — development practices applied (Pillar 2). |
| Verify | Controls verified present and effective (Pillar 3). |
| Release | Dependency and integrity controls verified (Pillar 4). |
| Operate | C9 logs drive monitoring and detection. |
| Improve | Defects traced back to missing/weak controls; guidance updated. |

---

## Relationship to Other Security Standards

| Standard | Relationship |
| --- | --- |
| ForgeOS Security Standard (`README.md`) | Parent; Proactive Controls operationalise its "Secure by Design" and "Validate All Input" principles. |
| OWASP Top 10 | Proactive Controls *prevent* the Top 10 risk categories during development. |
| OWASP ASVS | ASVS verifies that Proactive Controls were implemented correctly. |
| OWASP WSTG | WSTG tests whether Proactive Controls hold under attack. |
| OWASP Cheat Sheets | Provide concrete implementation guidance for each control. |

---

## What This Document Does Not Do

* **Does not reproduce OWASP content.** The canonical source is authoritative for full control descriptions.
* **Does not select specific libraries.** Library choice is project-specific; this standard only requires that choices are vetted and recorded.
* **Does not define engineering workflow.** Owned by `Framework/01-Workflow/`.

---

## Maintenance

* When OWASP revises the Proactive Controls, update the control table and re-align the four-pillar mappings.
* Project-specific framework/library choices are recorded in project documentation, not here.
* Attribution: OWASP Top 10 Proactive Controls © OWASP Foundation, licensed under CC BY-SA 4.0. This ForgeOS document is an application guide, not a derivative reproduction.

---

## Related Documents

* `Framework/02-Standards/05-Security/README.md` — parent ForgeOS Security Standard.
* `Framework/02-Standards/05-Security/OWASP-Top10.md` — risks the controls prevent.
* `Framework/02-Standards/05-Security/OWASP-ASVS-Standard.md` — verification requirements.
* `Framework/02-Standards/05-Security/OWASP-WSTG-Standard.md` — testing guide.
* `Framework/02-Standards/05-Security/OWASP-Cheat-Sheets.md` — implementation guidance.
* `https://owasp.org/www-project-proactive-controls/` — canonical source.