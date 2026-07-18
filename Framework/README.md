# ForgeOS Framework

## Purpose

The Framework is the knowledge base of ForgeOS.
It defines the engineering practices, responsibilities, standards and reusable assets that guide every software project developed using ForgeOS. 
During normal project development, the Framework is treated as read-only. Projects consume the Framework—they do not modify it.

The Framework separates **engineering knowledge** from **project execution**, ensuring that every project follows the same proven Software Development Lifecycle (SDLC).

---

# Framework Philosophy

ForgeOS is built on a simple principle:

> **The Framework defines how software should be engineered. Projects contain the software being engineered.**

This separation allows the Framework to evolve independently while ensuring consistency across every project.

---

# Framework Structure

## 01-Workflow

Defines the ForgeOS Software Development Lifecycle (SDLC).

The Workflow describes **when** work is performed by defining each lifecycle phase, its objectives, responsibilities and quality expectations.

---

## 02-Standards

Defines the engineering standards adopted by ForgeOS.

Standards describe the quality, conventions and best practices that every project must follow, regardless of technology or programming language.

Standards answer:

> **What rules must be followed?**

---

## 03-Governance

Defines governance and operational rules for AI agents and engineering activities.

Governance provides lightweight behavioural constraints, compatibility policy, change management, release process and framework-wide conventions that complement the Standards.

Governance answers:

> **What must always (or never) happen?**

---

## 04-Agents

Defines the specialist engineering roles used throughout the SDLC.

Each Agent has clearly defined responsibilities, authority and interactions with other Agents.

Agents answer:

> **Who is responsible?**

---

## 05-Skills

Defines reusable capabilities that Agents employ to perform specific engineering tasks.

Skills encapsulate repeatable procedures, methodologies and specialist knowledge.

Skills answer:

> **How is the work performed?**

---

## 06-Prompts

Contains reusable prompt assets used by AI-assisted development.

Prompts standardise interactions with AI models, improving consistency, repeatability and quality across engineering activities.

Prompts support the execution of Skills but do not replace them.

---

## 07-Templates

Contains reusable project templates and document structures.

Templates provide the standard starting point for new ForgeOS projects and ensure consistent project organisation.

Templates answer:

> **What structure should a new project begin with?**

---

## 08-Examples

Provides reference implementations and example artefacts.

Examples demonstrate the practical application of ForgeOS principles, standards and workflows.

They exist to teach and illustrate—not to define standards.

---

## 09-Onboarding

Contains guidance for developers adopting ForgeOS.

Onboarding introduces the framework, explains its philosophy and helps new users understand how the various Framework components work together.

---

## 10-Assets

Contains reusable framework resources that support engineering activities.

Examples include diagrams, icons, images, reference material and other static assets shared across the Framework.

Assets are supporting resources rather than engineering guidance.

---

## 11-Collaboration Orchestration

Defines how humans and AI collaborate when applying the ForgeOS framework.

Collaboration Orchestration is the execution layer that transforms human engineering intent into structured engineering execution. It coordinates Workflow progression, Agent selection, Skill selection, Standards loading, Template selection and context loading.

**Work Item Management** is a core capability of Collaboration Orchestration (per **ADR-005**). It provides the platform-independent intake process that discovers, validates, enriches, prioritises and prepares work before it enters the SDLC. Platform-specific trackers (GitHub Issues, Jira, Azure DevOps, GitLab) are integrated by the Tooling layer.

The **AI Program Manager** is the persistent AI collaborator through which the Product Owner interacts with ForgeOS. The AI Program Manager invokes Collaboration Orchestration to coordinate specialist ForgeOS Agents. The AI Program Manager is **not** a ForgeOS Agent and does **not** perform specialist engineering activities directly.

Collaboration Orchestration answers:

> **How is engineering intent transformed into coordinated execution?**

---

## 12-Glossary

Defines the terminology used throughout the ForgeOS framework.

The Glossary ensures that human developers, AI agents and contributors share a consistent vocabulary, preventing ambiguity across engineering disciplines and AI platforms.

The Glossary answers:

> **What do these terms mean?**

---

# Framework Relationships

Each Framework component has a single responsibility.

| Component                   | Responsibility                                                                      |
| --------------------------- | ----------------------------------------------------------------------------------- |
| Workflow                    | **When** work is performed.                                                         |
| Standards                   | **What quality** is expected.                                                       |
| Governance                  | **What constraints** must always be respected.                                      |
| Agents                      | **Who** performs the specialist engineering work.                                   |
| Skills                      | **How** work is performed.                                                          |
| Prompts                     | Reusable AI interaction assets.                                                      |
| Templates                   | Standard project structures and document templates.                                 |
| Examples                    | Reference implementations and worked examples.                                      |
| Onboarding                  | Learning and adoption resources.                                                    |
| Assets                      | Shared supporting resources.                                                        |
| Collaboration Orchestration | **How** engineering intent is transformed into coordinated execution.               |
| Glossary                    | Shared terminology and definitions.                                                  |

---

# Engineering Knowledge

Projects consume the Framework but do not modify it.

Changes to the Framework are made only when improving ForgeOS itself and are versioned independently of the projects that use it.

---

# ForgeOS Principle

The Framework is the engineering operating system for ForgeOS.

It provides a single source of truth for engineering knowledge, enabling human developers and AI agents to collaborate through a shared language, consistent standards and a disciplined Software Development Lifecycle.
