# Forge-Operational-Readiness

```json
{
  "skill": "Forge-Operational-Readiness",
  "category": "06-Delivery",
  "purpose": "Provide a structured capability for assessing whether a system is ready to operate in production, including readiness review design, readiness gate recommendation and operational handover packaging.",
  "primaryTemplates": [
    "Release-Plan-template.md"
  ],
  "supportingTemplates": [
    "RUNBOOK-template.md"
  ]
}
```

## Purpose

Provide a structured capability for assessing whether a system is ready to operate in production.

This Skill coordinates the readiness evidence — monitoring, rollback, documentation, ownership — and packages the recommendation that feeds the release go/no-go.

---

## Responsibility

Forge-Operational-Readiness is responsible for readiness review design, coordinating readiness evidence across skills, formulating the readiness recommendation and packaging the operational handover.

It does not perform the readiness activities themselves, and does not approve the release — approval is a Product Owner decision per Governance.

---

## When To Use

* Before the first production deployment of a system
* Before releases that introduce new operational surface
* Designing a readiness checklist for a project
* Packaging handover to the operating team

---

## When Not To Use

* Executing the deployment — the pipeline and release process own that
* Performing each underlying check — the responsible skills own those
* Approving the release — Product Owner per Governance

---

## Inputs

* Monitoring coverage from Forge-Production-Monitoring
* Rollback plan and rehearsal evidence from Forge-Rollback-Planning
* Verification evidence from Forge-Deployment-Verification

## Activities

1. Design the readiness review: monitoring in place, rollback tested, runbook current, ownership assigned, support path defined.
2. Collect evidence against each readiness criterion from the responsible skills.
3. Identify gaps and recommend resolve-or-accept decisions to the Product Owner.
4. Formulate the readiness recommendation for the go/no-go.
5. Package the operational handover: runbook, ownership, escalation, monitoring summary.

## Outputs

* Readiness review with per-criterion evidence
* Readiness recommendation
* Operational handover package

---

## Interaction With Other Skills

* **Forge-Release-Management** — feeds the release decision.
* **Forge-Production-Monitoring**, **Forge-Rollback-Planning**, **Forge-Deployment-Verification** — supply the evidence.

---

## Standards Applied

* Documentation Standards (handover completeness)

## Success Criteria

* Every readiness criterion has evidence, not assertion.
* Gaps are resolved or explicitly accepted by the Product Owner.
* The handover package lets a new operator act without tribal knowledge.

## ForgeOS Principle

Ready means evidenced: "we can operate it" is a conclusion drawn from proof, not optimism.
