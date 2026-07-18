# Version

The `Version` directory defines the versioning strategy for the ForgeOS framework.

ForgeOS is developed as a product in its own right. This directory documents how the framework is versioned so that projects can identify the framework version they depend upon and understand the engineering changes introduced over time.

---

# Purpose

The `Version` directory provides:

* A consistent versioning strategy.
* Traceability between framework versions and Git history.

Per **ADR-002**, living project documentation—roadmap, backlog, release notes and change history—is stored in the `ForgeOS Project/` folder, not in the Framework.

---

# Versioning Strategy

ForgeOS follows **Semantic Versioning** using the format:

```text
Major.Minor.Patch
```

For example:

```text
1.0.0
1.1.0
1.2.3
2.0.0
```

---

## Major Version

The **Major** version changes when ForgeOS introduces breaking architectural changes.

Examples include:

* SDLC restructuring
* Framework redesign
* Breaking folder structure changes
* Changes requiring existing projects to migrate

Example:

```text
1.x.x → 2.0.0
```

---

## Minor Version

The **Minor** version changes when new capabilities are added without breaking compatibility.

Examples include:

* New Agent
* New Skill
* New Standard
* New Workflow component
* New Tooling platform
* New Templates
* New Framework features

Example:

```text
1.1.0 → 1.2.0
```

---

## Patch Version

The **Patch** version changes for backwards-compatible improvements.

Examples include:

* Documentation improvements
* Clarifications
* Bug fixes
* Minor framework refinements
* Bootstrap updates
* Typographical corrections

Example:

```text
1.2.3 → 1.2.4
```

Each release should record the corresponding Git commit hash for traceability.

---

# Project Documentation

Living project artefacts are maintained in `ForgeOS Project/`:

```text
ForgeOS Project/

ADRs/
Roadmap/
Backlog/
Release Notes/
```

These artefacts record the decisions, planning and history behind the framework's evolution.

---

# Release Process

The authoritative end-to-end release workflow — gates, steps, approval authority and emergency handling — is defined in `Framework/03-Governance/release-process.md`.

That document is the single source of truth for the release process. This file owns only the version-numbering scheme and does not duplicate the workflow.

---

# Design Philosophy

ForgeOS treats its own framework as a software product.

The version history documents how the framework evolves, while the roadmap communicates where it is going.

Maintaining accurate version information ensures that projects built on ForgeOS can identify the framework version they depend upon and understand the engineering changes introduced over time.
