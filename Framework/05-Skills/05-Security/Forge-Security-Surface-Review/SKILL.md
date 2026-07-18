# Forge-Security-Surface-Review

```json
{
  "skill": "Forge-Security-Surface-Review",
  "category": "05-Security",
  "purpose": "Forge-Security-Surface-Review provides the capability to identify and assess the security surface of an existing codebase — entry points, trust boundaries, sensitive data flows, exposed dependencies and hardcoded secrets indicators — by interpreting a knowledge graph and analysis report produced by the Codebase Analysis Tooling Capability.",
  "outputs": [
    "Security surface map",
    "Security findings (preliminary)",
    "Inputs to the Architecture Assessment and to Forge-Threat-Modelling"
  ],
  "primaryTemplates": [
    "Architecture-Assessment-template.md"
  ],
  "supportingTemplates": [
    "Threat-Model-template.md"
  ]
}
```

## Purpose

Forge-Security-Surface-Review turns structural signals into a preliminary view of a codebase's attack surface. It does **not** build the graph, run the tool, or replace a full security review/threat model (those are owned by the Tooling layer and the Security Engineer respectively, per **ADR-008**). This Skill identifies surface for deeper investigation.

Used primarily by the **Codebase Analyst**; consumed by the **Security Engineer**.

---

# Responsibility

Forge-Security-Surface-Review is responsible for:

* Reading a knowledge graph and analysis report conforming to the Codebase Analysis Capability Contract.
* Identifying entry points (API endpoints, UI handlers, job entry, message consumers) from graph nodes.
* Identifying trust-boundary crossings (external → internal edges).
* Identifying sensitive-data flows where node labels/sources indicate credentials, PII, finance, etc.
* Flagging external dependencies known to be outdated or unmaintained (cross-references Forge-Dependency-Analysis).
* Preserving confidence labels (`EXTRACTED` / `INFERRED` / `AMBIGUOUS`).
* Checking graph freshness before treating findings as current.

It does **not**:

* Perform vulnerability scanning, SAST/DAST, or penetration testing.
* Approve security decisions or accept risk.
* Replace a formal threat model.

---

# When To Use

* Preliminary security review during onboarding.
* Architecture Assessment production.
* Before a migration that crosses trust boundaries.

---

# When Not To Use

* No knowledge graph / analysis report exists.
* A formal threat model is required (use Forge-Threat-Modelling under the Security Engineer).

---

# Inputs

* Knowledge graph with confidence-labelled edges.
* Analysis report.
* Dependency map (from Forge-Dependency-Analysis), where produced.

---

# Method

## Step 1 — Verify Freshness
Confirm the graph reflects the current repository.

## Step 2 — Identify Entry Points
Nodes representing external-facing surfaces.

## Step 3 — Identify Trust Boundaries
Edges crossing external/internal, authenticated/unauthenticated, privileged/unprivileged zones.

## Step 4 — Identify Sensitive Flows
Nodes/edges touching credentials, PII, financial data.

## Step 5 — Cross-Reference Dependencies
Surface outdated or unmaintained external dependencies.

## Step 6 — Classify Confidence
Preserve edge confidence. Surface findings flagged `AMBIGUOUS` require human verification.

## Step 7 — Produce Findings
Record a security surface map and preliminary findings for the Security Engineer.

---

# Outputs

* Security surface map.
* Preliminary security findings (with confidence and traceability).
* Inputs to the Architecture Assessment and to Forge-Threat-Modelling.

---

# Standards Applied

* Security Standards (OWASP Top 10 — especially A01 Broken Access Control, A06 Vulnerable Components, A08 Software & Data Integrity; ASVS, WSTG as applicable)
* Architecture Standards
* Documentation Standards

---

# Interaction With Other Skills

* **Forge-Dependency-Analysis** — supplies supply-chain findings.
* **Forge-Threat-Modelling** — consumes the surface map for a formal threat model.
* **Forge-Architecture-Analysis** — supplies boundaries.

---

# Tooling Boundary

This Skill reads the **outputs** of the Codebase Analysis Capability Contract. It never addresses Graphify or any other specific tool directly (per **ADR-008**).

---

# Success Criteria

Forge-Security-Surface-Review is successful when:

* The security surface is mapped and traceable.
* Trust-boundary crossings are explicit.
* Confidence labels are preserved.
* The Security Engineer receives a preliminary surface ready for formal threat modelling.
* The analysis tool can be replaced without changing this Skill.