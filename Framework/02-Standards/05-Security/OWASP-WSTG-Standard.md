# OWASP WSTG — ForgeOS Application Standard

## Authority and Purpose

The **OWASP Web Security Testing Guide (WSTG)** is the authoritative source for *how to test* the security of web applications. It provides a catalogue of security tests organised by category, each with objectives, method and expected remediation.

It sets the **goal**: security testing must be systematic, repeatable and evidence-based, not ad hoc.

This document does **not** reproduce WSTG tests. It defines how ForgeOS adopts WSTG across:

1. Secure by Design architecture
2. Secure development
3. Secure testing
4. Software supply chain risk management

The canonical source remains authoritative for the full test catalogue, test IDs and procedures.

---

## Canonical Source

| Attribute | Value |
| --- | --- |
| Standard | OWASP Web Security Testing Guide (WSTG) |
| Current edition | WSTG v4.x (maintained by OWASP) |
| Canonical URL | https://owasp.org/www-project-web-security-testing-guide/ |
| License | CC BY-SA 4.0 (OWASP) |
| ForgeOS adoption | Testing standard; applied via the four pillars below |

When OWASP releases a new WSTG version, this document's referenced edition and category list are re-aligned.

---

## What WSTG Establishes (the Goal)

WSTG is structured into phases and categories. The phase structure follows a testing lifecycle, and within the active testing phase the tests are grouped into security domains:

| Phase | Purpose |
| --- | --- |
| Information Gathering | Map the application's surface, technologies, users and trust boundaries. |
| Configuration and Deployment Management | Test the configuration of the application and its hosting environment. |
| Identity Management | Test identity, account and entitlement provisioning. |
| Authentication Testing | Test how identities are verified. |
| Authorization Testing | Test how access is enforced. |
| Session Management | Test how sessions are established, maintained and terminated. |
| Input Validation Testing | Test how untrusted input is handled (injection, XSS, etc.). |
| Testing for Error Handling | Test how failures disclose information. |
| Testing for Weak Cryptography | Test cryptographic controls and transport security. |
| Business Logic Testing | Test application-specific logic for abuse. |
| Client-side Testing | Test browser-side controls (DOM storage, postMessage, UI redressing). |
| API Testing | Test REST/GraphQL/SOAP and other API surfaces. |

The authoritative list of test IDs (e.g. `OTG-AUTHN-001`-style identifiers in current WSTG notation) and procedures is on the canonical source.

> **Verification:** Test categories and IDs are published on https://owasp.org/www-project-web-security-testing-guide/. Do not quote individual test procedures from memory — cite the canonical source by category and test ID.

---

## How ForgeOS Applies WSTG — Four Pillars

### Pillar 1 — Secure by Design Architecture

WSTG is primarily a testing standard, but its **Information Gathering** and **Configuration** phases inform architecture. ForgeOS uses them to:

* Define the application's **attack surface** during `Forge-Threat-Modelling`, using WSTG's information-gathering categories as the taxonomy.
* Ensure **secure-by-default configuration** is part of the architecture (maps to WSTG Configuration & Deployment phase).
* Design so that every WSTG test category has a known, designed answer — not an accidental one.

### Pillar 2 — Secure Development

WSTG tells developers what attackers will try, which shapes how features are built:

* Input validation categories → build with allowlist validation (Proactive Control C5).
* Auth/session categories → build with vetted identity frameworks (Proactive Control C6, C7).
* Error-handling categories → fail closed, no stack traces (Proactive Control C10).
* Crypto/transport categories → use vetted crypto libraries, enforce TLS (Proactive Control C8).

Development and code review use WSTG categories as a "what-will-be-tested" checklist, ensuring the implementation is testable and the controls are present.

### Pillar 3 — Secure Testing

This is WSTG's primary home. WSTG defines the **test scope, method and evidence**:

* `Forge-Test-Strategy` selects which WSTG categories apply based on the application's attack surface and target ASVS level.
* `Forge-Test-Planning` maps each applicable ASVS requirement to one or more WSTG tests.
* Test execution produces evidence keyed to WSTG test IDs.
* Results feed back into ASVS verification: a requirement is "verified" when its mapped WSTG tests pass.

WSTG categories cover the OWASP Top 10 risk categories, so testing against WSTG is how a project demonstrates Top 10 coverage.

### Pillar 4 — Software Supply Chain Risk Management

WSTG includes configuration and component testing relevant to the supply chain:

* Configuration & Deployment phase → verifies secure configuration of servers, containers, and CI/CD.
* Vulnerable component detection (mapping to Top 10 A06) → dependency scanning is part of the test suite, not an afterthought.
* Integrity verification (mapping to Top 10 A08) → build artefact and deployment integrity are tested.

---

## Coverage Strategy

Not every WSTG test applies to every application. ForgeOS applies a coverage strategy:

```text
1. Information Gathering defines the attack surface.
2. Attack surface + ASVS target level → applicable WSTG categories.
3. Each applicable WSTG category → test plan with test IDs.
4. Execute tests → evidence → ASVS coverage report.
5. Gaps → defects or risk acceptances, recorded.
```

A WSTG coverage report (categories applicable / tested / passed / failed) is a verification artefact alongside the ASVS coverage report.

---

## Skill Consumption

| Skill | How it uses WSTG |
| --- | --- |
| `Forge-Threat-Modelling` | Uses Information Gathering categories to define attack surface. |
| `Forge-Solution-Architecture` | Ensures every WSTG category has a designed answer. |
| `Forge-Backend-Development` / `Forge-Frontend-Development` | Uses WSTG categories as a build-to-checklist. |
| `Forge-Code-Review` | Checks that controls needed to pass WSTG tests are present. |
| `Forge-Test-Strategy` | Selects applicable WSTG categories; maps to ASVS. |
| `Forge-Test-Planning` | Produces test plan with WSTG test IDs. |
| `Forge-Debugging` | Investigates failures found via WSTG tests. |

---

## SDLC Applicability

| SDLC phase | How WSTG applies |
| --- | --- |
| Specify | Attack surface sketched; categories likely in scope identified. |
| Design | Architecture must have designed answers for each category. |
| Develop | Build to survive testing in each category. |
| Verify | Execute WSTG tests; produce evidence; feed ASVS coverage. |
| Release | Configuration & deployment tests re-run pre-release. |
| Operate | Monitoring aligned to WSTG indicators (e.g. auth failures, injection attempts). |
| Improve | Defects map back to WSTG categories; coverage report updated. |

---

## Relationship to Other Security Standards

| Standard | Relationship |
| --- | --- |
| ForgeOS Security Standard (`README.md`) | Parent; WSTG operationalises its "Security Is Continuously Verified" principle. |
| OWASP Top 10 | WSTG tests cover the Top 10 categories; WSTG is *how* Top 10 is tested. |
| OWASP ASVS | ASVS = what to verify; WSTG = how to test it. |
| OWASP Proactive Controls | Controls = how to build so that WSTG tests pass. |
| OWASP Cheat Sheets | Implementation guidance for fixing what WSTG finds. |

---

## What This Document Does Not Do

* **Does not reproduce WSTG test procedures.** The canonical source is authoritative; tests are cited by category and ID.
* **Does not mandate full WSTG coverage.** Coverage is scoped by attack surface and ASVS level.
* **Does not define engineering workflow.** Owned by `Framework/01-Workflow/`.

---

## Maintenance

* When OWASP releases a new WSTG version, update the "Current edition" line and category list; do not carry forward stale test IDs.
* Project-specific test selection and results are recorded in project test artefacts, not here.
* Attribution: OWASP WSTG © OWASP Foundation, licensed under CC BY-SA 4.0. This ForgeOS document is an application guide, not a derivative reproduction.

---

## Related Documents

* `Framework/02-Standards/05-Security/README.md` — parent ForgeOS Security Standard.
* `Framework/02-Standards/05-Security/OWASP-Top10.md` — risks WSTG tests for.
* `Framework/02-Standards/05-Security/OWASP-Proactive-Controls.md` — how to build so WSTG passes.
* `Framework/02-Standards/05-Security/OWASP-ASVS-Standard.md` — what WSTG verifies.
* `Framework/02-Standards/05-Security/OWASP-Cheat-Sheets.md` — remediation guidance.
* `https://owasp.org/www-project-web-security-testing-guide/` — canonical source.