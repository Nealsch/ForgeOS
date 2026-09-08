# Forge-Release-Management

```json
{
  "skill": "Forge-Release-Management",
  "category": "06-Delivery",
  "purpose": "Provide a structured capability for planning, classifying, versioning and executing software releases, including Semantic Versioning application, release records, approval routing and version-pointer hygiene across project artefacts.",
  "primaryTemplates": [
    "Release-Plan-template.md"
  ],
  "supportingTemplates": [
    "Work-Item-template.md"
  ]
}
```

## Purpose

Provide a structured capability for planning, classifying, versioning and executing software releases.

This Skill ensures every release is deliberate: correctly versioned, properly recorded, approved through the defined routing and traceable across all project artefacts.

---

## Responsibility

Forge-Release-Management is responsible for release scope definition and classification, Semantic Versioning application, release notes and release-record production, approval routing, version-pointer hygiene and release scheduling.

Governance owns the release process itself. This Skill provides the judgement capability to execute that process well; where the Skill and `03-Governance/release-process.md` appear to differ, Governance is authoritative.

---

## When To Use

* Planning any release, however small
* Deciding the next version number
* Producing release notes and release records
* Routing a release for approval
* Auditing version consistency across a repository

---

## When Not To Use

* Classifying a change as Breaking, Additive or Patch — apply `03-Governance/compatibility.md`; that document owns the classification
* Running the release workflow steps themselves — follow the Governance release process
* Deciding deployment readiness — use Forge-Operational-Readiness

---

## Inputs

* Change set intended for release and its work items
* Current version and its version pointers
* Compatibility classification per Governance

## Activities

1. Define release scope from the approved change set.
2. Classify the release per the compatibility policy (Breaking changes require Product Owner acceptance of the risks/rewards statement).
3. Apply Semantic Versioning to select the next version.
4. Produce release notes and the release record.
5. Route for approval per the release process.
6. Update all version pointers (documentation, manifests, bindings) and verify hygiene.

## Outputs

* Versioned release with notes and release record
* Approval routing evidence
* Consistent version pointers across the repository

---

## Interaction With Other Skills

* **Forge-CI-CD-Pipeline-Execution** — promotion gates execute the release.
* **Forge-Rollback-Planning** — a release without a rollback plan is not ready.
* **Forge-Operational-Readiness** — feeds the release go/no-go.
* **Forge-Session-Management** — release activity is typically a dedicated session.

---

## Standards Applied

* Documentation Standards (release notes)
* Governance: compatibility policy and release process

## Success Criteria

* Version number reflects the compatibility classification of the changes.
* Release record exists with approval evidence.
* No stale version pointers remain after the release.

## ForgeOS Principle

A release is a promise: the version number, the notes and the artefact must all tell the same truth.
