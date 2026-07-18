# Cline

## Status

**✅ Active** — Cline is a primary AI Program Manager platform for ForgeOS.

---

## Platform Identity

| Attribute | Value |
| --- | --- |
| Platform | Cline |
| Type | IDE-resident AI coding assistant (VS Code extension) |
| ForgeOS role | AI Program Manager (per **ADR-003**) |
| Runtime config location | `.clinerules/` |
| Governance file | `AGENTS.md` (repository root) |
| Skills | Supported via `use_skill` |
| Plan/Act modes | Supported |

---

## How Cline Implements the AI Program Manager Role

Cline is one of the platforms that can host the **AI Program Manager** — the persistent AI collaborator through which the Product Owner interacts with ForgeOS. The AI Program Manager role is defined in `Framework/11-Collaboration Orchestration/AI-Program-Manager.md`.

Cline fulfils the role by:

| AI Program Manager responsibility | How Cline provides it |
| --- | --- |
| Load context per the Context Loading order | Reads `AGENTS.md` first, then follows `Framework/11-Collaboration Orchestration/Context-Loading.md` |
| Load standards per Standards Loading | Follows `Framework/11-Collaboration Orchestration/Standards-Loading.md` |
| Route work to specialist Agents / Skills | Uses `use_skill` to activate ForgeOS skills; selects Agents per `Agent-Selection.md` |
| Present options and recommendations (not decisions) | Uses Plan Mode to propose; switches to Act Mode only after approval |
| Record decisions in Work Items | Edits Work Item files under `ForgeOS Project/Backlog/` |
| Coordinate the Orchestration Lifecycle | Follows `Orchestration-Lifecycle.md` step by step |

---

## Runtime Configuration

Cline reads runtime configuration from `.clinerules/` at the repository root. This directory is **not** a source of engineering truth — it only adapts Cline to the ForgeOS engineering process.

Typical contents:

```text
.clinerules/
├── README.md
├── context-loading.md      ← how Cline should load context
├── response-format.md      ← how Cline should format responses
└── tool-preferences.md     ← how Cline should prefer tools
```

The authority hierarchy is defined in `AGENTS.md`:

```text
User Instructions
    ↓
AGENTS.md
    ↓
Framework
    ↓
Project Documentation
    ↓
Tooling
    ↓
.clinerules   ← Cline runtime configuration
```

`.clinerules` must never override Framework authority.

---

## Plan Mode and Act Mode

Cline's Plan/Act split maps cleanly to ForgeOS's **"AI proposes; the Product Owner disposes"** principle (`Decision-Making.md`):

| Cline mode | ForgeOS equivalent | Who decides |
| --- | --- | --- |
| **Plan Mode** | Options, trade-offs, recommendation presented | Cline proposes |
| **Act Mode** (after approval) | Approved work executed | Product Owner has disposed |

This is why Cline is a natural host for the AI Program Manager role: its modes enforce the proposal/decision boundary that ForgeOS requires.

---

## Skills Integration

Cline supports the ForgeOS skill catalogue via `use_skill`. When a Work Item requires a capability (e.g. `Forge-Architecture-Decision-Records`, `Forge-Requirements-Elicitation`, `Forge-Test-Strategy`), Cline:

1. Reads the Work Item's `Required Skills` field.
2. Activates each skill via `use_skill`.
3. Follows the skill's procedure.

Skills are defined in `Framework/05-Skills/`. They are platform-independent; Cline is merely one platform that can invoke them.

---

## Work Item Integration

Cline interacts with ForgeOS Work Items as files:

| Work Item action | How Cline performs it |
| --- | --- |
| Read a Work Item | `read_file` on the Work Item file |
| Enrich a Work Item (routing, priority recommendation) | `replace_in_file` on the Work Item |
| Approve / reject / defer | **Never performed by Cline** — the Product Owner decides |
| Update lifecycle state | Only after the Product Owner has approved the transition |

External tracker integration (e.g. GitHub Issues) is handled by the relevant adapter in `Tooling/01-Platforms/`, not by Cline directly. Cline only sees the ForgeOS Work Item abstraction.

---

## What This Profile Does Not Define

* **Engineering standards.** Those live in `Framework/02-Standards/`.
* **The AI Program Manager role itself.** That is defined in `Framework/11-Collaboration Orchestration/AI-Program-Manager.md`. This profile only describes how Cline *implements* it.
* **Work Item semantics.** Defined by `ADR-005` and the Work Item template.
* **Cline product documentation.** This profile assumes the operator already knows how to use Cline; it covers only the ForgeOS integration surface.

---

## Related Documents

* `AGENTS.md` — repository governance Cline reads first.
* `.clinerules/README.md` — Cline runtime configuration.
* `Framework/11-Collaboration Orchestration/AI-Program-Manager.md` — the role Cline hosts.
* `Framework/11-Collaboration Orchestration/Context-Loading.md` — Cline's context loading order.
* `Framework/11-Collaboration Orchestration/Standards-Loading.md` — Cline's standards loading mechanism.
* `Framework/11-Collaboration Orchestration/Decision-Making.md` — the propose/dispose boundary Cline's modes enforce.
* `Tooling/01-Platforms/README.md` — platform matrix.