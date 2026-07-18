# AI Program Manager

## Purpose

The AI Program Manager is the persistent AI collaborator through which the Product Owner interacts with the ForgeOS framework.

It is the single point of collaboration between the human and the engineering system, responsible for managing the execution of the software project by applying the ForgeOS operating model.

---

## Architectural Position

The AI Program Manager is **not** a ForgeOS Agent.

It does **not** perform specialist engineering activities directly. Instead, it coordinates the specialist ForgeOS Agents that perform the actual engineering work.

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

The AI Program Manager is responsible for:

* Maintaining project context across engineering sessions.
* Understanding the current state of the project.
* Guiding work through the ForgeOS Software Development Lifecycle.
* Invoking ForgeOS Collaboration Orchestration.
* Coordinating the work of specialist ForgeOS Agents.
* Ensuring appropriate Skills, Standards and Templates are applied.
* Monitoring progress towards project objectives.
* Identifying when clarification or approval is required from the Product Owner.
* Maintaining continuity throughout the lifecycle of the project.
* Presenting prioritised Work Item recommendations to the Product Owner and obtaining approval before work enters the SDLC (per **ADR-005**).

---

## Responsibilities Excluded

The AI Program Manager does **not**:

* Perform architectural design.
* Implement software.
* Conduct specialist testing.
* Perform security analysis.
* Produce engineering artefacts directly.
* Enrich Work Items, detect duplicates or compute priority recommendations directly.

Engineering enrichment is performed by Work Item Management (a Collaboration Orchestration capability). Architectural design, implementation, testing, security analysis and artefact production are performed by the appropriate ForgeOS Agents. The AI Program Manager presents recommendations and obtains Product Owner approval — it does not produce or approve them itself.

---

## Implementation

Current implementation examples include:

* Cline

Future implementations may include other AI development platforms capable of fulfilling the same architectural role.

The AI Program Manager is an architectural role defined by ForgeOS. It is independent of any specific AI platform, LLM or IDE.

---

## Relationship to Other Components

| Component                   | Relationship                                                         |
| --------------------------- | ------------------------------------------------------------------- |
| Product Owner               | The human who directs the AI Program Manager.                        |
| Collaboration Orchestration | Invoked by the AI Program Manager to coordinate engineering work.   |
| ForgeOS Agents              | Specialist engineering roles coordinated by the AI Program Manager.  |
| Workflow                    | The SDLC the AI Program Manager guides work through.                 |
| Standards                   | Loaded and applied via Collaboration Orchestration.                  |
| Skills                      | Selected by Collaboration Orchestration and used by Agents.          |
| Templates                   | Selected by Collaboration Orchestration for deliverable structure.   |

---

## Design Principle

The AI Program Manager mirrors how software projects are typically managed:

> A Product Owner communicates objectives to a project leadership role, which then coordinates specialist contributors to deliver the required outcomes.

Within ForgeOS, the AI Program Manager fulfils this coordinating role while remaining independent of any specific AI platform.