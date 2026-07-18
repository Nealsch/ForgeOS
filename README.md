# ForgeOS

> **AI-Assisted Software Development Operating System**

ForgeOS is a standards-driven framework for building software using a structured Software Development Lifecycle (SDLC) that enables humans and AI to work together through a common engineering process.

Rather than organising development around prompts or individual AI tools, ForgeOS organises work around the SDLC. AI agents become engineering participants within that process, following defined standards, producing documented deliverables and passing quality gates before progressing.

ForgeOS is intentionally platform agnostic and can be integrated with multiple AI coding assistants, IDEs and Large Language Models.

---

# Vision

Create a reusable engineering framework that enables any software project to be developed consistently regardless of:

* AI platform
* IDE
* Programming language
* Technology stack
* Project size

ForgeOS provides the engineering system.

Projects provide the implementation.

---

# Design Principles

ForgeOS is built on the following principles.

* **SDLC First** – The Software Development Lifecycle is the primary driver of all work.
* **Standards Driven** – Engineering standards guide implementation.
* **Platform Independent** – The framework is not tied to any AI vendor or IDE.
* **Context Before Action** – Existing knowledge is always consulted before engineering work begins.
* **Human + AI Collaboration** – Humans and AI collaborate through defined engineering roles and responsibilities.
* **Reusable by Design** – Framework components are designed to be reused across projects.
* **Separation of Responsibilities** – Every framework component has a single, clearly defined responsibility.

---

# Architecture

The ForgeOS repository contains three primary areas.

```text
ForgeOS
│
├── Framework
├── ForgeOS Project
└── Tooling
```

## Framework

The Framework contains the reusable engineering operating system.

```text
Framework/

Workflow/
Standards/
Governance/
Agents/
Skills/
Prompts/
Templates/
Examples/
Onboarding/
Assets/
Collaboration Orchestration/
Glossary/
```

The Framework defines **how software should be engineered**.

It represents the current, authoritative engineering knowledge used by every ForgeOS project.

---

## ForgeOS Project

The ForgeOS Project contains the living documentation used to develop and evolve the ForgeOS framework itself.

Unlike the Framework, which contains reusable engineering knowledge, the ForgeOS Project records the decisions, planning and history behind the framework.

Typical contents include:

* Architecture Decision Records (ADRs)
* Product Roadmap
* Product Backlog
* Release Notes
* Other project management artefacts

The ForgeOS Project intentionally remains lightweight.

Its purpose is to document the evolution of ForgeOS without duplicating the reusable engineering knowledge contained within the Framework.

---

## Tooling

The Tooling layer provides the integrations that enable ForgeOS to operate across supported AI development platforms.

```text
Tooling/

Platforms/
Adapters/
Capabilities/
```

The Tooling layer is implementation-specific and independent of the engineering framework.

---

# Software Development Lifecycle

ForgeOS organises all engineering work into the following lifecycle.

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
```

Each phase contains:

* Purpose
* Inputs
* Activities
* Deliverables
* Standards
* Responsible Agents
* Exit Gate

A phase may only progress once its quality gate has been satisfied.

---

# Repository Structure

```text
ForgeOS/

AGENTS.md
README.md
LICENSE

Framework/
ForgeOS Project/  <-- this is the folder that contains the living documents for the ForgeOS. This is not part of the re-usable template.>
Tooling/
Scripts/
.clinerules/
```

---

# Framework Components

## Workflow

Defines when engineering work is performed through the ForgeOS Software Development Lifecycle.

---

## Standards

Define the engineering rules and quality expectations that apply across all projects.

Examples include:

* Coding
* Architecture
* Security
* Testing
* Documentation

---

## Governance

Defines governance, compatibility, change management and project-specific or technology-specific constraints that supplement the engineering standards.

---

## Agents

Represent **specialist engineering roles only**.

Agents are responsible for producing engineering outcomes within their discipline. They are invoked by the Collaboration Orchestration layer and coordinated by the AI Program Manager.

Examples include:

* Product Manager
* Solution Architect
* Backend Engineer
* Frontend Engineer
* Database Engineer
* Quality Engineer
* Security Engineer
* DevOps Engineer

Agents perform specialist engineering work.

They do not manage the overall software project.

---

## Prompts

Contains reusable prompt assets used by AI-assisted development.

Prompts standardise interactions with AI models, improving consistency, repeatability and quality across engineering activities.

Prompts support the execution of Skills but do not replace them.

---

## Skills

Provide reusable engineering capabilities that can be applied by one or more Agents.

Examples include:

* API Design
* Backend Development
* Database Implementation
* Code Review
* Test Planning
* Threat Modelling

---

## Templates

Provide standard structures for producing consistent engineering artefacts.
A special template to note here is 09-Project Template. This is the folder structure that must seed the initial new projects.

---

## Examples

Provide reference implementations demonstrating recommended engineering practices and expected outputs.

---

## Collaboration Orchestration

Defines how humans and AI collaborate when applying the ForgeOS framework.

Collaboration Orchestration is the execution layer that transforms human engineering intent into structured engineering execution. It coordinates Workflow progression, Agent selection, Skill selection, Standards loading, Template selection and context loading.

It coordinates:

* Workflow progression
* Agent selection
* Skill selection
* Standards loading
* Template selection
* Context loading
* Engineering execution

The **AI Program Manager** is the persistent AI collaborator through which the Product Owner interacts with ForgeOS. The AI Program Manager invokes Collaboration Orchestration to coordinate specialist ForgeOS Agents. The AI Program Manager is **not** a ForgeOS Agent and does **not** perform specialist engineering activities directly.

Collaboration Orchestration acts as the execution model that connects the Product Owner, AI Program Manager and the ForgeOS framework.

---

## Glossary

Defines the terminology used throughout the ForgeOS framework.

The Glossary ensures that human developers, AI agents and contributors share a consistent vocabulary, preventing ambiguity across engineering disciplines and AI platforms.

---

## Onboarding

Provides documentation explaining how to adopt, extend and contribute to ForgeOS.

---

## Assets

Contains supporting diagrams, branding and other shared visual resources.

---

# Tooling Components

## Platforms

Profiles for supported AI development platforms that we call the AI Program Manager

Examples include:

* Cline
* Claude Code
* Codex
* Cursor
* Gemini CLI
* Roo
* VS Code Agent Mode

---

## Adapters

Integration mechanisms that allow ForgeOS to operate with supported AI platforms.

---

## Capabilities

Compatibility information describing the supported features of each AI platform.

---

# Engineering Philosophy

ForgeOS separates engineering responsibilities into distinct architectural layers.

| Layer                       | Responsibility                                              |
| --------------------------- | ----------------------------------------------------------- |
| Workflow                    | Defines **when** engineering work occurs.                   |
| Standards                   | Define the engineering rules and quality expectations.      |
| Governance                  | Defines governance and project-specific constraints.        |
| Collaboration Orchestration | Coordinates the application of the ForgeOS operating model. |
| Agents                      | Perform specialist engineering work.                        |
| Skills                      | Provide reusable engineering capabilities.                  |
| Prompts                     | Reusable AI interaction assets.                              |
| Templates                   | Define the structure of engineering artefacts.              |
| Examples                    | Reference implementations and worked examples.              |
| Onboarding                  | Learning and adoption resources.                            |
| Assets                      | Shared supporting resources.                                |
| Glossary                    | Shared terminology and definitions.                         |
| Tooling                     | Integrates ForgeOS with AI development platforms.           |

This separation ensures that engineering practices remain independent of implementation technology while maintaining clear responsibilities across the framework.

---

# Workspace Layout

ForgeOS is intended to be opened alongside the active software project within a multi-root workspace.

Example:

```text
ForgeOS
The Project 
```

Within this workspace:

* **ForgeOS** provides the reusable engineering operating system.
* **The Project** contains the implementation and project-specific documentation.

Together they provide the complete environment for AI-assisted software development.

---

# Who Is ForgeOS For?

ForgeOS is intended for:

* Solo developers
* AI-assisted software engineers
* Independent consultants
* Small software teams
* Engineering organisations seeking disciplined AI-assisted software development

---

# Getting Started

1. Read **AGENTS.md**.
2. Familiarise yourself with the Framework structure.
3. Understand the Software Development Lifecycle.
4. Review the applicable engineering standards.
5. Configure the appropriate AI development platform.
6. Open ForgeOS alongside your project within a multi-root workspace.
7. Begin work in the appropriate SDLC phase.

---

# Guiding Philosophy

ForgeOS is an engineering operating system.

The Framework defines the reusable engineering knowledge.

The ForgeOS Project captures the framework's ongoing evolution.

The Workflow defines when work occurs.

Standards define quality expectations.

Governance defines constraints.

Collaboration Orchestration coordinates engineering execution.

Agents perform specialist engineering work.

Skills provide reusable capability.

Templates standardise engineering artefacts.

Tooling enables ForgeOS to operate across AI development platforms.

Together these components create a disciplined, repeatable and platform-independent approach to AI-assisted software engineering.
