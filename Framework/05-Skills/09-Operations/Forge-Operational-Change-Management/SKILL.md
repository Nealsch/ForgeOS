# Forge-Operational-Change-Management

```json
{
  "skill": "Forge-Operational-Change-Management",
  "category": "09-Operations",
  "purpose": "Provide a structured capability for governing operational changes to running systems, including change classification, change-window and approval discipline, change recording and emergency-change handling.",
  "primaryTemplates": [],
  "supportingTemplates": [
    "Work-Item-template.md"
  ]
}
```

## Purpose

Provide a structured capability for governing operational changes to running systems.

This Skill consolidates operational change management: every change to a running system is classified, approved at the right level, performed in a deliberate window, recorded and verified.

---

## Responsibility

Forge-Operational-Change-Management is responsible for operational change classification (standard, normal, emergency), change-window and approval discipline, change recording, post-change verification linkage and emergency-change handling.

It does not govern the SDLC or framework change lifecycle. `03-Governance/change-management.md` is authoritative for product and framework changes; this Skill must reference and never contradict Governance.

---

## When To Use

* Making any change to a running production system outside a code release
* Classifying how much discipline an operational change requires
* Handling an emergency change made during incident response
* Auditing what changed in production, when and why

---

## When Not To Use

* Shipping product changes — the Governance change and release processes own that
* Coordinating incident response — use Forge-Incident-Management, which routes emergency changes here
* Verifying a deployment — use Forge-Deployment-Verification

---

## Inputs

* Change intent and its risk profile
* Maintenance and change-window constraints
* Incident records where emergency changes originate

## Activities

1. Classify the change: standard (pre-approved pattern), normal (reviewed), emergency (expedited with retro-approval).
2. Define windows and approval levels per classification.
3. Record the change: what, why, who, when, risk, and rollback reference.
4. Link post-change verification to the change record.
5. Close emergency changes with retrospective review and classification of future prevention.

## Outputs

* Change classification standard
* Change records with verification linkage
* Emergency-change retrospective records

---

## Interaction With Other Skills

* **Forge-Incident-Management** — emergency changes flow through this skill for closure.
* **Forge-Deployment-Verification** — verifies the change took effect.
* **Forge-Rollback-Planning** — every change record references its exit path.

---

## Standards Applied

* Governance change management (authoritative; this skill aligns to it)
* Security Standards (changes respect access control)

## Success Criteria

* No unrecorded change reaches a running system.
* Emergency changes receive retrospective review without exception.
* Change records answer what, why, who and how to undo — always.

## ForgeOS Principle

Discipline scales with risk: the emergency path exists, but it exits through the record, not around it.
