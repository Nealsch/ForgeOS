# Forge-Log-Analysis

```json
{
  "skill": "Forge-Log-Analysis",
  "category": "09-Operations",
  "purpose": "Provide a structured capability for extracting evidence from application and system logs, including logging quality expectations, triage methods, cross-service correlation and incident evidence production.",
  "primaryTemplates": [],
  "supportingTemplates": [
    "RUNBOOK-template.md"
  ]
}
```

## Purpose

Provide a structured capability for extracting evidence from application and system logs.

This Skill turns raw log output into structured evidence: what happened, in what order, across which components — and defines what logs must contain for that to be possible.

---

## Responsibility

Forge-Log-Analysis is responsible for logging quality expectations, log-triage method, cross-service correlation and evidence extraction for incident and root-cause analysis.

It does not define monitoring signals and does not own the incident workflow.

---

## When To Use

* Investigating abnormal system behaviour
* Assessing whether a system's logging is adequate
* Correlating events across services during analysis
* Producing evidence for root-cause analysis

---

## When Not To Use

* Defining what to monitor and alert on — use Forge-Production-Monitoring
* Coordinating incident response — use Forge-Incident-Management
* Auditing for security events — the Security category owns that scope

---

## Inputs

* Log output from applications and infrastructure
* Incident context from Forge-Incident-Management
* Time and version references from deployment records

## Activities

1. Assess logging quality: are entries timestamped, versioned, correlated and free of secrets?
2. Triage: scope the time window, filter by severity and component.
3. Correlate events across services using shared identifiers and causality.
4. Reconstruct the sequence of events leading to the observed behaviour.
5. Produce the evidence summary for analysis and records.

## Outputs

* Logging quality assessment
* Event timeline and correlation findings
* Evidence summary attached to the incident record

---

## Interaction With Other Skills

* **Forge-Incident-Management** — consumes the evidence this skill produces.
* **Forge-Production-Monitoring** — signals say when to look; logs say what happened.
* **Forge-Debugging** — shares triage discipline for code-level investigation.

---

## Standards Applied

* Security Standards (no secrets in logs; log data access controlled)
* Documentation Standards (evidence recorded, not held in memory)

## Success Criteria

* Analyses rest on reconstructed timelines, not recollection.
* Logging gaps found during analysis become corrective actions.
* No investigation depends on log data containing secrets.

## ForgeOS Principle

Logs are the system's testimony: poorly kept logs perjure every future investigation.
