# ForgeOS Collaboration Orchestration

## Purpose

Collaboration Orchestration defines how humans and AI agents collaborate to perform engineering work within the ForgeOS framework.

It provides the execution model that transforms a human request into a structured engineering activity by selecting the appropriate Workflow, Agents, Skills, Standards, Templates and project context required to complete the task.

This orchestration layer forms the contract between the human and the AI, ensuring that engineering work is performed consistently, transparently and in accordance with the ForgeOS framework.

---

# Relationship to the Framework

Collaboration Orchestration is one component of the ForgeOS framework.

Each framework component has a single responsibility.

| Component                   | Responsibility                                                                    |
| --------------------------- | --------------------------------------------------------------------------------- |
| Workflow                    | Defines **when** work is performed throughout the Software Development Lifecycle. |
| Agents                      | Define **who** performs the specialist engineering work.                         |
| Skills                      | Define **how** engineering capabilities are performed.                            |
| Standards                   | Define the engineering rules and quality expectations.                            |
| Governance                  | Applies uniform lifecycle control (change, release, version, compatibility).      |
| Templates                   | Define the standard structure of engineering artifacts.                           |
| Collaboration Orchestration | Defines **how humans and AI collaborate to perform work using the framework.**    |

Together these components enable consistent, repeatable and standards-driven software engineering.

---

# Capabilities

Collaboration Orchestration provides the following capabilities. Each capability is documented in its own file.

| Capability                      | Responsibility                                                                          | Document                  |
| ------------------------------- | --------------------------------------------------------------------------------------- | ------------------------- |
| Work Item Management            | Discovers, validates, enriches, prioritises and approves work **before** it enters the SDLC. | `Work-Item-Management.md` |
| Agent Selection                 | Selects the correct specialist Agent(s) for an approved task.                           | `Agent-Selection.md`      |
| Standards Loading               | Loads applicable Standards for the activity.                                            | `Standards-Loading.md`    |
| Template Selection              | Selects the correct Templates for the deliverable.                                      | `Template-Selection.md`   |
| Context Loading                 | Resolves the minimum context required for the activity.                                 | `Context-Loading.md`      |
| Decision Making                 | Defines how decisions are captured and escalated.                                       | `Decision-Making.md`      |
| Orchestration Lifecycle         | Defines the end-to-end sequence for an engineering activity.                            | `Orchestration-Lifecycle.md` |
| AI Program Manager              | The persistent collaborative role that invokes the above capabilities.                  | `AI-Program-Manager.md`   |
| Product Owner                   | The human authority who directs the process through the AI Program Manager.             | `Product-Owner.md`        |

---

# Engineering Work Intake

Work Item Management is the **pre-SDLC intake** capability of Collaboration Orchestration.

It transforms incoming requests from external platforms into validated, enriched and approved Work Items. Only approved Work Items are handed to the Orchestration Lifecycle for engineering execution.

```text
External Platform
        ↓
Work Item Management  (synchronise, validate, enrich, prioritise)
        ↓
Approved Work Item
        ↓
Orchestration Lifecycle  (route, resolve context, execute)
        ↓
ForgeOS Workflow (SDLC)
```

**Ownership boundaries (per ADR-003, ADR-004, ADR-005):**

* **Work Item Management** owns enrichment, duplicate detection, relationship identification and priority *recommendations*.
* **Collaboration Orchestration** (Agent Selection, Standards Loading, Template Selection, Context Loading) owns actual Agent, Skill, Standard and Template selection once a Work Item is approved.
* **AI Program Manager** invokes these capabilities, presents recommendations to the Product Owner and obtains approval. It does not enrich or route directly.
* **Product Owner** owns final priority and approval decisions.

Work Item Management does not perform routing, and the routing capabilities do not perform intake. The two are connected only by the approved Work Item handoff. See `Work-Item-Management.md` for the full intake process.

---

# The Orchestration Layer

Collaboration Orchestration sits between the human and the engineering framework.

It interprets engineering intent, determines the work required and assembles the appropriate engineering context before execution begins.

Rather than requiring the human to understand every component of ForgeOS, the orchestration layer coordinates the framework on their behalf.

Typical orchestration activities include:

* Understanding the engineering request.
* Determining the current stage of the Software Development Lifecycle.
* Selecting the appropriate Agent or Agents.
* Identifying the required Skills.
* Loading the applicable Standards.
* Selecting the appropriate Templates.
* Loading relevant project context.
* Loading reference examples where beneficial.
* Coordinating execution.
* Producing engineering artifacts.
* Maintaining traceability throughout the engineering process.

---

# Collaboration Model

ForgeOS is designed around collaborative engineering rather than autonomous execution.

The human provides:

* Business knowledge
* Project objectives
* Priorities
* Decisions
* Approval
* Oversight

The orchestration layer provides:

* Task interpretation
* Workflow coordination
* Context management
* Standards selection
* Skill selection
* Template selection
* Engineering guidance

The AI Agents provide:

* Analysis
* Design
* Implementation
* Verification
* Documentation
* Recommendations

This separation ensures that engineering decisions remain transparent while enabling AI to perform complex engineering activities efficiently.

---

# Context Resolution

Before any engineering work begins, the orchestration layer assembles the minimum context necessary to perform the requested task.

Context is resolved using the following general priority:

1. Determine the engineering task.
2. Identify the applicable Workflow phase.
3. Select the required Agent or Agents.
4. Load the required Skill or Skills.
5. Load applicable ForgeOS Standards.
6. Load applicable external standards.
7. Load required Templates.
8. Load relevant project documentation and artifacts.
9. Load reference examples only when they materially improve execution or are explicitly requested.

This approach minimises unnecessary context while ensuring that engineering activities remain consistent and standards compliant.

---

# Engineering Execution Model

Engineering work generally follows this sequence:

```text
Human Request
        ↓
Interpret Request
        ↓
Route Task
        ↓
Resolve Context
        ↓
Load Skills
        ↓
Load Standards
        ↓
Load Templates
        ↓
Load Project Context
        ↓
Execute Engineering Activity
        ↓
Produce or Update Artifacts
        ↓
Human Review and Decision
```

The orchestration layer coordinates this process while remaining independent of any specific AI platform or implementation.

---

# Guiding Principles

## Human-Led Engineering

Humans remain responsible for objectives, priorities, approvals and engineering judgement.

---

## AI-Assisted Execution

AI performs engineering activities using the structured knowledge provided by ForgeOS.

---

## Context Before Action

Engineering work should never begin until sufficient context has been established.

---

## Standards Before Implementation

Engineering activities should always be guided by applicable standards before implementation begins.

---

## Reusable Knowledge

Skills, Standards and Templates are reusable framework knowledge.

Projects provide implementation-specific context.

---

## Minimal Necessary Context

Only the information required to perform the current task should be loaded.

Reducing unnecessary context improves consistency, efficiency and decision quality.

---

# Immutable Framework Knowledge

Collaboration Orchestration defines how ForgeOS coordinates engineering work.

It does not contain project-specific implementation details, technology choices or execution history.

Projects remain responsible for implementation, while the orchestration layer provides the repeatable process by which humans and AI collaborate.

---

# ForgeOS Principle

Collaboration Orchestration is the execution layer of ForgeOS.

It transforms human intent into structured engineering activities by coordinating the Workflow, Agents, Skills, Standards, Templates and project context required to deliver consistent, transparent and high-quality software engineering outcomes.
