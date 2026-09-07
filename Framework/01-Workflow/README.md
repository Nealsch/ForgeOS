# ForgeOS Workflow

## Purpose

The Workflow defines the Software Development Lifecycle (SDLC) adopted by the ForgeOS framework.

It provides a structured, repeatable process for planning, designing, building, verifying, releasing, operating and continuously improving software. Every ForgeOS project follows the same lifecycle, ensuring consistency for both human developers and AI agents.

The Workflow defines **how work progresses through the lifecycle**. It does **not** record the state or progress of an individual project.

---

# Relationship to the Framework

The Workflow is one component of the ForgeOS framework.

Each framework component has a single responsibility:

| Component                   | Responsibility                                                                      |
| --------------------------- | ----------------------------------------------------------------------------------- |
| Workflow                    | Defines **when** work is performed.                                                 |
| Agents                      | Define **who** is responsible for specialist engineering work.                     |
| Skills                      | Define **how** work is performed.                                                   |
| Standards                   | Define the engineering rules and quality expectations.                              |
| Governance                  | Applies uniform lifecycle control (change, release, version, compatibility).        |
| Templates                   | Define the standard structure for new projects.                                     |
| Collaboration Orchestration | Coordinates how engineering intent is transformed into coordinated execution.        |

Together, these components provide the engineering guidance used by every ForgeOS project.

Work progresses through the SDLC phases under the coordination of **Collaboration Orchestration**, which is invoked by the **AI Program Manager** to select the appropriate Agents, Skills, Standards and Templates for each phase.

---

# ForgeOS SDLC

```text
Specify
    ↓
Design
    ↓
Develop
    ↓
Verify
    ↓
Release
    ↓
Operate
    ↓
Improve
    ↺
Specify
```

The lifecycle is iterative. Every completed iteration informs the next through continuous learning and improvement.

---

# Workflow Structure

Each workflow phase contains a `README.md` that defines:

* Purpose
* Objectives
* Lead Agent
* Supporting Agents
* Primary Skills
* Inputs
* Activities
* Entry Criteria
* Exit Criteria
* Quality Gate
* Next Phase
* ForgeOS Principle

These documents define the standard operating model for the ForgeOS Software Development Lifecycle.

---

# Workflow Phases

| Folder       | Purpose                                                                                                 |
| ------------ | ------------------------------------------------------------------------------------------------------- |
| `01-Specify` | Define the business problem, requirements and project scope.                                            |
| `02-Design`  | Design the technical solution and implementation approach.                                              |
| `03-Develop` | Implement the approved solution in accordance with the standards.                                       |
| `04-Verify`  | Independently verify that the implementation satisfies the approved requirements and quality standards. |
| `05-Release` | Deploy the verified solution into its target environment.                                               |
| `06-Operate` | Operate, monitor and support the deployed solution.                                                     |
| `07-Improve` | Evaluate outcomes, capture lessons learned and prepare the next development iteration.                  |

---

# Immutable Framework Knowledge

The Workflow is part of the ForgeOS framework and should be treated as **immutable engineering knowledge** during normal project development.

Workflow documents define the SDLC itself—they do not contain project-specific information, implementation status or execution history.

Project state, documentation and progress are maintained within the project created from the ForgeOS Project Template.

---

# ForgeOS Principle

The Workflow is the backbone of ForgeOS.

It defines the standard Software Development Lifecycle that every ForgeOS project follows, ensuring consistent engineering practices, clear responsibilities and a disciplined progression from concept to continuous improvement.
