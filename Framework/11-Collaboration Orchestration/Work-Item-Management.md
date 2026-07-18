# Work Item Management

## Purpose

Work Item Management defines how ForgeOS discovers, validates, enriches, prioritises and prepares engineering work before it enters the Software Development Lifecycle (SDLC).

It is a core capability of Collaboration Orchestration, introduced by **ADR-005** as the platform-independent intake process for all engineering work entering ForgeOS.

Work Item Management exists **before** the SDLC. Its purpose is to ensure that only validated, enriched, prioritised and approved work enters engineering execution.

---

## Architectural Position

Work Item Management is a capability of Collaboration Orchestration.

It is **not** a Workflow phase, a ForgeOS Agent or a Skill. It does not perform engineering implementation.

```text
Product Owner
      │
      ▼
AI Program Manager
      │
      ▼
Collaboration Orchestration
      │
      └── Work Item Management   ← pre-SDLC intake
              │
              ▼
      Approved Work Item
              │
              ▼
      ForgeOS Workflow (SDLC)
```

Per **ADR-003**, the AI Program Manager invokes Work Item Management through Collaboration Orchestration. The AI Program Manager does **not** perform enrichment, duplicate detection or prioritisation directly — just as it does not select Agents directly (see `Agent-Selection.md`).

---

## Guiding Principles

Work Item Management is guided by the established ForgeOS principles:

* **Platform independence** — the Work Item abstraction is independent of any external tracker.
* **Standards before implementation** — applicable Standards are identified during enrichment, before the SDLC begins.
* **Context before action** — work does not enter the SDLC until sufficient engineering context has been established.
* **Human-led engineering** — the Product Owner approves the implementation order.
* **Single source of truth** — the local engineering backlog is the authoritative view of pending work.
* **Traceability by design** — every Work Item maintains its link to the originating external request.

---

## Scope

Work Item Management is responsible for:

* Synchronising with external work-tracking systems.
* Detecting completed work requiring external updates.
* Closing completed external work items where appropriate.
* Importing new work.
* Validating imported work.
* Detecting duplicates.
* Identifying related work.
* Enriching engineering metadata.
* Determining engineering priority (using existing Prioritisation capabilities).
* Generating the local engineering backlog.
* Presenting recommendations to the Product Owner for approval.
* Maintaining traceability between external work and ForgeOS Work Items.

Work Item Management is **not** responsible for:

* Requirements analysis
* Solution design
* Implementation
* Testing
* Deployment
* Release management

These belong to the Software Development Lifecycle and the specialist ForgeOS Agents.

---

## Work Item

A Work Item is the fundamental unit of engineering work within ForgeOS.

The term **Work Item** is used uniformly regardless of the originating platform. Platform-specific concepts such as GitHub Issues, Jira Issues or Azure DevOps Work Items are implementation details managed by the Tooling layer.

Typical Work Item types include:

* Feature
* Enhancement
* Bug
* Technical Debt
* Security Finding
* Documentation
* Maintenance
* Infrastructure
* Refactoring
* Research / Spike
* Performance
* Compliance

Projects may introduce additional Work Item types where appropriate.

---

## Work Item Lifecycle

Every Work Item follows the same orchestration process before entering the SDLC, as defined in **ADR-005**:

```text
Synchronise Completed Work
        ↓
Update External Platform
        ↓
Close External Work Items
        ↓
Fetch Outstanding Work
        ↓
Validate Imported Work
        ↓
Detect Duplicates
        ↓
Identify Related Work
        ↓
Enrich Engineering Context
        ↓
Determine Engineering Priority
        ↓
Generate Local Backlog
        ↓
Product Owner Approval
        ↓
Enter SDLC
```

This lifecycle executes **before** engineering begins. It is distinct from:

* the **Orchestration Lifecycle**, which governs per-activity execution; and
* the **Workflow**, which governs SDLC phases.

---

## Validation

Every imported Work Item is validated before entering the engineering backlog.

Validation considers:

* Sufficient description
* Clear business objective
* Engineering relevance
* Reproducibility (where applicable)
* Missing information
* Conflicting requests
* Duplicate requests

Incomplete Work Items are returned for clarification. Validation is performed by Work Item Management, not by specialist Agents.

---

## Metadata Enrichment

Imported Work Items are enriched into ForgeOS engineering artefacts.

Enrichment metadata may include (per **ADR-005**):

**General**

* Work Item Type
* Status
* Priority
* Severity

**Business**

* Business value
* User impact
* Customer impact
* Strategic alignment

**Engineering**

* Technical risk
* Implementation complexity
* Security impact
* Performance impact
* Compliance impact
* Dependencies
* Related Work Items
* Affected components

**ForgeOS**

* Required Agents
* Required Skills
* Applicable Standards
* Required Templates
* Recommended initial SDLC phase
* Synchronisation status
* External tracking references

> Enrichment **recommends** Required Agents, Skills and Standards. The actual selection, loading and invocation of these is performed by Collaboration Orchestration (see `Agent-Selection.md`, `Context-Loading.md`, `Standards-Loading.md` and `Template-Selection.md`) once the Work Item enters the SDLC. Work Item Management must not duplicate routing logic.

Projects may extend this metadata as required.

---

## Prioritisation

ForgeOS determines implementation priority using engineering considerations, not the priority labels of the originating platform.

Priority recommendations consider:

* Business value
* User impact
* Security impact
* Technical risk
* Dependencies
* Implementation complexity
* Strategic importance

Priority determination uses the existing **Forge-Prioritisation** capability and the **Prioritisation Matrix** template. Work Item Management invokes these capabilities; it does not redefine them.

The AI Program Manager presents the recommended implementation order to the Product Owner.

The Product Owner retains final authority over prioritisation and approves the implementation sequence before work enters the SDLC.

---

## Duplicate Detection

Before a new Work Item enters the backlog, Work Item Management determines whether equivalent work already exists.

Duplicate detection considers:

* Similar titles
* Similar descriptions
* Affected components
* Reported behaviour
* Existing relationships

Where duplicates exist, Work Items are linked rather than recreated.

---

## Relationship Management

Work Item Management identifies relationships between Work Items, including:

* Parent
* Child
* Depends On
* Blocks
* Blocked By
* Relates To
* Duplicate Of
* Supersedes

Relationship information supports planning, sequencing and dependency management.

---

## Relationship to the AI Program Manager

Per **ADR-003**, the AI Program Manager is the persistent collaborator through which the Product Owner interacts with ForgeOS.

The AI Program Manager:

* Invokes Work Item Management via Collaboration Orchestration.
* Presents prioritised Work Item recommendations to the Product Owner.
* Obtains Product Owner approval before work enters the SDLC.
* Maintains continuity across Work Item intake cycles.

The AI Program Manager does **not**:

* Perform enrichment directly.
* Detect duplicates directly.
* Determine business priorities.
* Approve its own recommendations.

Engineering enrichment is performed by Work Item Management as a Collaboration Orchestration capability; approval is performed by the Product Owner.

---

## Relationship to Other Collaboration Orchestration Capabilities

Once a Work Item is approved, Collaboration Orchestration transitions into engineering execution:

```text
Approved Work Item
        ↓
Agent Selection          (Agent-Selection.md)
        ↓
Skill Selection
        ↓
Standards Loading        (Standards-Loading.md)
        ↓
Template Selection       (Template-Selection.md)
        ↓
Context Resolution       (Context-Loading.md)
        ↓
Orchestration Lifecycle  (Orchestration-Lifecycle.md)
```

The handoff is the boundary between Work Item Management (pre-SDLC) and engineering execution (SDLC). The approved Work Item becomes the "Request" that enters the Orchestration Lifecycle.

---

## Tooling Separation

The ForgeOS Framework defines **how** Work Items are managed.

The Tooling layer defines **how** external platforms are integrated.

```text
Framework
└── Collaboration Orchestration
    └── Work Item Management

Tooling
└── Platforms
    ├── GitHub
    ├── Jira
    ├── Azure DevOps
    └── GitLab
```

Each platform adapter is responsible for translating between the platform's native work-item model and the ForgeOS Work Item model. Work Item Management itself remains platform-agnostic.

---

## Related Architecture Decisions

* **ADR-001** — Collaboration Orchestration as a Core Framework Component
* **ADR-003** — Introduce the AI Program Manager as the Primary Human–AI Collaboration Role
* **ADR-004** — Define ForgeOS Agents as Specialist Engineering Roles
* **ADR-005** — Introduce Platform-Independent Work Item Management

---

## Related Components

This document should be read alongside:

* Collaboration Orchestration — `README.md`, `AI-Program-Manager.md`, `Agent-Selection.md`, `Context-Loading.md`, `Standards-Loading.md`, `Template-Selection.md`, `Orchestration-Lifecycle.md`
* Workflow
* Agents
* Skills — in particular **Forge-Prioritisation**
* Templates — in particular the **Prioritisation Matrix**
* Standards
* Governance
* Tooling — platform adapters
* Glossary

---

## ForgeOS Principle

Engineering work should never enter the SDLC unprepared.

Work Item Management ensures that every unit of work entering ForgeOS has been synchronised, validated, enriched, prioritised and approved — so that engineering execution begins with clarity, context and traceability, regardless of the platform the work originated from.