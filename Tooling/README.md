# ForgeOS Tooling

## Purpose

The Tooling layer integrates ForgeOS with external systems: AI platforms (IDEs, coding assistants) and external work-tracking systems (issue trackers, project management tools).

It is the **only** layer permitted to contain platform-specific integration code, configuration and adapters.

---

## Architectural Position

Tooling sits at the bottom of the ForgeOS authority hierarchy. It implements integrations defined by the Framework — it never defines engineering standards, workflow, or process.

```text
Framework  (defines how Work Items are managed)
    │
    ▼
Tooling    (defines how external platforms are integrated)
    │
    ├── Platforms      → AI platforms + external trackers
    ├── Adapters       → integration mechanisms
    └── Capabilities   → supported feature matrix
    │
    ▼
Platform Runtime Configuration  (e.g. .clinerules)
```

Per **ADR-005**, the ForgeOS Framework owns the **Work Item** abstraction and the Work Item Management process. Tooling owns only the translation between each external platform's native model and the ForgeOS Work Item model.

---

## Platform Adapter Contract

Every external work-tracking platform integrated with ForgeOS must provide an adapter that conforms to this contract.

The ForgeOS Framework does not know about GitHub Issues, Jira Issues, Azure DevOps Work Items or GitLab Issues. It only knows about ForgeOS Work Items. The adapter is responsible for the translation in both directions.

### Inbound: External → ForgeOS Work Item

The adapter must map the external artefact onto the ForgeOS Work Item fields defined in `Framework/07-Templates/01-Product/Work-Item-template.md`, including:

| External Concept (examples)       | ForgeOS Work Item Field        |
| --------------------------------- | ------------------------------ |
| Native issue/work-item ID, URL    | `External Reference`           |
| Platform name                     | `Source Platform`              |
| Title, description, comments      | `Description`                  |
| Type / labels / tags              | `Work Item Type` (normalised)  |
| Reporter / creator                | `Reported By`                  |
| Created / updated timestamps      | `Date Imported`                |
| Priority / severity labels        | Recorded but **not** used as the ForgeOS priority — ForgeOS computes its own priority via Work Item Management |
| Linked issues                     | `Relationships` (normalised to ForgeOS relationship types) |
| Status                            | Initial `Synchronisation Status` |

> Platform priority labels are **never** trusted as the ForgeOS priority. Priority is determined by Work Item Management using engineering metadata (see `Framework/11-Collaboration Orchestration/Work-Item-Management.md`).

### Outbound: ForgeOS → External

When Work Item Management marks a Work Item `Completed`, the adapter must:

1. Update the external artefact's status to the platform's equivalent of "done" (where applicable).
2. Close the external artefact where appropriate and permitted.
3. Report `Synchronisation Status = Synchronised` (then `Closed`) back to Work Item Management.

Outbound updates are triggered by Work Item Management (Orchestration Lifecycle stage 9 — External Synchronisation). The adapter performs the write; it does not decide *when* to write.

### Adapter Responsibilities

Each adapter must:

* Translate native work-item fields to/from the ForgeOS Work Item model.
* Preserve the external reference for traceability.
* Normalise relationship types to the ForgeOS set (Parent, Child, Depends On, Blocks, Blocked By, Relates To, Duplicate Of, Supersedes).
* Never define engineering priority, routing or enrichment logic — those belong to the Framework.
* Never expose platform-specific terminology into the Framework layer.

### Adapter Boundary (no duplication)

* **Adapter owns:** platform API calls, authentication, field mapping, rate limiting, native status mapping.
* **Framework owns:** validation, enrichment, duplicate detection, prioritisation, routing, approval.

This boundary is what keeps ForgeOS platform-independent. Adding a new tracker requires a new adapter; it does **not** require changes to Work Item Management, the Orchestration Lifecycle or any ForgeOS Standard.

---

## Structure

| Folder        | Purpose                                                                 |
| ------------- | ----------------------------------------------------------------------- |
| `01-Platforms`  | Profiles and per-platform adapters for supported AI platforms and external trackers. |
| `02-Adapters`   | Integration mechanisms (Function Calling, MCP, Prompt-Based, Slash Commands). |
| `03-Capabilities` | Supported feature matrix and compatibility across platforms.         |

---

## Design Principles

* Tooling implements integrations; it never defines process.
* Tooling never owns engineering decisions.
* Platform-specific concepts stay inside Tooling; the Framework only sees ForgeOS abstractions.
* Adding a platform must not require Framework changes.
* Runtime configuration (e.g. `.clinerules`) sits below Tooling and must never override Framework authority.

---

## Related Documents

* `Framework/11-Collaboration Orchestration/Work-Item-Management.md` — the process Tooling adapters serve.
* `Framework/07-Templates/01-Product/Work-Item-template.md` — the model adapters translate to/from.
* `Framework/02-Standards/` — engineering standards Tooling must not redefine.
* **ADR-005** — Introduce Platform-Independent Work Item Management.