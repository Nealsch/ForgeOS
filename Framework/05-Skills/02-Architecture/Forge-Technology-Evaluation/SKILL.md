# Forge-Technology-Evaluation

```json
{
  "skill": "Forge-Technology-Evaluation",
  "category": "02-Architecture",
  "purpose": "Forge-Technology-Evaluation provides the capability to evaluate candidate technologies — languages, frameworks, databases, platforms and tools — against explicit, weighted criteria during the Design phase, producing evidence-based selection recommendations recorded as architectural decisions while remaining independent of any vendor or ecosystem.",
  "outputs": [
    "Evaluation criteria and weighting agreed with stakeholders",
    "Evidence-based comparison of candidates",
    "Selection recommendation captured as an ADR"
  ],
  "primaryTemplates": [
    "Architecture-Decision-Record-template.md"
  ],
  "supportingTemplates": [
    "Architecture-Assessment-template.md"
  ]
}
```

## Purpose

Forge-Technology-Evaluation replaces opinion-driven technology choice with disciplined comparison. Its value lies in making criteria explicit before candidates are examined — preventing post-hoc rationalisation — and in recording the decision, its evidence and its trade-offs durably via ADRs.

It is technology-independent by construction: the Skill defines evaluation discipline, never favoured technologies. Any technology named in the Tooling Landscape is an illustrative exemplar only. Used primarily by the **Software Architect** during **Design**; consumed by Forge-Solution-Architecture and the 06-Delivery implementation skills.

---

# Responsibility

Forge-Technology-Evaluation is responsible for:

* Eliciting the functional, quality-attribute and organisational criteria a technology must satisfy.
* Agreeing weightings and thresholds with the Product Owner and architects before candidates are compared.
* Identifying candidate technologies, including a deliberate "do nothing / existing stack" baseline.
* Gathering evidence: documented capabilities, benchmarks, licence terms, community health, migration and exit costs.
* Comparing candidates against criteria with traceable evidence.
* Producing a recommendation with explicit trade-offs and risks, recorded as an ADR.
* Defining evaluation scope boundaries to prevent unbounded research.

It does **not**:

* Approve the selection — the Product Owner disposes.
* Implement or migrate (Engineering and Delivery skills).
* Own runtime operational assessment of an existing stack (Forge-Architecture-Analysis).
* Evaluate open-source analysis tooling against the Tooling layer's capability contracts (gap #10, ADR-008 process).

---

# When To Use

* During **Design**, when a solution decision requires choosing among technologies.
* When an existing technology no longer meets quality attributes and replacement is on the table.
* When adopting a new category of dependency with architectural reach.

# When Not To Use

* For small, low-reach library choices — use Forge-Dependency-Analysis and Coding Standards; reserve this Skill for architecturally significant selections.
* For assessing the health of the current architecture overall — use Forge-Architecture-Analysis.
* To re-open settled decisions without new evidence — revisit the ADR's trigger conditions instead.

---

# Inputs

* Requirements and quality-attribute expectations (Forge-Requirements-Analysis, Forge-Solution-Architecture).
* Risk register entries relevant to candidate technologies.
* Existing architecture constraints and prior ADRs.
* Licence, compliance and organisational constraints.

# Method

## Step 1 — Frame
State the decision to be made, its reach, and its reversibility class.

## Step 2 — Define Criteria
Agree criteria, weights and minimum thresholds with stakeholders before naming candidates.

## Step 3 — Identify Candidates
List candidates, including the incumbent-or-nothing baseline; justify exclusions.

## Step 4 — Gather Evidence
Research each candidate against the criteria; record sources; where evidence is missing, note it as a risk rather than guessing.

## Step 5 — Compare
Score candidates against weighted criteria; show sensitivity of the result to weight changes.

## Step 6 — Recommend
Produce a recommendation with trade-offs, exit costs and risks; propose trigger conditions for revisit.

## Step 7 — Record
Capture the decision as an ADR; on approval, route implementation planning to the relevant skills.

---

# Outputs

* Criteria and weighting record.
* Evidence-based comparison matrix.
* Selection recommendation and ADR with revisit triggers.

---

# Standards Applied

* Architecture Standards
* Governance Standards (decision records, change management)
* Documentation Standards

---

# Interaction With Other Skills

* **Forge-Solution-Architecture** — consumes selection outcomes as architecture constraints.
* **Forge-Architecture-Decision-Records** — decisions are recorded through it.
* **Forge-Dependency-Analysis** — fine-grained dependency-level vetting within a selected technology.
* **Forge-Risk-Assessment** — candidate risks enter the register.
* **Forge-Migration-Assessment** — replacement selections trigger migration evaluation.

---

# Tooling Landscape (Illustrative, Non-Normative)

Evaluation *methods* (weighted decision matrices, architecture fitness functions) exemplify the discipline; no specific comparison platforms are normative. Concrete candidate technologies are always project decisions recorded in Project Documentation and ADRs.

---

# Tooling Boundary

This Skill defines evaluation discipline and criteria, never technology mandates. Any named tool, framework or platform is illustrative, swappable without Framework changes, and never referenced normatively (per the ADR-008 boundary discipline).

---

# Success Criteria

Forge-Technology-Evaluation is successful when:

* Criteria and weights are agreed before candidates are compared.
* Every score traces to recorded evidence, and evidence gaps are visible.
* The incumbent baseline was genuinely considered.
* The decision, trade-offs and revisit triggers are captured in an ADR.
* The outcome is a project decision — the Framework remains technology-neutral.
