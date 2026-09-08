# Forge-Infrastructure-as-Code

```json
{
  "skill": "Forge-Infrastructure-as-Code",
  "category": "06-Delivery",
  "purpose": "Provide a structured capability for defining infrastructure and environment configuration declaratively, including environment parity, configuration externalisation, environment promotion and drift awareness.",
  "primaryTemplates": [],
  "supportingTemplates": [
    "Implementation-Documentation-template.md"
  ]
}
```

## Purpose

Provide a structured capability for defining infrastructure and environment configuration declaratively.

This Skill ensures environments are reproducible from definitions, configurations are externalised from code, and differences between environments are deliberate rather than accidental.

---

## Responsibility

Forge-Infrastructure-as-Code is responsible for declarative infrastructure definition principles, environment parity strategy, configuration externalisation, environment promotion (development → staging → production), drift awareness and IaC review approach.

It does not operate running infrastructure and does not teach specific tools; technology selection belongs to project documentation.

---

## When To Use

* Establishing or restructuring environment definitions
* Diagnosing works-on-my-machine environment differences
* Reviewing infrastructure definitions before change
* Promoting a configuration change between environments
* Detecting or preventing configuration drift

---

## When Not To Use

* Day-to-day operation of provisioned infrastructure — use Forge-Infrastructure-Management
* Selecting a specific tool or cloud provider — project documentation decision
* Deploying application releases — use Forge-Release-Management and the pipeline

---

## Inputs

* Application configuration requirements
* Current environment definitions and their differences
* Environment inventory from Forge-Infrastructure-Management

## Activities

1. Define infrastructure declaratively; prohibit untracked manual changes.
2. Establish environment parity: environments differ only in declared configuration.
3. Externalise configuration from code (settings, secrets references, endpoints).
4. Define the promotion path and verify parity at each promotion.
5. Review IaC changes with the same discipline as source code.
6. Detect drift: compare reality to definitions and reconcile deliberately.

## Outputs

* Declarative definitions for each environment
* Configuration externalisation standard
* Promotion and drift-reconciliation records

---

## Interaction With Other Skills

* **Forge-Deployment-Verification** — verifies behaviour after promotion.
* **Forge-Production-Monitoring** — observes the environments these definitions create.
* **Forge-Infrastructure-Management** — operates what this skill defines.

---

## Standards Applied

* Security Standards (secrets never in definitions or history)
* Code Review standards apply to IaC changes

## Success Criteria

* Any environment can be recreated from its definitions alone.
* No configuration values are hard-coded in application source.
* Drift, when found, is reconciled by a deliberate decision, not ignored.

## ForgeOS Principle

If infrastructure is not defined as code, it is defined as memory — and memory does not survive team turnover.
