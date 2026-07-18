# OWASP Top 10 — ForgeOS Application Standard

## Authority and Purpose

The **OWASP Top 10** is the authoritative source for the ten most critical web application security risks. It sets the **goal**: every ForgeOS project must understand and address these risk categories.

This document does **not** reproduce OWASP content. It defines how ForgeOS adopts the OWASP Top 10 as a practical standard across:

1. Secure by Design architecture
2. Secure development
3. Secure testing
4. Software supply chain risk management

The canonical source remains authoritative for the full description, examples, factors and references for each risk.

---

## Canonical Source

| Attribute | Value |
| --- | --- |
| Standard | OWASP Top 10 |
| Current edition | OWASP Top 10 (2021) |
| Canonical URL | https://owasp.org/Top10/ |
| License | CC BY-SA 4.0 (OWASP) |
| ForgeOS adoption | Goal-setting standard; applied via the four pillars below |

When the OWASP Top 10 is revised, this document's referenced edition is updated. The ForgeOS application guidance is edition-independent.

---

## What the OWASP Top 10 Establishes (the Goal)

The OWASP Top 10 identifies the ten most critical categories of web application security risks, based on community data and industry analysis. The 2021 categories are:

| ID | Risk category |
| --- | --- |
| A01:2021 | Broken Access Control |
| A02:2021 | Cryptographic Failures |
| A03:2021 | Injection |
| A04:2021 | Insecure Design |
| A05:2021 | Security Misconfiguration |
| A06:2021 | Vulnerable and Outdated Components |
| A07:2021 | Identification and Authentication Failures |
| A08:2021 | Software and Data Integrity Failures |
| A09:2021 | Security Logging and Monitoring Failures |
| A10:2021 | Server-Side Request Forgery (SSRF) |

Each category represents a *class* of risk, not a single vulnerability. The OWASP page for each category is the authoritative definition; ForgeOS treats the list above as the minimum scope every project must address.

> **Verification:** The exact titles and IDs above are stated on https://owasp.org/Top10/. If OWASP revises them, update this table first, then re-align the application guidance.

---

## How ForgeOS Applies the Top 10 — Four Pillars

The Top 10 is not a checklist applied at the end of development. ForgeOS applies it across four pillars spanning the SDLC.

### Pillar 1 — Secure by Design Architecture

Address Top 10 risks in design before code is written. For each risk category, architecture must answer:

| Risk category | Architecture question |
| --- | --- |
| A01 Broken Access Control | Where is authorisation enforced, and is it centralised? |
| A02 Cryptographic Failures | What data is sensitive, and how is it protected in transit and at rest? |
| A03 Injection | Where are trust boundaries, and which inputs cross them? |
| A04 Insecure Design | What abuse cases and threat scenarios were considered? |
| A05 Security Misconfiguration | What is the secure-by-default configuration? |
| A06 Vulnerable Components | What is the dependency selection policy? |
| A07 AuthN Failures | What is the authentication architecture and session model? |
| A08 Integrity Failures | Where are CI/CD and software supply chain integrity controls? |
| A09 Logging Failures | What security-relevant events must be logged and monitored? |
| A10 SSRF | Which components make outbound requests, and how are they constrained? |

These questions are applied during `Forge-Solution-Architecture` and `Forge-Threat-Modelling` (see "Skill Consumption" below).

### Pillar 2 — Secure Development

Each risk category maps to concrete development practices:

* **A01, A07** — enforce authorisation and authentication via vetted frameworks, not hand-rolled code.
* **A02** — use established cryptographic libraries; never invent crypto.
* **A03, A05** — validate and sanitise all external input; centralise security configuration.
* **A04** — follow the Proactive Controls (see `OWASP-Proactive-Controls.md`) to avoid insecure design patterns.
* **A06** — pin, review and continuously monitor dependencies (ties into Pillar 4).
* **A08** — sign artefacts; verify integrity of dependencies and build outputs.
* **A09** — emit structured security logs with approved categories and no secrets.
* **A10** — constrain outbound requests (allowlists, no raw user URLs).

These are enforced via `Forge-Backend-Development`, `Forge-Frontend-Development`, and `Forge-Code-Review`.

### Pillar 3 — Secure Testing

The Top 10 defines the minimum scope of security testing. Each category maps to WSTG test categories (see `OWASP-WSTG-Standard.md`):

* Authorisation and access control tests (A01).
* Cryptographic and transport tests (A02).
* Injection tests (A03).
* Configuration tests (A05).
* Component / dependency scans (A06).
* Authentication and session tests (A07).
* Integrity verification (A08).
* Logging and monitoring verification (A09).
* SSRF tests (A10).

A04 (Insecure Design) is verified through architecture and threat-model review rather than dynamic testing, and is therefore covered by `Forge-Threat-Modelling`.

### Pillar 4 — Software Supply Chain Risk Management

The Top 10 explicitly added two supply-chain categories in 2021:

* **A06 Vulnerable and Outdated Components** — dependencies must be selected, pinned, monitored and removed when unused.
* **A08 Software and Data Integrity Failures** — CI/CD pipelines, build artefacts and auto-update channels must have integrity verification.

ForgeOS treats these as first-class engineering concerns:

* Dependencies are a security decision (parent standard principle 8).
* CI/CD is in scope for security review.
* Software Bill of Materials (SBOM) and signed artefacts are recommended where risk warrants.
* Unused dependencies are removed promptly.

These are enforced via `Forge-Refactoring`, `Forge-Debugging`, and the DevOps agent responsibilities.

---

## Skill Consumption

| Skill | How it uses OWASP Top 10 |
| --- | --- |
| `Forge-Threat-Modelling` | Uses the 10 categories as the minimum threat taxonomy. |
| `Forge-Solution-Architecture` | Answers the architecture questions in Pillar 1 for each category. |
| `Forge-Backend-Development` | Applies Pillar 2 practices server-side. |
| `Forge-Frontend-Development` | Applies Pillar 2 practices client-side (input handling, auth flows). |
| `Forge-Code-Review` | Checks for Top 10 risk patterns in implementation. |
| `Forge-Test-Strategy` / `Forge-Test-Planning` | Maps Top 10 categories to WSTG tests (Pillar 3). |
| `Forge-API-Design` | Applies A01, A03, A07, A10 to API surfaces. |

---

## SDLC Applicability

| SDLC phase | How OWASP Top 10 applies |
| --- | --- |
| Specify | Identify which Top 10 categories are in scope for the feature. |
| Design | Threat-model and architect against the 10 categories (Pillar 1). |
| Develop | Apply development practices (Pillar 2). |
| Verify | Test against the 10 categories (Pillar 3). |
| Release | Verify supply-chain controls (Pillar 4). |
| Operate | Monitor for the categories (A09) and respond. |
| Improve | Feed incidents back into architecture and test coverage. |

---

## Relationship to Other Security Standards

| Standard | Relationship |
| --- | --- |
| ForgeOS Security Standard (`README.md`) | Parent standard; Top 10 specialises its principles into concrete risk categories. |
| OWASP Proactive Controls | *How* to avoid Top 10 risks during development. |
| OWASP ASVS | *What to verify* — maps to Top 10 categories at requirement level. |
| OWASP WSTG | *How to test* — maps to Top 10 categories at test level. |
| OWASP Cheat Sheets | *How to implement* controls for specific Top 10 risks. |

---

## What This Document Does Not Do

* **Does not reproduce OWASP content.** The canonical source is authoritative for full descriptions, examples and references.
* **Does not replace project-specific threat modelling.** Top 10 is a baseline; projects must also model their own threats.
* **Does not define engineering workflow.** Owned by `Framework/01-Workflow/`.

---

## Maintenance

* When OWASP publishes a new Top 10 edition, update the "Current edition" line, the category table, and any pillar mappings that reference changed IDs.
* Do not edit this document to weaken a control; weakening requires a Security Engineering decision recorded as a project-specific risk acceptance.
* Attribution: OWASP Top 10 © OWASP Foundation, licensed under CC BY-SA 4.0. This ForgeOS document is an application guide, not a derivative reproduction of the standard.

---

## Related Documents

* `Framework/02-Standards/05-Security/README.md` — parent ForgeOS Security Standard.
* `Framework/02-Standards/05-Security/OWASP-Proactive-Controls.md` — development-side controls.
* `Framework/02-Standards/05-Security/OWASP-ASVS-Standard.md` — verification requirements.
* `Framework/02-Standards/05-Security/OWASP-WSTG-Standard.md` — testing guide.
* `Framework/02-Standards/05-Security/OWASP-Cheat-Sheets.md` — implementation cheat sheets.
* `https://owasp.org/Top10/` — canonical source.