# Agent Selection

## Purpose

Agent Selection defines how Collaboration Orchestration identifies and engages the correct ForgeOS Agents for a given engineering task.

It ensures that the right specialist engineering role—or combination of roles—is applied to each activity within the Software Development Lifecycle.

---

## Selection Principles

Agent selection should be based on:

* The current SDLC phase
* The type of engineering activity required
* The deliverable expected
* The skills and expertise required
* Applicable Standards

Agents are never selected based on availability, preference or implementation technology.

---

## Selection Process

The general process for selecting Agents is:

1. **Identify the engineering task** — Understand what work is being requested.
2. **Determine the SDLC phase** — Identify where the task sits within the Workflow.
3. **Identify the required deliverables** — Determine what outputs are expected.
4. **Match deliverables to Agent responsibilities** — Select the Agent whose responsibilities align with the required deliverables.
5. **Identify supporting Agents** — Determine whether additional specialist roles are required.

---

## Single vs Multiple Agents

Some activities require a single Agent.

Example:

```text
Task: Write API specification
SDLC Phase: Design
Agent: Architect
```

Other activities require multiple Agents working in coordination.

Example:

```text
Task: Design authentication system
SDLC Phase: Design
Agents:
- Architect (solution design)
- Security Engineer (threat modelling)
- Backend Engineer (implementation feasibility)
```

Example (onboarding / Improve phase, per **ADR-007**):

```text
Task: Assess the structure and debt of an inherited codebase
SDLC Phase: Specify (onboarding) or Improve
Agents:
- Codebase Analyst (architecture assessment, debt, security surface)
Supporting:
- Architect (design decisions from the assessment)
- Security Engineer (formal threat model from the surface)
- Technical Writer (publish generated docs)
```

---

## Agent Coordination

When multiple Agents are engaged, Collaboration Orchestration is responsible for:

* Defining the order of Agent involvement
* Ensuring each Agent has the correct inputs
* Managing handoffs between Agents
* Resolving overlaps or conflicts in responsibility
* Ensuring deliverables are integrated

---

## Relationship to the AI Program Manager

Per **ADR-003**, the AI Program Manager invokes Collaboration Orchestration to coordinate specialist Agents.

The AI Program Manager does not select Agents directly. Instead, it relies on the orchestration layer to determine the correct engineering roles based on the task, Workflow phase and required deliverables.

---

## Relationship to Skills

Agents are selected based on **responsibility**.

Skills are selected based on **capability**.

A single Agent may use multiple Skills, and a single Skill may be shared by multiple Agents. Agent Selection and Skill selection are related but distinct activities within Collaboration Orchestration.

---

## ForgeOS Principle

The right engineering outcome requires the right engineering role.

Agent Selection ensures that every task is matched to the specialist Agent best positioned to deliver it.