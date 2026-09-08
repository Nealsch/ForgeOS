# Forge-Build-Automation

```json
{
  "skill": "Forge-Build-Automation",
  "category": "06-Delivery",
  "purpose": "Provide a structured capability for defining and maintaining repeatable, scripted build processes that transform source code into verified, correctly named and reproducible build artefacts.",
  "primaryTemplates": [],
  "supportingTemplates": [
    "Implementation-Documentation-template.md"
  ]
}
```

## Purpose

Provide a structured capability for defining and maintaining repeatable, scripted build processes.

This Skill establishes how source code is transformed into verified build artefacts consistently, reproducibly and independently of the developer machine.

---

## Responsibility

Forge-Build-Automation is responsible for the build capability: build scripting standards, dependency resolution discipline, reproducibility, artefact production and naming, and build failure diagnosis.

It does not execute continuous integration pipelines and does not configure deployment infrastructure.

---

## When To Use

* Establishing or improving a project build process
* Diagnosing non-reproducible or failing builds
* Defining build artefact naming and versioning conventions
* Reviewing build scripts for repeatability
* Onboarding a project whose build is machine-dependent

---

## When Not To Use

* Designing continuous integration stages — use Forge-CI-CD-Pipeline-Execution
* Defining infrastructure or environment configuration — use Forge-Infrastructure-as-Code
* Planning releases or versions — use Forge-Release-Management

---

## Inputs

* Project source code and dependency declarations
* Existing build scripts and their observed failure modes
* Artefact naming and versioning conventions from Forge-Release-Management

## Activities

1. Audit the current build for machine-dependence and manual steps.
2. Define the build scripting standard (single entry point, scripted, no interactive steps).
3. Establish dependency resolution discipline (locked, declared dependencies only).
4. Verify reproducibility: identical inputs produce identical artefacts.
5. Define artefact production and naming aligned to the release version.
6. Define a build failure diagnosis approach (read output, isolate the failing stage, reproduce locally).

## Outputs

* Build scripting standard applied to the project
* Reproducible, single-command build
* Named build artefacts traceable to source versions

---

## Interaction With Other Skills

* **Forge-CI-CD-Pipeline-Execution** — consumes the build this skill produces.
* **Forge-Release-Management** — supplies artefact naming and version rules.

---

## Standards Applied

* Documentation Standards (build documentation kept current)
* Debugging procedures govern build failure investigation.

## Success Criteria

* A clean checkout builds with one scripted command and no manual steps.
* Two builds from identical inputs produce equivalent artefacts.
* Artefact names identify the version they were built from.

## ForgeOS Principle

Automation removes human variance: a build that depends on one machine or one person is a defect waiting to occur.
