# Framework Standard

The Framework Standard defines the architectural conventions used to build, organise and extend the ForgeOS framework.

Unlike the Engineering Standards, which govern software development, the Framework Standard governs the design and maintenance of ForgeOS itself.

All framework components must comply with this standard to ensure consistency, discoverability and maintainability.

---

# Purpose

The Framework Standard establishes:

* Repository organisation
* Directory structure conventions
* Naming conventions
* Documentation conventions
* Cross-reference conventions
* Framework extension rules

It provides the single source of truth for contributors extending ForgeOS.

---
## Workspace Model

ForgeOS adopts a two-root workspace model.

Every project developed using ForgeOS should be opened in a multi-root workspace containing:

1. The ForgeOS framework.
2. The active project.

The ForgeOS framework provides reusable engineering knowledge including Agents, Skills, Standards, Workflows and Templates.

The active project contains all project-specific documentation, source code, work tracking and resources.

Project repositories must not contain copies of the ForgeOS framework.

AI agents shall treat the ForgeOS framework as shared engineering guidance and the project as the implementation being developed.

Changes to the framework should only be made while actively developing ForgeOS itself.

---

# Design Principles

ForgeOS is designed according to the following principles:

* Single Responsibility
* Single Source of Truth
* Explicit over Implicit
* Convention over Configuration
* Platform Independence
* Human and AI Readability
* Incremental Evolution

Framework components should be simple, modular and self-contained.

---

# Repository Structure

The ForgeOS repository is organised into distinct top-level areas.

```text
ForgeOS/

Framework/
Tooling/
Version/
Scripts/

.clinerules/

AGENTS.md
README.md
```

Each top-level area has a clearly defined responsibility.

---

# Framework Structure

The Framework is organised into ordered architectural components.

```text
Framework/

01-Workflow/
02-Standards/
03-Governance/
04-Agents/
05-Skills/
06-Prompts/
07-Templates/
08-Examples/
09-Onboarding/
10-Assets/
11-Collaboration Orchestration/
12-Glossary/
```

Numeric prefixes communicate architectural sequence.

Future components should continue the numbering convention.

---

# Directory Naming Convention

Directories follow these rules.

## Ordered Components

Directories representing an architectural sequence use a two-digit numeric prefix.

Example:

```text
01-Workflow
02-Standards
03-Governance
```

This preserves ordering while allowing future expansion.

---

## Unordered Components

Directories representing collections of peers remain unnumbered.

Examples include:

* Agents
* Skills
* Platform profiles

Examples:

```text
Architect
Backend Engineer
QA Engineer

API Design
Authentication
Testing
```

Alphabetical ordering should be used where practical.

---

# Engineering Object Convention

Every ForgeOS engineering object occupies its own directory.

The directory name is the canonical name of the object.

The primary documentation for the object is contained within:

```text
README.md
```

Supporting files may be added without changing the object's public structure.

Example:

```text
QA Engineer/

    README.md
```

---

# README Convention

Every engineering object should contain a `README.md`.

The README serves as the primary definition of that object.

Additional supporting files may be added as required.

Container-only directories that exist solely to organise homogeneous artefacts do not require a README.

Examples include:

* Version/Releases
* Assets/Diagrams
* Assets/Icons
* Assets/Branding

---

# Standard Object Pattern

Framework objects should follow a consistent structure.

```text
Object Name/

    README.md

    examples/
    templates/
    resources/
```

Additional subdirectories are optional and should only be introduced when they provide clear value.

---

# Cross-Reference Convention

Framework components should reference one another rather than duplicate information.

Examples:

* Workflow references Agents.
* Agents reference Skills.
* Agents reference Standards.
* Workflow references Templates.
* Skills reference Standards.

Information should have a single authoritative location.

---

# Single Source of Truth

ForgeOS avoids duplication.

Each concept must have one authoritative owner.

| Concept                   | Authoritative Location       |
| ------------------------- | ---------------------------- |
| SDLC                      | Workflow                     |
| Engineering Practices     | Standards                    |
| Project Constraints       | Governance                   |
| Engineering Roles         | Agents                       |
| Engineering Capabilities  | Skills                       |
| Document Formats          | Templates                    |
| Collaboration Execution   | Collaboration Orchestration  |
| AI Integration            | Tooling                      |
| Runtime Behaviour         | `.clinerules`                |

If information exists elsewhere, it should reference the authoritative source rather than repeat it.

---

# Framework Extension

New framework components should extend the existing architecture rather than replace it.

When introducing a new object:

1. Create its directory.
2. Add a `README.md`.
3. Define its purpose.
4. Link it to related framework components.
5. Avoid duplicating existing concepts.

Framework growth should remain evolutionary rather than disruptive.

---

# Runtime Configuration

Runtime configuration is not part of the Framework.

Platform-specific runtime configuration (for example `.clinerules`) exists solely to adapt AI tooling to ForgeOS.

Runtime configuration must never define or override:

* Workflow
* Standards
* Governance
* Agents
* Skills
* Templates
* Collaboration Orchestration

The Framework remains the authoritative source of engineering knowledge.

---

# Bootstrap Convention

The ForgeOS bootstrap script is the canonical definition of the repository structure.

Any architectural change to the Framework should first be reflected in the bootstrap script before implementation.

This ensures that new repositories are created consistently and that the framework structure remains synchronised with its documentation.

---

# Authority

The Framework Standard governs the construction of ForgeOS itself.

If a convention is not defined elsewhere, this document is authoritative.

All contributors—human and AI—should consult this standard before introducing new framework components or modifying the repository structure.
