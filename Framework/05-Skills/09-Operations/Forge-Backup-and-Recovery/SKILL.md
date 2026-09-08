# Forge-Backup-and-Recovery

```json
{
  "skill": "Forge-Backup-and-Recovery",
  "category": "09-Operations",
  "purpose": "Provide a structured capability for defining and validating data protection, including backup strategy, recovery-point and recovery-time objectives, restore rehearsal discipline and backup verification.",
  "primaryTemplates": [
    "RUNBOOK-template.md"
  ],
  "supportingTemplates": []
}
```

## Purpose

Provide a structured capability for defining and validating data protection.

This Skill ensures data can be recovered: backups are scoped and scheduled deliberately, recovery objectives are explicit, and restores are rehearsed before they are needed.

---

## Responsibility

Forge-Backup-and-Recovery is responsible for backup strategy (scope, frequency, retention), recovery-point and recovery-time objective setting, restore-rehearsal discipline and backup verification.

It does not execute disaster recovery during a live incident — Forge-Incident-Management coordinates that; this Skill owns the quality of the plan it executes.

---

## When To Use

* Establishing or reviewing data protection for a system
* Setting recovery-point and recovery-time objectives
* Planning or running a restore rehearsal
* Verifying that backups are actually usable

---

## When Not To Use

* Planning application rollback paths — use Forge-Rollback-Planning
* Executing recovery during an incident — use Forge-Incident-Management
* Operating the underlying storage — use Forge-Infrastructure-Management

---

## Inputs

* Data inventory and criticality classification
* Business tolerance for data loss and downtime
* Infrastructure inventory from Forge-Infrastructure-Management

## Activities

1. Define backup scope, frequency and retention per data criticality.
2. Set recovery-point and recovery-time objectives with the Product Owner.
3. Verify backups: completeness checks, integrity checks, restorability sampling.
4. Rehearse restores against the objectives; record evidence.
5. Review the strategy when data or architecture changes materially.

## Outputs

* Backup strategy with retention schedule
* Documented recovery objectives
* Restore rehearsal and verification evidence

---

## Interaction With Other Skills

* **Forge-Rollback-Planning** — rollback promises are bounded by recovery objectives.
* **Forge-Incident-Management** — consumes this capability during disaster recovery.
* **Forge-Infrastructure-Management** — maintains the platforms backups run on.

---

## Standards Applied

* Security Standards (backup data encrypted and access-controlled)

## Success Criteria

* Recovery objectives are documented and accepted, not implied.
* Restores are rehearsed on a schedule; a backup is only real once restored.
* Backup failures are detected and treated as incidents, not silenced.

## ForgeOS Principle

An unrestored backup is a rumour of safety: recovery capability is proven by rehearsal, never by assumption.
