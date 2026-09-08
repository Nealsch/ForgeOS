# Forge-CI-CD-Pipeline-Execution

```json
{
  "skill": "Forge-CI-CD-Pipeline-Execution",
  "category": "06-Delivery",
  "purpose": "Provide a structured capability for designing, interpreting and continuously improving continuous integration and delivery pipelines, including stage composition, gating strategy, secret-handling principles and pipeline failure triage.",
  "primaryTemplates": [],
  "supportingTemplates": [
    "Test-Plan-template.md"
  ]
}
```

## Purpose

Provide a structured capability for designing, interpreting and improving continuous integration and delivery pipelines.

This Skill ensures code moves from commit to deployable artefact through automated, gated stages, and that pipeline failures are triaged systematically rather than retried blindly.

---

## Responsibility

Forge-CI-CD-Pipeline-Execution is responsible for pipeline stage design, trigger and gating strategy, pipeline health interpretation, secret-handling principles and failure triage.

It does not author tests, build software, or perform post-deployment verification.

---

## When To Use

* Designing a pipeline for a new or existing project
* Deciding what gates protect each environment promotion
* Triaging a red pipeline
* Reviewing pipeline secrets handling
* Improving pipeline duration and flakiness

---

## When Not To Use

* Authoring unit or integration tests — use the Quality skills (Forge-Test-Planning)
* Producing the build itself — use Forge-Build-Automation
* Verifying a deployment succeeded — use Forge-Deployment-Verification

---

## Inputs

* Build capability and artefacts from Forge-Build-Automation
* Test suites and quality gates from the Quality category
* Environment promotion model from Forge-Infrastructure-as-Code

## Activities

1. Design pipeline stages: build → test → package → deploy, each with an owner and a gate.
2. Define triggers and gating strategy (which gates block merge, which block promotion).
3. Apply secret-handling principles: secrets injected, never committed, never logged.
4. Interpret pipeline health: distinguish flaky, broken and slow signals.
5. Triage failures: reproduce, isolate the stage, fix or raise — never blind-retry.

## Outputs

* Pipeline design with staged gates
* Gating and trigger policy
* Triage record for each significant failure

---

## Interaction With Other Skills

* **Forge-Build-Automation** — supplies the build stage.
* **Forge-Test-Planning** — supplies the verification gates.
* **Forge-Release-Management** — consumes the pipeline's promotion gates at release time.

---

## Standards Applied

* Testing Standards (gates reflect test levels)
* Security Standards (secret handling)

## Success Criteria

* Every environment promotion passes through a defined gate.
* No pipeline stage performs manual, undocumented steps.
* Failures are triaged to a cause, not retried until green.

## ForgeOS Principle

The pipeline is the project's quality reflex: what it does not gate, no one guarantees.
