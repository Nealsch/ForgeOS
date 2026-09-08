# Forge-Rollback-Planning

```json
{
  "skill": "Forge-Rollback-Planning",
  "category": "06-Delivery",
  "purpose": "Provide a structured capability for designing, rehearsing and documenting rollback paths for deployments, including rollback triggers, revert-versus-roll-forward decisions and data-migration rollback considerations.",
  "primaryTemplates": [
    "RUNBOOK-template.md"
  ],
  "supportingTemplates": [
    "Release-Plan-template.md"
  ]
}
```

## Purpose

Provide a structured capability for designing, rehearsing and documenting rollback paths for deployments.

This Skill ensures every deployment carries a credible, rehearsed and documented way back, decided before the deployment, not during an incident.

---

## Responsibility

Forge-Rollback-Planning is responsible for rollback trigger definition, rollback path design (revert versus roll-forward), data-migration rollback considerations, rollback rehearsal strategy and rollback documentation.

It does not execute incident response and does not define backup or restore capability.

---

## When To Use

* Planning any deployment that changes production behaviour
* Introducing schema or data migrations
* Preparing deployment runbooks
* Reviewing a deployment plan for reversibility

---

## When Not To Use

* Responding to a live incident — use Forge-Incident-Management, which invokes this plan
* Defining backups and restore capability — use Forge-Backup-and-Recovery
* Verifying the deployment succeeded — use Forge-Deployment-Verification

---

## Inputs

* Deployment plan and change set
* Schema and data migration inventory
* Backup and recovery objectives from Forge-Backup-and-Recovery

## Activities

1. Define rollback triggers: observable conditions that mandate rolling back.
2. Design the rollback path: choose revert or roll-forward per change and record why.
3. Address data migrations: forward-only migrations need a compatibility strategy, not a fantasy of reversal.
4. Rehearse the rollback path before it is needed.
5. Document the plan in the deployment runbook.

## Outputs

* Rollback triggers and path per deployment
* Rehearsal evidence
* Runbook rollback section

---

## Interaction With Other Skills

* **Forge-Release-Management** — no release proceeds without this plan.
* **Forge-Backup-and-Recovery** — restore objectives bound what rollback can promise.
* **Forge-Incident-Management** — executes the plan under incident coordination.

---

## Standards Applied

* Documentation Standards (runbook completeness)

## Success Criteria

* Every deployment plan names its rollback triggers and path.
* Data-migration reversibility is a recorded decision, not an assumption.
* The rollback path has been rehearsed, not merely written.

## ForgeOS Principle

Anti-stranding applies to deployments: never enter a state you have not already planned the exit from.
