# Forge-Risk-Assessment

```json
{
  "skill": "Forge-Risk-Assessment",
  "category": "01-Product",
  "purpose": "Forge-Risk-Assessment provides the capability to identify, analyse, evaluate and treat project and engineering risks across the Specify and Design phases — producing a maintained risk register in which every risk has an owner, a likelihood/impact judgement, a treatment decision and a review trigger. It covers delivery, technical and operational risk; security-specific threat analysis is owned by Forge-Threat-Modelling.",
  "outputs": [
    "Risk register with treatments and owners",
    "Risk-based input to prioritisation and planning",
    "Contingency and escalation recommendations"
  ],
  "primaryTemplates": [
    "Security-Risk-Assessment-template.md"
  ],
  "supportingTemplates": [
    "Prioritisation-Matrix-template.md"
  ]
}
```

## Purpose

Forge-Risk-Assessment makes uncertainty explicit and manageable before it becomes incident. It provides a single, repeatable risk discipline used at Specify (is this project viable? what could stop it?) and at Design (what could this solution get wrong?), and reused at Improve (what did materialise?).

It is technology-independent. Used primarily by the **AI Program Manager**, **Product Owner** and **Software Architect**; consumed by Forge-Prioritisation, Forge-Solution-Architecture and phase gates.

---

# Responsibility

Forge-Risk-Assessment is responsible for:

* Identifying risks across delivery, technical, operational, organisational and compliance dimensions.
* Analysing each risk: cause, consequence, likelihood and impact on an agreed scale.
* Evaluating acceptability against the Product Owner's risk appetite.
* Deciding and recording treatment: mitigate, transfer, avoid, or accept — each with an owner.
* Defining review triggers and monitoring indicators for accepted and treated risks.
* Feeding risk severity into Forge-Prioritisation and phase-gate evidence.
* Maintaining the register as a living artefact through the SDLC.

It does **not**:

* Perform security threat analysis of a design (Forge-Threat-Modelling).
* Assess accumulated technical debt (Forge-Technical-Debt-Assessment).
* Execute contingency plans (Operate-phase skills).
* Decide risk acceptance — the Product Owner disposes; this Skill proposes.

---

# When To Use

* During **Specify**, to establish project viability and the initial risk baseline.
* During **Design**, to evaluate solution risks and feed architectural decisions.
* When a material change, new dependency or new constraint is introduced.
* At phase gates, as risk evidence for the go/no-go review.

# When Not To Use

* For design-time security threats specifically — use Forge-Threat-Modelling (its findings feed this Skill's register).
* To quantify existing maintenance burden — use Forge-Technical-Debt-Assessment.
* To sequence work by value alone — use Forge-Prioritisation (which consumes this Skill's severity output).

---

# Inputs

* Scope definition and requirements (Forge-Scope-Definition, Forge-Requirements-Analysis).
* Solution architecture and ADRs (Forge-Solution-Architecture).
* Threat model findings (Forge-Threat-Modelling).
* Constraints, assumptions and stakeholder concerns.

# Method

## Step 1 — Establish Context
Confirm objectives, scope baseline and the Product Owner's risk appetite (what loss levels are unacceptable).

## Step 2 — Identify
Enumerate risks per dimension using the inputs; capture cause → event → consequence for each.

## Step 3 — Analyse
Score likelihood and impact on the agreed scale; note confidence and information gaps.

## Step 4 — Evaluate
Compare each risk against appetite; classify as acceptable, tolerable-with-treatment, or unacceptable.

## Step 5 — Treat
Select mitigation, transfer, avoidance or acceptance for each risk; assign an owner and a due action.

## Step 6 — Record
Write the register: every risk with owner, score, treatment, and review trigger.

## Step 7 — Monitor And Review
Re-score on triggers and at phase gates; retire stale risks; feed severity changes to Forge-Prioritisation.

---

# Outputs

* Maintained risk register (risk, cause, consequence, score, treatment, owner, trigger).
* Risk-based recommendations to prioritisation and planning.
* Escalation items for unacceptable risks.

---

# Standards Applied

* Governance Standards (change and release risk)
* Decision-Making ("AI proposes, Product Owner disposes")
* Documentation Standards

---

# Interaction With Other Skills

* **Forge-Threat-Modelling** — security-threat analysis at Design; findings feed this register.
* **Forge-Technical-Debt-Assessment** — debt items with materialised risk enter this register.
* **Forge-Prioritisation** — consumes risk severity alongside value.
* **Forge-Solution-Architecture** — consumes design-phase risk input; ADRs record risk-driven decisions.
* **Forge-Scope-Definition** — supplies the context boundary for identification.
* **Forge-Release-Readiness-Assessment** — residual risk evidence for the Verify-to-Release gate.

---

# Success Criteria

Forge-Risk-Assessment is successful when:

* Every identified risk has an owner, a score, a treatment decision and a review trigger.
* No risk is silently accepted — acceptance is an explicit Product Owner decision.
* Phase-gate reviews can see current residual risk at a glance.
* Materialised risks are traceable from register to outcome, improving future estimation.