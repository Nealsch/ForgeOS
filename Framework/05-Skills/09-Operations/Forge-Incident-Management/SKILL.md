# Forge-Incident-Management

```json
{
  "skill": "Forge-Incident-Management",
  "category": "09-Operations",
  "purpose": "Provide a structured capability for classifying, coordinating and resolving production incidents, including severity approach, response workflow, structured root-cause analysis and corrective-action tracking.",
  "primaryTemplates": [],
  "supportingTemplates": [
    "RUNBOOK-template.md",
    "Work-Item-template.md"
  ]
}
```

## Purpose

Provide a structured capability for classifying, coordinating and resolving production incidents.

This Skill consolidates incident management and root-cause analysis: structured response under pressure, blame-free learning afterwards, and corrective actions that reach the backlog.

---

## Responsibility

Forge-Incident-Management is responsible for incident classification and severity approach, the response workflow (detect → triage → mitigate → resolve), communication duties, structured root-cause analysis and corrective-action tracking.

It does not perform rollbacks itself — it invokes the plan from Forge-Rollback-Planning — and does not tolerate blame-oriented review.

---

## When To Use

* Responding to a production incident or alert
* Classifying severity and communication needs
* Running post-incident root-cause analysis
* Tracking corrective actions to closure

---

## When Not To Use

* Planning rollback paths in advance — use Forge-Rollback-Planning
* Handling planned operational changes — use Forge-Operational-Change-Management
* Defining the monitoring that detected the incident — use Forge-Production-Monitoring

---

## Inputs

* Alerts and signals from Forge-Production-Monitoring
* Log evidence from Forge-Log-Analysis
* Rollback plans from Forge-Rollback-Planning

## Activities

1. Classify the incident: severity, impact, communication obligation.
2. Triage: stabilise first; diagnosis serves mitigation, not curiosity.
3. Mitigate using the least risky effective action, invoking rollback plans where appropriate.
4. Resolve and verify restoration against pre-incident baselines.
5. Conduct structured root-cause analysis: causes, not culprits.
6. Track corrective actions into the backlog until closed.

## Outputs

* Incident record with timeline and decisions
* Root-cause analysis document
* Corrective actions in the backlog with owners

---

## Interaction With Other Skills

* **Forge-Rollback-Planning** — provides the pre-planned exit paths.
* **Forge-Log-Analysis** — supplies evidence during triage and analysis.
* **Forge-Operational-Change-Management** — governs emergency changes made during response.

---

## Standards Applied

* Security Standards (security incidents follow the security response path)

## Success Criteria

* Mitigation precedes diagnosis during response.
* Every significant incident receives root-cause analysis and corrective actions.
* Corrective actions are tracked to closure, not filed and forgotten.

## ForgeOS Principle

Incidents are tuition: the system already charged you — the analysis is how you get the education.
