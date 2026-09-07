# ForgeOS Standards

## Purpose
A ForgeOS Standard defines an enduring engineering expectation. Standards describe principles, conventions and quality expectations that are intended to 
remain stable across projects and technologies. They avoid project-specific implementation decisions wherever practical.

They establish the quality, consistency and best practices that every ForgeOS project must follow throughout the Software Development Lifecycle (SDLC).

Standards are **framework knowledge**, not project documentation. They define **how engineering should be performed**, regardless of the technology stack or the individual project.

---

# Standards Philosophy

ForgeOS adopts a standards-first approach to software engineering.

Every Agent, Skill and Workflow phase is expected to follow the applicable Standards when making decisions, producing documentation or implementing software.

Standards should be:

* Clear
* Practical
* Technology-appropriate
* Consistent
* Testable
* Maintainable

Where multiple standards apply, they should complement one another rather than conflict.

---

# Standards Structure

## 01-Framework

Defines the core engineering principles of ForgeOS.

These standards govern the framework itself and establish conventions that apply across all projects.

Examples include:

* Framework philosophy
* Workspace model
* Context hierarchy
* Versioning
* Design principles

---

## 02-Architecture

Defines standards for designing software systems.

Topics include:

* Solution architecture
* Component design
* API design
* Data modelling
* Architectural Decision Records (ADRs)
* Scalability
* Maintainability

---

## 03-Coding

Defines standards for writing source code.

Topics include:

* Code quality
* Naming conventions
* Project structure
* Error handling
* Logging
* Performance
* Refactoring
* Code review expectations

---

## 04-Documentation

Defines standards for creating and maintaining documentation.

Topics include:

* Documentation structure
* Markdown conventions
* Project artefacts
* Traceability
* Decision recording
* Knowledge management

---

## 05-Security

Defines the secure engineering practices expected throughout the SDLC.

Topics include:

* Secure by Design
* Authentication
* Authorisation
* Secrets management
* Dependency management
* Vulnerability management
* Security reviews

---

## 06-Testing

Defines standards for software verification.

Topics include:

* Test strategy
* Test planning
* Unit testing
* Integration testing
* End-to-end testing
* Test coverage
* Quality assurance

---

## 07-Deployment

Defines standards for building, releasing and operating software.

Topics include:

* CI/CD
* Versioning
* Deployment
* Infrastructure as Code
* Monitoring
* Rollback
* Operational readiness

---

## 08-Design

Defines standards for user experience and interface design.

Topics include:

* Design philosophy
* User experience (UX)
* User interface (UI)
* Accessibility
* Responsive design
* Design systems
* Open Design principles
* Visual consistency

---

# Relationship to the Framework

Each Framework component has a distinct responsibility.

| Component                   | Responsibility                                                                      |
| --------------------------- | ----------------------------------------------------------------------------------- |
| Workflow                    | Defines **when** work is performed.                                                 |
| Agents                      | Define **who** performs the specialist engineering work.                           |
| Skills                      | Define **how** work is performed.                                                   |
| Standards                   | Define **how well** the work must be performed.                                     |
| Governance                  | Applies uniform lifecycle control (change, release, version, compatibility).        |
| Templates                   | Define the standard project structure.                                              |
| Collaboration Orchestration | Coordinates how engineering intent is transformed into coordinated execution.        |

Standards are referenced throughout the Framework but remain independent of any individual project.

**Collaboration Orchestration** loads the applicable Standards for each engineering activity. The **AI Program Manager** invokes Collaboration Orchestration to ensure that the correct Standards are applied during each SDLC phase.

---

# Immutable Engineering Knowledge

The Standards are part of the ForgeOS framework and should be treated as immutable during normal project development.

Projects implement the Standards but do not modify them.

Improvements to the Standards are made by evolving ForgeOS itself, allowing future projects to benefit from enhanced engineering practices.

---

# ForgeOS Principle

Standards define the minimum acceptable quality for every ForgeOS project.

By establishing consistent engineering expectations, the Standards enable human developers and AI agents to produce software that is secure, maintainable, well-documented and predictable, regardless of the project or technology being used.
