# Forge-Production-Monitoring

```json
{
  "skill": "Forge-Production-Monitoring",
  "category": "09-Operations",
  "purpose": "Provide a structured capability for defining and maintaining the observation of production systems across health, performance and capacity, including signal definition, threshold strategy, trend forecasting and alert-worthiness judgement.",
  "primaryTemplates": [],
  "supportingTemplates": [
    "RUNBOOK-template.md"
  ]
}
```

## Purpose

Provide a structured capability for defining and maintaining the observation of production systems.

This Skill consolidates production monitoring, performance monitoring and capacity planning: what to observe, what normal looks like, what deserves an alert, and what the trends say about tomorrow.

---

## Responsibility

Forge-Production-Monitoring is responsible for monitoring strategy, signal and threshold definition, performance baseline maintenance, capacity forecasting and alert-worthiness judgement.

It does not respond to alerts and does not select monitoring tools; tooling choice belongs to project documentation.

---

## When To Use

* Establishing monitoring for a new or changed system
* Reviewing alert noise and signal quality
* Forecasting capacity from observed trends
* Defining what "healthy" means for a service

---

## When Not To Use

* Responding to a firing alert — use Forge-Incident-Management
* Investigating what logs show — use Forge-Log-Analysis
* Executing capacity changes — use Forge-Infrastructure-Management

---

## Inputs

* System architecture and critical user paths
* Incident history from Forge-Incident-Management
* Environment inventory from Forge-Infrastructure-Management

## Activities

1. Define the monitoring strategy across health, performance and capacity dimensions.
2. Define signals and thresholds grounded in observed baselines, not guesses.
3. Maintain performance baselines and detect regressions against them.
4. Forecast capacity from trends and feed procurement or scaling decisions.
5. Judge alert-worthiness: every alert must be actionable; everything else is a dashboard.

## Outputs

* Monitoring strategy and signal catalogue
* Thresholds with recorded rationale
* Capacity forecast and alert-quality review

---

## Interaction With Other Skills

* **Forge-Incident-Management** — consumes alerts this skill defines.
* **Forge-Log-Analysis** — complementary evidence source.
* **Forge-Infrastructure-Management** — executes capacity decisions.
* **Forge-Operational-Readiness** — supplies monitoring evidence.

---

## Standards Applied

* Security Standards (monitoring data handled per security requirements)

## Success Criteria

* Every critical user path is observed by a defined signal.
* Alerts are actionable; alert fatigue is measured and treated.
* Capacity forecasts exist before capacity becomes an incident.

## ForgeOS Principle

What is not observed cannot be operated: production systems speak only through the signals you define.
