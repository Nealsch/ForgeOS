# Forge-Secure-Coding

```json
{
  "skill": "Forge-Secure-Coding",
  "category": "03-Engineering",
  "purpose": "Forge-Secure-Coding provides the capability to implement software securely during the Develop phase — applying the OWASP Proactive Controls, Cheat Sheets, ASVS and Top 10 requirements to day-to-day implementation decisions (input validation, authentication, authorisation, data protection, error handling, secure defaults, dependency hygiene and SSRF defence) while remaining independent of any language, framework or security library.",
  "outputs": [
    "Secure implementation of application features",
    "Security-relevant implementation decisions recorded against ASVS/CWE references",
    "Security findings and follow-ups fed to Forge-Security-Review"
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

Forge-Secure-Coding embeds the ForgeOS Security Standard into the act of writing code. Architecture-level security is owned by Design (Forge-Threat-Modelling); verification is owned by Forge-Security-Review and Forge-Security-Testing. This Skill owns the **implementation moment**: every line written during Develop either applies or violates the security controls the design called for.

It is technology-independent. The Skill applies the Framework's OWASP-based standards and defines secure-implementation discipline; the project's own documentation owns the concrete languages, frameworks, libraries and language-specific rule sets. Any tool named in the Tooling Landscape is an illustrative exemplar only.

Used primarily by the **Backend Engineer**, **Frontend Engineer** and **Full-Stack Engineer** during **Develop**; consumed by Forge-Security-Review.

---

# Responsibility

Forge-Secure-Coding is responsible for:

* Implementing access control so that authorisation is enforced server-side, denies by default, and is checked at every trust-boundary crossing (C1).
* Using cryptography correctly as provided by vetted platform or project-approved libraries — never inventing algorithms or hand-rolling primitives (C2).
* Validating and encoding all external input at trust boundaries; encoding output for its destination context (C3).
* Handling errors and exceptions without leaking sensitive detail to callers or logs.
* Implementing digital identity and session behaviour per project requirements within the Framework's zero-trust and least-privilege principles (C4/C7).
* Applying secure-by-default configuration: disabled debug surfaces, restrictive permissions, hardened defaults (C5).
* Protecting data everywhere it is stored, transmitted or logged (C8).
* Implementing security logging and monitoring hooks per the design's observability requirements (C9).
* Defending against server-side request forgery in any code that fetches user-influenced URLs (C10).
* Keeping components secure: vetting new dependencies before adoption, preferring maintained ones (C6 — detailed assessment owned by Forge-Dependency-Analysis).
* Recording security-relevant implementation decisions with traceability to ASVS/CWE references.

It does **not**:

* Perform code review or vulnerability assessment (Forge-Security-Review).
* Perform security testing (Forge-Security-Testing).
* Define requirements, architecture or threat models (Specify/Design phases).
* Manage secrets lifecycle operationally (Forge-Secrets-Management).
* Select the project's security libraries or language-specific rule sets (Project Documentation).

---

# When To Use

* During **Develop**, whenever production code that handles input, identity, data, or privileged operations is written or changed.
* When implementing controls identified by a threat model or security requirement.
* When introducing a new dependency that processes untrusted data.

---

# When Not To Use

* Reviewing already-written code for vulnerabilities — use Forge-Security-Review.
* Designing security architecture or producing a threat model — use Design-phase skills.
* Operational secret rotation and storage tooling — use Forge-Secrets-Management.

---

# Inputs

* Requirements and acceptance criteria, including security requirements.
* Architecture definition and threat model, where produced.
* ForgeOS Security Standard and specialised OWASP standards (ASVS, Proactive Controls, Cheat Sheets, Top 10).
* Project documentation: approved libraries, frameworks and language-specific coding rules.

---

# Method

## Step 1 — Identify Security-Relevant Surface
Before implementing a feature, identify which Proactive Controls apply: does it touch input, identity, data, privileged operations, outbound requests or configuration?

## Step 2 — Validate Input At The Boundary
Treat all external data as untrusted. Validate against expected formats and business rules; reject on failure; encode output for its destination context.

## Step 3 — Enforce Access Control Server-Side
Deny by default; authorise every request against the least-privilege model; never rely on client-side enforcement or obscurity.

## Step 4 — Protect Data Everywhere
Apply approved cryptography for data in transit and at rest; exclude secrets and sensitive data from logs and errors; never store secrets in code (Forge-Secrets-Management governs the lifecycle).

## Step 5 — Fail Safely
Handle all errors and exceptions; fail closed on security-sensitive paths; expose no stack traces, internals or PII to users or logs.

## Step 6 — Default Secure
Ship hardened defaults; require explicit, reviewed, documented decisions to relax any control (per the Security Standard's precedence rule).

## Step 7 — Defend Outbound Calls
For any URL or host influenced by input, validate against an allow-list to prevent SSRF; restrict protocols, ports and redirects.

## Step 8 — Vet Dependencies
Before adopting a component: confirm it is maintained, appropriately licensed, and does not duplicate an approved one. Defer deep supply-chain assessment to Forge-Dependency-Analysis.

## Step 9 — Record And Hand Over
Record security-relevant decisions with ASVS/CWE traceability; flag residual concerns to Forge-Security-Review for verification.

---

# Outputs

* Secure feature implementation satisfying the applicable Proactive Controls.
* Security-relevant implementation decisions recorded against ASVS/CWE references.
* Residual findings and questions for Forge-Security-Review and Forge-Security-Testing.

---

# Standards Applied

* ForgeOS Security Standard (parent)
* OWASP Proactive Controls (C1–C10 as the implementation checklist)
* OWASP Cheat Sheets (topic-level implementation guidance)
* OWASP ASVS (requirement levels for control completeness)
* OWASP Top 10 (risk awareness for implementation choices)
* Coding Standards

---

# Interaction With Other Skills

* **Forge-Backend-Development / Forge-Frontend-Development** — this Skill's discipline applies within them; they own general implementation capability, this Skill owns the security dimension.
* **Forge-Threat-Modelling** — supplies the controls this Skill implements.
* **Forge-Security-Review** — verifies the implementation; receives residual findings.
* **Forge-Security-Testing** — tests the controls this Skill implements.
* **Forge-Secrets-Management** — owns secret lifecycle; this Skill consumes it correctly in code.
* **Forge-Automated-Test-Authoring** — security behaviour is tested alongside implementation.
* **Forge-Dependency-Analysis** — deep supply-chain assessment of adopted components.

---

# Tooling Landscape (Illustrative, Non-Normative)

The following widely used open-source resources exemplify the standards applied above. They are **examples only** — swappable, multi-language, and never referenced normatively:

* OWASP Cheat Sheet Series — per-topic implementation guidance mapped to ASVS, Top 10 and MASVS indexes.
* OWASP Top 10 Proactive Controls (C1–C10) — the developer-facing control checklist this Skill operationalises.
* SEI CERT secure coding standards — exemplify the *pattern* of language-specific rule sets; such rule sets belong to Project Documentation, not the Framework.
* SAST exemplars of the shift-left pattern: Semgrep, CodeQL, SonarQube — verification tooling used by Forge-Security-Review contexts, never mandated by this Skill.

Concrete library, framework and rule-set choices belong to **Project Documentation** (per the Tooling Boundary below).

---

# Tooling Boundary

This Skill applies the Framework's OWASP-based standards and defines **secure-implementation discipline and selection criteria**, never tool mandates. Concrete cryptographic libraries, validation frameworks, SAST tooling and language-specific rule sets (for example SEI CERT-style per-language standards) belong to **Project Documentation**. Any tool named in the Tooling Landscape is illustrative, swappable without Framework changes, and never referenced normatively (per the ADR-008 boundary discipline).

---

# Success Criteria

Forge-Secure-Coding is successful when:

* Every applicable Proactive Control is consciously applied or explicitly, documentedly deferred.
* Input is validated at trust boundaries and output encoded for context.
* Authorisation is enforced server-side and denies by default.
* No secrets or sensitive data appear in code, logs or error surfaces.
* Security-relevant decisions are traceable to ASVS/CWE references.
* Residual security concerns reach Forge-Security-Review before the phase gate.
* The implementation is portable across the project's stack with no Framework-level library coupling.