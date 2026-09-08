# Skills

## Purpose

The Skills define the reusable engineering capabilities available within the ForgeOS framework.

They provide Agents with the expertise required to perform engineering activities throughout the Software Development Lifecycle (SDLC).

Skills are **framework knowledge**, not project documentation. They define **how capabilities are applied**, regardless of the technology stack, implementation language or individual project requirements.

Skills form the shared capability layer of ForgeOS.

Skills are not invoked directly by users in normal operation. Skills are selected through the ForgeOS workflow based on task context, SDLC phase and required capability.

---

# Skills Philosophy

ForgeOS separates engineering responsibility into distinct layers.

Skills provide the practical expertise required to transform engineering intent into consistent outcomes.

Skills should be:

* Capability-focused
* Reusable
* Technology-independent
* Action-oriented
* Composable
* Maintainable
* Traceable

Skills should represent engineering capabilities that require judgement and expertise.

A Skill should answer:

> "What engineering capability is required to successfully perform this activity?"

---

# Relationship to the Framework

Each Framework component has a distinct responsibility.

| Component                   | Responsibility                                                     |
| --------------------------- | ------------------------------------------------------------------ |
| Workflow                    | Defines **when** work is performed.                                |
| Agents                      | Define **who** performs the specialist engineering work.          |
| Skills                      | Define **what capability is applied and how work is approached**.  |
| Standards                   | Define **how well the work must be performed**.                    |
| Governance                  | Applies uniform lifecycle control (change, release, version, compatibility).       |
| Templates                   | Define required outputs and artefact structures.                   |
| Collaboration Orchestration | Coordinates how engineering intent is transformed into coordinated execution. |

Skills enable Agents to perform work while meeting the expectations of Standards and complying with Governance lifecycle controls. Project-specific constraints are carried in Project Documentation, not Governance.

**Collaboration Orchestration** selects the appropriate Skills based on task context, SDLC phase and required capability. The **AI Program Manager** invokes Collaboration Orchestration to ensure that the correct Skills are applied to each engineering activity.

---

# Skill Design Principles

## Capability Over Technology

Skills define engineering capability, not implementation technology.

Good:

* API Design
* Database Design
* Test Engineering
* Security Review
* Deployment Engineering

Not Skills:

* React Development
* Docker Compose
* PostgreSQL Queries
* AWS Configuration

Technology-specific knowledge belongs in:

* Project documentation
* Technology profiles
* Implementation guides

---

## Active Capability

Skills are active engineering capabilities.

They provide Agents with:

* Context
* Reasoning approaches
* Recommended processes
* Expected activities
* Common considerations
* Expected outputs

A Skill is not a passive reference document.

It enables an Agent to perform a task consistently.

---

## Reusable Across Agents

Skills are not owned by individual Agents.

Multiple Agents may use the same Skill.

Example:

| Skill            | Common Agents                                    |
| ---------------- | ------------------------------------------------ |
| API Design       | Architect, Backend Engineer, Security Engineer   |
| Threat Modelling | Architect, Security Engineer, QA Engineer        |
| Documentation    | All Agents                                       |
| Code Review      | Backend Engineer, Frontend Engineer, QA Engineer |

Agents represent responsibilities.

Skills represent capabilities.

---

# Skill Structure

Each Skill should follow a consistent structure.

```text
skills/

category/

skill-name/

SKILL.md
```

---

# Skill Metadata

Each skill document begins with machine-readable JSON metadata immediately after the title heading.

This metadata enables automation, discovery, template selection, and consistent tool support across ForgeOS.

Example:

```json
{
  "skill": "Forge-API-Design",
  "category": "03-Engineering",
  "purpose": "Describe the capability of the skill in one sentence.",
  "outputs": [
    "Architectural decision record",
    "API contract"
  ],
  "primaryTemplates": [
    "API-Design-template.md"
  ],
  "supportingTemplates": [
    "Project-Definition-template.md",
    "Architecture-Decision-Record-template.md"
  ]
}
```

The metadata block should include:

* `skill` — Skill document name matching the title.
* `category` — Skill category folder name.
* `purpose` — Short description of the skill capability.
* `outputs` — Expected deliverables or outputs the skill produces.
* `primaryTemplates` — Main template(s) used by this skill.
* `supportingTemplates` — Additional templates that support the skill.

Keep the JSON block directly after the title heading, before the human-readable sections, so tools can parse skills consistently.

# Skill Categories

## 01-Product

Defines capabilities used to understand problems, users and requirements.

Examples:

* Requirements Engineering
* Requirements Analysis
* Scope Definition
* User Story Development
* Acceptance Criteria Definition
* Product Prioritisation
* Stakeholder Interviewing
* Domain Analysis
* Glossary Management
* Decision Identification

---

## 02-Architecture

Defines capabilities used to design software solutions.

Examples:

* Solution Architecture
* System Architecture
* API Design
* Data Architecture
* Database Design
* Integration Design
* Technology Evaluation
* Architectural Decision Records
* Scalability Planning
* Performance Planning
* Risk Assessment
* Threat Modelling

---

## 03-Engineering

Defines capabilities used to create and maintain software.

Examples:

* Backend Engineering
* Frontend Engineering
* Software Design
* Database Engineering
* Business Logic Design
* Authentication Design
* Authorisation Design
* Debugging
* Refactoring
* Error Handling
* Logging Design

Technology techniques may exist within these Skills.

Examples:

* REST
* GraphQL
* SQL
* ORM
* Caching
* Message Queues
* State Management

These are techniques, not independent Skills.

---

## 04-Quality

Defines capabilities used to verify software quality.

Examples:

* Test Engineering
* Test Planning
* Test Case Design
* Unit Testing
* Integration Testing
* End-to-End Testing
* Regression Testing
* Performance Testing
* Accessibility Testing
* Defect Management
* Code Review

---

## 05-Security

Defines capabilities used to create secure software.

Examples:

* Secure Development
* Threat Modelling
* Security Review
* Secure Code Review
* Dependency Analysis
* Secrets Management
* Authentication Review
* Authorisation Review
* Vulnerability Assessment
* Compliance Review

---

## 06-Delivery

Defines capabilities used to release software into production.

Examples:

* Build Automation
* CI/CD Pipeline Execution
* Release Management
* Version Management
* Infrastructure as Code
* Environment Configuration
* Rollback Planning
* Deployment Verification
* Operational Readiness

Technology-specific capabilities such as Docker, Kubernetes or Cloud platforms should be represented through Technology Profiles or Project Documentation.

---

## 07-Documentation and Knowledge

Defines capabilities used to create and maintain engineering knowledge.

Examples:

* Technical Documentation
* API Documentation
* Architecture Documentation
* User Documentation
* Release Notes
* Changelog Management
* Markdown Authoring
* Diagram Documentation
* Knowledge Management
* Decision Recording
* Requirements Traceability

---

## 08-AI Assisted Engineering

Defines capabilities required for effective human and AI collaboration.

Examples:

* Context Preparation
* AI Task Decomposition
* AI Output Review
* AI Decision Validation
* Prompt Engineering
* AI Limitation Assessment
* Agent Collaboration

---

## 09-Operations

Defines capabilities used to operate software reliably in production.

Examples:

* Production Monitoring
* Performance Monitoring
* Capacity Planning
* Incident Management
* Root Cause Analysis
* Log Analysis
* Infrastructure Management
* Backup and Recovery
* Operational Change Management

Security monitoring and security incident response are owned by the 05-Security category.

---

# Skill Lifecycle

Skills are maintained as controlled ForgeOS knowledge.

Skill states:

| State        | Meaning                                |
| ------------ | -------------------------------------- |
| Experimental | New capability under development.      |
| Active       | Approved capability available for use. |
| Deprecated   | Replaced or no longer recommended.     |
| Archived     | Historical reference only.             |

Skills evolve through the ForgeOS versioning process.

---

# Skill Discovery

The Skill library should remain discoverable as it grows.

Agents should not load every Skill for every task.

Skill selection should be based on:

* SDLC phase
* Current workflow activity
* Agent responsibility
* Required outcome
* Applicable Standards

Example:

```text
Task:
Design authentication system

Workflow:
Design Phase

Agent:
Architect

Skills:
- Solution Architecture
- API Design
- Threat Modelling
- Security Review

Standards:
- Architecture Standard
- Security Standard
```

---

# Skill Quality Criteria

A Skill should:

* Provide a clear capability
* Have a defined purpose
* Identify when it applies
* Define expected inputs
* Define expected outputs
* Reference applicable Standards
* Support multiple Agents where appropriate
* Avoid technology-specific assumptions
* Improve consistency of engineering outcomes

---

# ForgeOS Principle

Skills provide the expertise layer of ForgeOS.

Agents perform the work.

Standards define expectations.

Governance applies lifecycle control.

Skills provide the capability required to consistently produce high-quality software throughout the Software Development Lifecycle.
