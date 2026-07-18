# Agents

The `Agents` directory defines the **specialist engineering roles** used by the ForgeOS Framework.

Agents represent **responsibility**, not capability.

Each Agent performs a well-defined specialist role within the Software Development Lifecycle (SDLC) and is accountable for producing specific deliverables while adhering to the Framework's Workflow, Standards and Governance.

Agents are **not** persistent conversational entities and do **not** manage the overall software project. They are invoked by the **Collaboration Orchestration** layer and coordinated by the **AI Program Manager**.

The **AI Program Manager** is the persistent AI collaborator through which the Product Owner interacts with ForgeOS. The AI Program Manager is **not** a ForgeOS Agent and does **not** perform specialist engineering activities directly.

Agents do not define engineering practices or project constraints. Instead, they apply them.

---

# Purpose

The purpose of an Agent is to perform specialist engineering work within a specific SDLC phase.

An Agent:

* accepts defined inputs
* follows the applicable Workflow
* applies the relevant engineering Standards
* uses one or more reusable Skills
* produces one or more deliverables
* participates in quality gates

Agents are the specialist engineering execution layer of the ForgeOS Framework.

---

# Engineering Responsibilities

Each agent has clearly defined responsibilities.

Examples include:

* Product Manager
* Architect
* Backend Engineer
* Frontend Engineer
* QA Engineer
* Security Engineer
* DevOps Engineer
* Technical Writer

Additional Agents may be introduced provided they represent a genuine specialist engineering role rather than a technology, implementation detail or project coordination function.

---

# Responsibilities Excluded

Per **ADR-004**, ForgeOS Agents do **not**:

* Manage the overall software project.
* Maintain long-term project context.
* Coordinate other Agents.
* Determine the overall SDLC progression.
* Decide which engineering disciplines should be engaged.
* Select the project's execution strategy.
* Act as the primary interface with the Product Owner.

These responsibilities belong to the **AI Program Manager** and the **Collaboration Orchestration** layer.

---

# Relationship to Skills

Agents perform work.

Skills provide capabilities.

A single agent may use many skills, and a single skill may be shared by many agents.

```text
SDLC Phase
      │
      ▼
Agent
      │
      ▼
Skills
      │
      ▼
Deliverables
```

For example:

```text
Backend Engineer
│
├── API Design
├── Database Design
├── Authentication
├── Performance Optimisation
└── Testing
```

The Backend Engineer is the agent.

API Design, Authentication and Testing are skills.

---

# Relationship to the Framework

Agents operate within the ForgeOS Framework.

They must follow:

* Workflow
* Standards
* Governance

They may use:

* Skills
* Templates
* Examples
* Prompts

Agents never define or modify engineering standards.

---

# Agent Contract

Every agent should be defined consistently.

Each agent definition should describe:

* Purpose
* Responsibilities
* Applicable SDLC phases
* Expected inputs
* Expected deliverables
* Required skills
* Applicable standards
* Quality gate participation

This allows agents to be implemented consistently across different AI platforms.

---

# Platform Independence

Agents are platform independent.

They represent engineering roles rather than implementation details.

Whether an agent is executed by Cline, Codex, Claude Code, Cursor or another AI platform is determined by the Tooling layer and does not alter the agent's responsibilities.

---

# Design Principles

ForgeOS agents follow these principles:

* Single responsibility.
* Clear ownership.
* Standards-driven execution.
* Reusable across projects.
* Independent of AI platform.
* Independent of programming language where practical.

An agent should never duplicate knowledge that already exists elsewhere in the Framework.

---

# Authority

Agents derive their authority from the Framework.

Authority flows in the following order:

```text
Workflow
      │
      ▼
Standards
      │
      ▼
Governance
      │
      ▼
Agent
      │
      ▼
Skills
      │
      ▼
Deliverables
```

An Agent must never override the Workflow, Standards or Governance.

If a conflict exists, the higher authority always prevails.

---

# Directory Structure

Each agent should reside in its own directory.

Example:

```text
agents/

    backend-engineer/

        README.md

    architect/

        README.md

    qa-engineer/

        README.md

    security-engineer/

        README.md
```

Each agent directory contains the documentation required to define that engineering role within the ForgeOS Framework.

---

# Guiding Philosophy

Agents are responsible for outcomes.

Skills provide capability.

Workflow provides direction.

Standards ensure consistency.

Together they enable a repeatable, platform-independent approach to AI-assisted software engineering.
