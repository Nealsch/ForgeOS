# Forge-Security-Review

```json
{
  "skill": "Forge-Security-Review",
  "category": "05-Security",
  "purpose": "Forge-Security-Review provides the capability to review engineering artifacts for security defects — performing secure code review of implementation changes and assessing dependencies for known vulnerabilities — against the ForgeOS Security Standard and the OWASP standards, producing traceable findings for triage.",
  "outputs": [
    "Security review findings (severity-classified)",
    "Dependency vulnerability assessment",
    "Inputs to Forge-Defect-Management and Forge-Threat-Modelling"
  ],
  "primaryTemplates": [
    "Security-Risk-Assessment-template.md"
  ],
  "supportingTemplates": [
    "Decision-Log-template.md"
  ]
}
```

## Purpose

Forge-Security-Review inspects artifacts — source code changes, dependency manifests and configuration — for security weaknesses that static design work (Forge-Threat-Modelling, Forge-Security-Surface-Review) predicted or that implementation introduced. It covers two related review activities: **secure code review** (implementation-level verification against OWASP ASVS and Proactive Controls) and **dependency vulnerability assessment** (supply-chain review against known-vulnerability sources).

Led by the **Security Engineer**; findings are consumed by **Forge-Defect-Management**.

---

# Responsibility

Forge-Security-Review is responsible for:

* Reviewing code changes for injection flaws, broken access control, authentication/authorisation defects, insecure deserialisation, misconfigured security controls and sensitive-data exposure.
* Reviewing dependency manifests for components with known vulnerabilities, abandoned upstreams and licence-incompatible changes.
* Classifying findings by severity and exploitability, with evidence (file, line, condition of exploitation).
* Recording accepted-risk decisions in a decision log where findings are formally waived.
* Feeding confirmed findings into defect management for triage and tracking.

It does **not**:

* Execute runtime testing or scanning (see Forge-Security-Testing).
* Fix defects — resolution belongs to development agents.
* Accept security risk on the Product Owner's behalf; risk acceptance is always recorded and owned by humans.
* Design security controls (see Forge-Threat-Modelling).

---

# When To Use

* Before merging changes that touch authentication, authorisation, input handling, cryptography or secrets.
* On a cadence for dependency manifests (and immediately on disclosure of a relevant CVE).
* During the Verify phase for risk-proportionate security verification.
* When Forge-Threat-Modelling or Forge-Security-Surface-Review has flagged a high-risk area for inspection.

---

# When Not To Use

* As a substitute for a threat model (use Forge-Threat-Modelling).
* As a substitute for runtime verification (use Forge-Security-Testing).
* When only a preliminary, graph-based surface view is needed (use Forge-Security-Surface-Review).
* To teach secure construction — that is Secure Coding guidance, deferred to the Develop-phase skills (gap #4).

---

# Inputs

* Code changes (diffs or full modules) with context on trust boundaries and data sensitivity.
* Dependency manifests and lockfiles.
* Threat model or security surface map, where available (from Forge-Threat-Modelling / Forge-Security-Surface-Review).
* The ForgeOS Security Standard and applicable OWASP standards.

---

# Method

## Step 1 — Scope And Risk-Proportion
Identify what changed or what is in scope; weight effort toward trust-boundary, privilege and sensitive-data code.

## Step 2 — Review Against Controls
Inspect the code against OWASP Top 10 / ASVS controls and Proactive Controls guidance. Record each finding with location, exploitability condition and severity.

## Step 3 — Assess Dependencies
Check manifests against known-vulnerability sources; flag vulnerable, abandoned or unexpected components (cross-reference Forge-Dependency-Analysis where a knowledge graph exists).

## Step 4 — Validate Findings
Confirm each finding is real and reachable; discard false positives with recorded rationale.

## Step 5 — Triage And Route
Classify confirmed findings (critical / high / medium / low) and hand them to Forge-Defect-Management. Critical findings gate the change per Verify-phase rules.

## Step 6 — Record Accepted Risk
Where a finding is waived, record the decision, owner and compensating controls in a decision log.

---

# Outputs

* Security review findings (severity-classified, evidence-linked).
* Dependency vulnerability assessment.
* Decision-log entries for accepted risks.
* Inputs to Forge-Defect-Management and, where systemic, to Forge-Threat-Modelling.

---

# Standards Applied

* ForgeOS Security Standard
* OWASP Top 10, OWASP ASVS, OWASP Proactive Controls, OWASP Cheat Sheets
* Coding Standards (for review context)
* Documentation Standards

---

# Interaction With Other Skills

* **Forge-Threat-Modelling** — provides the risk model this review verifies against; receives systemic findings back.
* **Forge-Security-Surface-Review** — supplies preliminary surface focus areas for existing codebases.
* **Forge-Security-Testing** — validates at runtime what this skill inspects statically.
* **Forge-Defect-Management** — receives confirmed findings for lifecycle tracking.
* **Forge-Code-Review** — functional/quality review runs alongside; security findings route here.

---

# Success Criteria

Forge-Security-Review is successful when:

* Findings are evidence-linked, severity-classified and traceable to a control.
* No critical or high finding is closed without resolution or a recorded, human-owned risk decision.
* Dependency exposure is known and current at review time.
* Confirmed findings enter defect management without loss of information.
* Risk-proportionate effort is demonstrable (scope record exists).