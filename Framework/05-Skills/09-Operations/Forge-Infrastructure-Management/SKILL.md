# Forge-Infrastructure-Management

```json
{
  "skill": "Forge-Infrastructure-Management",
  "category": "09-Operations",
  "purpose": "Provide a structured capability for operating infrastructure across its lifecycle — provisioning, configuration, patching and decommissioning — including change discipline, capacity execution and environment inventory ownership.",
  "primaryTemplates": [],
  "supportingTemplates": [
    "Implementation-Documentation-template.md"
  ]
}
```

## Purpose

Provide a structured capability for operating infrastructure across its lifecycle.

This Skill covers the run-the-infrastructure capability: keeping provisioned environments current, changed deliberately, adequately sized and fully inventoried from creation to decommission.

---

## Responsibility

Forge-Infrastructure-Management is responsible for the infrastructure lifecycle (provision, configure, patch, decommission), infrastructure change discipline, executing capacity decisions from monitoring forecasts and owning the environment inventory.

It does not author infrastructure definitions and does not respond to incidents.

---

## When To Use

* Provisioning, modifying or decommissioning environments
* Planning and executing patching and platform upgrades
* Executing capacity decisions from monitoring forecasts
* Auditing what infrastructure actually exists

---

## When Not To Use

* Writing or reviewing infrastructure definitions — use Forge-Infrastructure-as-Code
* Responding to a live incident — use Forge-Incident-Management
* Defining backup strategy — use Forge-Backup-and-Recovery

---

## Inputs

* Infrastructure definitions from Forge-Infrastructure-as-Code
* Capacity forecasts from Forge-Production-Monitoring
* Change requirements from Forge-Operational-Change-Management

## Activities

1. Maintain the environment inventory: every environment known, owned and documented.
2. Execute lifecycle operations through the defined change discipline.
3. Plan and track patching and platform currency.
4. Execute capacity changes justified by monitoring forecasts.
5. Decommission deliberately: data handled, access revoked, records closed.

## Outputs

* Current environment inventory
* Patching and lifecycle records
* Capacity change execution records

---

## Interaction With Other Skills

* **Forge-Infrastructure-as-Code** — definitions govern what this skill operates.
* **Forge-Production-Monitoring** — supplies the capacity evidence.
* **Forge-Backup-and-Recovery** — restores depend on infrastructure this skill maintains.
* **Forge-Operational-Change-Management** — gates infrastructure changes.

---

## Standards Applied

* Security Standards (access control, decommissioning hygiene)

## Success Criteria

* No undocumented or unowned environment exists.
* Infrastructure changes flow through the change discipline, including "quick fixes".
* Decommissioning revokes access and data, not merely the instance.

## ForgeOS Principle

Inventory is the foundation of operations: you cannot operate what you cannot enumerate.
