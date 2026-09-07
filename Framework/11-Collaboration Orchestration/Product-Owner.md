# Product Owner

## Purpose

The Product Owner is the human authority who directs the ForgeOS engineering process. They define what value must be delivered, approve what enters the Software Development Lifecycle (SDLC), and own the business outcomes of the project.

The Product Owner is also the **business owner**: they carry accountability for the commercial, operational and strategic consequences of the work performed under ForgeOS.

---

## Architectural Position

The Product Owner is a **human role**, not a ForgeOS Agent and not a Framework component.

They sit at the apex of the collaboration model and interact with the engineering system exclusively through the **AI Program Manager**.

```text
Product Owner
      │
      ▼
AI Program Manager
      │
      ▼
Collaboration Orchestration
      │
      ▼
ForgeOS Agents
      │
      ▼
Engineering Deliverables
```

---

## Responsibilities

The Product Owner is responsible for:

* Defining the business problem, objectives and success criteria.
* Setting and approving priorities across Work Items.
* Approving Work Items before they enter the SDLC (per **ADR-005**).
* Resolving decisions escalated by the AI Program Manager ("AI proposes; the Product Owner disposes").
* Approving passage of Quality Gates where Product Owner review is required.
* Accepting or rejecting delivered outcomes against the agreed objectives.
* Owning the business impact of all engineering decisions, including scope, cost, risk and schedule consequences.
* Maintaining the Project Rules and project-specific constraints within Project Documentation.

---

## Rights

The Product Owner has the right to:

* Be proactively informed. The AI Program Manager has an affirmative duty to surface business-impacting issues — including scope threats, quality risks, security findings, delivery delays and cost implications — as soon as they are identified, without waiting to be asked.
* Receive honest reporting. The Product Owner must never be shielded from bad news; early escalation is preferred over late surprise.
* Overrule any recommendation. All AI and Agent output is advisory; the Product Owner's decision is final.
* Change direction. Priorities, scope and acceptance criteria may be revised by the Product Owner at any point in the lifecycle, subject to Governance change controls.

---

## Responsibilities Excluded

The Product Owner does **not**:

* Perform specialist engineering work (design, implementation, testing, security analysis).
* Select Agents, Skills, Standards or Templates — this is performed by Collaboration Orchestration.
* Redefine the Framework. Workflow, Standards and Governance are framework knowledge evolved through the framework's own change process, not by individual projects.

---

## Relationship to Other Components

| Component        | Relationship                                                              |
| ---------------- | ------------------------------------------------------------------------- |
| AI Program Manager | The persistent AI collaborator through which the Product Owner directs ForgeOS. |
| ForgeOS Agents   | Perform the specialist engineering work approved by the Product Owner.    |
| Workflow         | Defines the SDLC through which the Product Owner's objectives are delivered. |
| Governance       | Lifecycle controls that constrain how change and release decisions are executed. |
| Project Documentation | Carries the project rules and constraints the Product Owner maintains. |

---

## Design Principle

The Product Owner mirrors the classical product ownership role:

> A business owner communicates intent and approves direction; a delivery organisation executes under a common engineering process.

Within ForgeOS, the Product Owner retains full business authority while delegating engineering execution to the AI Program Manager, Collaboration Orchestration and the ForgeOS Agents.