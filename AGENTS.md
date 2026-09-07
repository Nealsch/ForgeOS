# AGENTS.md

# ForgeOS

**AI-Assisted Software Development Operating System**

---

# Purpose

This repository contains the **ForgeOS Framework**.

ForgeOS provides a structured, standards-driven Software Development Lifecycle (SDLC) that enables humans and AI to collaborate using a common engineering process.

The framework is intentionally **AI platform agnostic**. It is designed to operate consistently regardless of the coding assistant, LLM or IDE being used.

The purpose of every AI participant is not simply to generate code, but to contribute to the successful completion of an SDLC phase while adhering to engineering standards.

---

# Core Principles

ForgeOS is built on the following principles.

1. **The SDLC drives all work.**
   Work is organised around the software development lifecycle rather than around AI tools or prompts.

2. **Standards before implementation.**
   Engineering standards define how software is built. Agents must follow standards before making implementation decisions.

3. **Documentation before code.**
   Existing documentation should always be consulted before inspecting implementation.

4. **Small context, high accuracy.**
   Only load the information required for the current activity.

5. **Humans and AI follow the same process.**
   ForgeOS is designed so that a human developer can follow exactly the same workflow as an AI agent.

6. **Platform independence.**
   The engineering process must remain independent of any AI vendor, IDE or LLM.

---
## Authority Hierarchy

ForgeOS separates engineering knowledge from AI platform configuration.

The purpose of this hierarchy is to ensure there is a single source of truth for every engineering decision and to prevent conflicting instructions between the framework and AI tooling.

### Source of Truth

Authority flows from top to bottom.

```text
User Instructions
        │
        ▼
AGENTS.md
        │
        ▼
Framework
│
├── Workflow
├── Standards
├── Governance
├── Agents
├── Skills
├── Prompts
├── Templates
├── Examples
├── Collaboration Orchestration
└── Glossary
        │
        ▼
Project Documentation
        │
        ▼
Tooling
│
├── Platforms
└── Adapters
        │
        ▼
Platform Runtime Configuration
(e.g. .clinerules)
```

### Responsibilities

| Layer                               | Responsibility                                | Owns Engineering Decisions |
| ----------------------------------- | --------------------------------------------- | -------------------------- |
| User Instructions                   | Task-specific direction                       | Yes                        |
| AGENTS.md                           | Framework governance and repository operation | Yes                        |
| Workflow                            | SDLC phases, deliverables and quality gates   | Yes                        |
| Standards                           | Engineering practices                         | Yes                        |
| Governance                          | Uniform lifecycle control (change, release, version, compatibility) | Yes                        |
| Agents                              | Engineering responsibilities                  | No                         |
| Skills                              | Engineering capabilities                      | No                         |
| Templates                           | Standard document structures                  | No                         |
| Examples                            | Reference implementations                     | No                         |
| Project Documentation               | Project-specific knowledge                    | No                         |
| Tooling                             | Integration with AI platforms                 | No                         |
| Runtime Configuration (.clinerules) | AI platform behaviour                         | No                         |

### Runtime Configuration Policy

Runtime configuration exists only to adapt an AI platform to ForgeOS.

Runtime configuration **must never** define or modify:

* Software Development Lifecycle
* Engineering standards
* Architecture
* Security requirements
* Coding conventions
* Testing requirements
* Documentation standards
* Agent responsibilities
* Project rules

These are owned exclusively by the ForgeOS Framework.

### Purpose of `.clinerules`

The `.clinerules` folder provides runtime instructions that help Cline operate effectively within a ForgeOS repository.

Typical responsibilities include:

* Context loading behaviour
* Response formatting
* Tool usage preferences
* Prompt orchestration
* Platform-specific execution guidance

The contents of `.clinerules` must always support the Framework and must never replace or contradict it.

### Conflict Resolution

If conflicting instructions are encountered, the following precedence applies:

1. User Instructions
2. AGENTS.md
3. Framework
4. Project Documentation
5. Tooling
6. Runtime Configuration

A lower layer must never override a higher layer.

If a conflict is detected between `.clinerules` and the Framework, the Framework is authoritative and the runtime configuration must be updated to restore alignment.


---

# Repository Structure

```
ForgeOS/

├── Framework/
├── ForgeOS Project/       (ADRs, Backlog, Roadmap, Release Notes, Scripts)
├── Tooling/
├── .clinerules/
├── README.md
└── AGENTS.md
```

The **Framework** contains reusable engineering knowledge.

The **ForgeOS Project** folder contains living project documentation for the ForgeOS framework itself (ADRs, Backlog, Roadmap, Release Notes and project Scripts per ADR-006). It is not part of the reusable template.

---

# Framework

The Framework contains the reusable engineering system.

```
framework/

workflow/
standards/
governance/
agents/
skills/
prompts/
templates/
examples/
onboarding/
assets/
collaboration orchestration/
glossary/
```

Responsibilities:

| Folder                      | Purpose                                                        |
| --------------------------- | -------------------------------------------------------------- |
| workflow                    | Defines the SDLC, phases, gates and deliverables               |
| standards                   | Long-lived engineering standards                               |
| governance                  | Uniform lifecycle control (change, release, version, compatibility) |
| agents                      | Specialist engineering roles responsible for work              |
| skills                      | Individual capabilities used by agents                         |
| prompts                     | Reusable prompt assets                                         |
| templates                   | Standard engineering document templates                        |
| examples                    | Reference implementations                                      |
| onboarding                  | Framework documentation                                        |
| assets                      | Diagrams, branding and supporting media                        |
| collaboration orchestration | Coordinates human–AI collaboration and engineering execution   |
| glossary                    | Shared terminology and definitions                             |

---

# Tooling

The Tooling layer integrates ForgeOS with AI platforms.

```
tooling/

platforms/
adapters/
capabilities/
```

Responsibilities:

| Folder       | Purpose                                                 |
| ------------ | ------------------------------------------------------- |
| platforms    | Profiles for supported AI tools                         |
| adapters     | Integration mechanisms between ForgeOS and AI platforms |
| capabilities | Supported feature matrix and compatibility information  |

The Tooling layer must never define engineering standards or workflow behaviour.

---

# Software Development Lifecycle

ForgeOS organises all work into the following SDLC phases.

1. Specify
2. Design
3. Develop
4. Verify
5. Release
6. Operate
7. Improve

Each phase contains:

* Purpose
* Inputs
* Activities
* Deliverables
* Applicable Standards
* Responsible Agents
* Exit Criteria
* Quality Gate

A phase is considered complete only after its Exit Criteria have been met and its Quality Gate review has been successfully passed. A **Quality Gate** is the formal review at the end of an SDLC phase that verifies the phase's Exit Criteria before work proceeds.

---

# Context Loading Strategy

Always gather context in the following order.

1. Read AGENTS.md.
2. Identify the current SDLC phase.
3. Read the relevant workflow documentation.
4. Read applicable engineering standards.
5. Read applicable engineering rules.
6. Read the required templates or examples.
7. Read only the project documentation required.
8. Inspect implementation only when necessary.

Avoid loading unnecessary files.

Preserve context for reasoning rather than repository exploration.

---

# Engineering Guidance Hierarchy

Within the Framework, engineering guidance has the following canonical precedence.

```
Workflow
    │
    ▼
Standards
    │
    ▼
Governance
    │
    ▼
Agent Responsibilities
    │
    ▼
Skill Implementation
```

* **Workflow** owns the SDLC — phases, gates and deliverables.
* **Standards** define how work is performed.
* **Governance** applies uniform lifecycle control (change, release, version, compatibility) on top of the Workflow and Standards.
* **Project Rules** are *not* part of the Framework hierarchy. Project-specific constraints belong to **Project Documentation** and apply within, never against, the Framework.

If two Framework documents conflict, the document higher in this hierarchy takes precedence. Project rules may tighten but never relax Framework requirements.

---

# Agent Responsibilities

ForgeOS Agents represent **specialist engineering roles only**.

Agents do not own the engineering process and do not manage the overall software project.

Each Agent is responsible only for the specialist engineering work assigned during the current SDLC phase.

Agents:

* perform specialist engineering work
* produce deliverables
* follow standards
* obey project rules
* participate in quality gates

Agents are invoked by the **Collaboration Orchestration** layer and coordinated by the **AI Program Manager**.

Agents must not redefine workflow or engineering standards.

The **AI Program Manager** is the persistent AI collaborator through which the Product Owner interacts with ForgeOS. The AI Program Manager is not a ForgeOS Agent and does not perform specialist engineering activities directly.

---

# Skills

Skills are reusable engineering capabilities.

Skills may be shared by multiple agents.

Examples include:

* Forge-API-Design
* Forge-Database-Design
* Forge-Frontend-Development
* Forge-Security-Review
* Forge-Performance-Optimisation
* Forge-Test-Strategy
* Forge-Documentation-Generation

Skill names describe **engineering capabilities**, not specific technologies. Technology-specific knowledge (for example, a particular framework or language) belongs in Project Documentation, not in the Skills catalogue.

Skills never own workflow.

---

# Definition of Done

An SDLC phase is complete only when:

* Required deliverables exist.
* Applicable standards have been followed.
* Applicable project rules have been satisfied.
* Required reviews have completed.
* The phase Quality Gate has passed.
* Documentation has been updated where necessary.

Only then may work proceed to the next SDLC phase.

---

# Guiding Philosophy

ForgeOS is an engineering operating system.

The workflow defines **what** must happen.

Standards define **how** work should be performed.

Rules define **project constraints**.

Agents perform the work.

Skills provide the capability.

Tooling enables execution.

The SDLC remains the single source of truth.
