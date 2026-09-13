# Forge-Security-Testing

```json
{
  "skill": "Forge-Security-Testing",
  "category": "05-Security",
  "purpose": "Forge-Security-Testing provides the capability to verify implemented security controls at runtime — executing security-focused tests against running systems, driven by OWASP WSTG and the threat model, to produce objective evidence that security controls behave as designed.",
  "outputs": [
    "Security test results (evidence-linked)",
    "Verification verdicts against security requirements",
    "Inputs to Forge-Defect-Management and the Release Readiness Assessment"
  ],
  "primaryTemplates": [
    "Test-Plan-template.md"
  ],
  "supportingTemplates": [
    "Security-Risk-Assessment-template.md"
  ]
}
```

## Purpose

Forge-Security-Testing validates what the threat model designed and the security review inspected: that implemented controls actually hold at runtime. It plans and executes security tests — authentication and session handling, authorisation boundaries, input validation, error handling and data protection — using OWASP WSTG as the test catalogue and producing evidence suitable for the Verify gate.

Led by the **Security Engineer** in the Verify phase; findings flow to **Forge-Defect-Management**; verdicts feed **Forge-Release-Readiness-Assessment**.

---

# Responsibility

Forge-Security-Testing is responsible for:

* Deriving security test cases from the threat model, security requirements and OWASP WSTG categories.
* Executing security tests against running systems (controlled environments or pre-production).
* Verifying authentication, session management, authorisation, input validation, encryption in transit/at rest and error-handling behaviour.
* Capturing objective evidence (requests, responses, configurations, logs) for every verdict.
* Reporting failures as defects with reproduction steps.

It does **not**:

* Perform unbounded penetration testing or production attacks — testing is scoped, authorised and evidenced.
* Inspect source code (see Forge-Security-Review).
* Accept or waive risk — failed controls become defects and decisions belong to humans.

---

# When To Use

* Verify phase: before release, proportionate to system risk.
* After significant changes to authentication, authorisation or data handling.
* When Forge-Security-Review or Forge-Threat-Modelling flags controls requiring runtime confirmation.
* For regression verification of previously fixed security defects.

---

# When Not To Use

* Before controls exist to test — design and implementation come first.
* As a substitute for code review (runtime testing cannot see dead or unreachable code paths).
* On production systems without explicit, documented authorisation and scope.
* For static dependency analysis (see Forge-Security-Review).

---

# Inputs

* Security requirements and the threat model (Forge-Threat-Modelling).
* A running system (test or pre-production environment).
* Known security findings from review, for verification of fixes.
* OWASP WSTG and the ForgeOS Security Standard.

---

# Method

## Step 1 — Authorise And Scope
Confirm written scope, environment and authorisation. Testing outside scope is prohibited.

## Step 2 — Derive Test Cases
Map threat-model risks and security requirements to WSTG test categories; prioritise by risk.

## Step 3 — Prepare The Environment
Ensure the environment mirrors production controls closely enough for verdicts to transfer; record deviations.

## Step 4 — Execute And Capture Evidence
Run the tests; capture request/response evidence and system behaviour for every check.

## Step 5 — Verify Known Findings
Re-test previously fixed defects to confirm closure (regression discipline, per Forge-Regression-Testing).

## Step 6 — Report
Publish results: verdict per test, evidence links, defects raised for failures, and a residual-risk statement for the Release Readiness Assessment.

---

# Outputs

* Security test results with per-test verdicts and evidence.
* Confirmed-fixed verification for previously raised security defects.
* Residual-risk statement feeding Forge-Release-Readiness-Assessment.
* Defects raised into Forge-Defect-Management.

---

# Standards Applied

* ForgeOS Security Standard
* OWASP WSTG (primary test catalogue), OWASP ASVS (verification levels), OWASP Top 10
* Testing Standards
* Documentation Standards

---

# Interaction With Other Skills

* **Forge-Threat-Modelling** — supplies the risks this skill verifies.
* **Forge-Security-Review** — static counterpart; review findings become test targets.
* **Forge-Test-Strategy / Forge-Test-Execution** — security tests integrate into the overall test strategy and evidence model.
* **Forge-Regression-Testing** — fixed security defects join the regression suite.
* **Forge-Defect-Management** — receives failures.
* **Forge-Release-Readiness-Assessment** — consumes the residual-risk statement.

---

# Success Criteria

Forge-Security-Testing is successful when:

* Every security requirement derived from the threat model has a test verdict backed by evidence.
* Previously fixed security defects are verifiably re-tested.
* Failures are raised as reproducible defects, not narrative notes.
* Testing remained within its authorised scope.
* The release decision can cite objective security evidence.