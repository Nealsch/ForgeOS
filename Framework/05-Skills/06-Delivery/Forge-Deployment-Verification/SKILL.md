# Forge-Deployment-Verification

```json
{
  "skill": "Forge-Deployment-Verification",
  "category": "06-Delivery",
  "purpose": "Provide a structured capability for verifying that a deployment behaves as intended in its target environment, including smoke-check definition, verification evidence capture and go/no-go contribution.",
  "primaryTemplates": [
    "Test-Plan-template.md"
  ],
  "supportingTemplates": [
    "RUNBOOK-template.md"
  ]
}
```

## Purpose

Provide a structured capability for verifying that a deployment behaves as intended in its target environment.

This Skill separates "the pipeline finished" from "the system works", and produces the evidence that closes the gap.

---

## Responsibility

Forge-Deployment-Verification is responsible for post-deployment verification strategy, smoke-check definition, verification evidence capture, go/no-go contribution and verification sign-off recording.

It does not author the test suite and does not monitor ongoing production health beyond the verification window.

---

## When To Use

* Immediately after any environment deployment
* Defining what a minimal viable post-deploy smoke-check contains
* Recording deployment verification evidence
* Contributing to a release go/no-go decision

---

## When Not To Use

* Writing the tests themselves — use the Quality skills
* Ongoing health observation after the verification window — use Forge-Production-Monitoring
* Deciding the release approval itself — Product Owner per Governance

---

## Inputs

* Deployment plan and expected behaviour
* Smoke-check candidates from test planning
* Environment configuration from Forge-Infrastructure-as-Code

## Activities

1. Define the verification strategy per environment tier (deeper checks further from production).
2. Define smoke checks: fast, deterministic, covering critical user paths.
3. Execute verification in the target environment, not a simulation.
4. Capture evidence: what was checked, when, against which version.
5. Record the verification outcome and feed the go/no-go decision.

## Outputs

* Verification evidence linked to the deployed version
* Smoke-check set, maintained per release
* Go/no-go input record

---

## Interaction With Other Skills

* **Forge-Release-Management** — verification evidence completes the release record.
* **Forge-Production-Monitoring** — receives custody after the verification window.
* **Forge-Rollback-Planning** — failed verification invokes the rollback path.

---

## Standards Applied

* Testing Standards (verification reflects risk)

## Success Criteria

* No deployment is considered complete without recorded verification evidence.
* Smoke checks run against the actual deployed version and environment.
* Failed verification triggers the documented rollback path, not a debate.

## ForgeOS Principle

Assumption is the enemy of delivery: a deployment is verified when evidenced, never when merely completed.
