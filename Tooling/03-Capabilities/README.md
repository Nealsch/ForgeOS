# Capabilities

## Purpose

Records **which ForgeOS capabilities each platform supports**, and through which adapter mechanism.

Capabilities is the third Tooling subfolder. Where Platforms describe *who* is integrated and Adapters describe *how*, Capabilities describes **what is actually supported** in practice.

This matrix is the single place to answer: *"Can I use ForgeOS on platform X? Which features work?"*

---

## How to Read This Matrix

* **Platform** — the AI platform (from `01-Platforms/`).
* **Status** — Active (in use) or Stub (not yet in use).
* **Function Calling** — whether the platform exposes a tool-calling surface.
* **MCP** — whether the platform supports Model Context Protocol.
* **Prompt Based** — whether the platform operates via prompts/instructions (effectively always Yes).
* **Slash Commands** — whether the platform exposes named commands.
* **Plan/Act split** — whether the platform has a native propose/approve boundary.
* **AI Program Manager host** — whether the platform can host the AI-PM role.

---

## Platform Capability Matrix

| Platform | Status | Function Calling | MCP | Prompt Based | Slash Commands | Plan/Act split | AI-PM host |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Cline** | ✅ Active | ✅ Yes | ✅ Yes | ✅ Yes | ✅ Yes (skills) | ✅ Native | ✅ Yes |
| **VS Code Agent** | ✅ Active | ✅ Yes | ✅ Yes | ✅ Yes | ⚠️ Partial | ⚠️ Via approval prompts | ✅ Yes |
| Claude Code | 🟡 Stub | TBD | TBD | ✅ (assumed) | TBD | TBD | TBD |
| Codex | 🟡 Stub | TBD | TBD | ✅ (assumed) | TBD | TBD | TBD |
| Cursor | 🟡 Stub | TBD | TBD | ✅ (assumed) | TBD | TBD | TBD |
| Gemini CLI | 🟡 Stub | TBD | TBD | ✅ (assumed) | TBD | TBD | TBD |
| **Graphify** | ✅ Active | N/A (tool) | ✅ Yes (`graphify --mcp`) | ✅ (report read) | N/A (tool) | N/A (tool) | N/A (tool) |

> **Graphify** is not an AI platform; it is an **external tool** that implements the **Codebase Analysis Capability** (`Codebase-Analysis-Capability.md`). It appears in this matrix because it consumes an adapter (MCP, CLI, or Prompt-Based) like a platform consumes one. Profile: `01-Platforms/Graphify/README.md`.

> Prompt Based is marked ✅ (assumed) for stub platforms because every AI model accepts prompts by definition. The mark will be confirmed when each platform is adopted and profiled.

---

## ForgeOS Capability Matrix

The features above enable the following ForgeOS capabilities. This table records **which capabilities are usable on each active platform**.

| ForgeOS capability | Requires | Cline | VS Code Agent | Stubs |
| --- | --- | --- | --- | --- |
| Read Work Items | File access (any adapter) | ✅ | ✅ | TBD |
| Enrich Work Items (routing, priority recommendation) | File edit (any adapter) | ✅ | ✅ | TBD |
| Load context per Context Loading | Prompt Based | ✅ | ✅ | TBD |
| Load standards per Standards Loading | Prompt Based | ✅ | ✅ | TBD |
| Activate Skills | Function Calling or Slash Commands | ✅ (`use_skill`) | ⚠️ (via prompt) | TBD |
| Enforce Plan → Act approval | Plan/Act split | ✅ Native | ⚠️ Via prompts | TBD |
| External tracker sync (e.g. GitHub) | Adapter in `01-Platforms/` | ✅ (via adapter) | ✅ (via adapter) | TBD |
| **Codebase Analysis** (ADR-008) | MCP **or** CLI **or** Prompt-Based | ✅ (MCP / CLI / report) | ✅ (MCP / CLI / report) | TBD |
| Host AI Program Manager role | All of the above | ✅ | ✅ | TBD |

---

## Maintenance Policy

This matrix is updated:

* When a platform's status changes (Stub → Active, or Active → Removed).
* When a platform gains or loses adapter support.
* When a new platform is added.

It is **not** updated speculatively. Stub platforms keep their `TBD` cells until they are adopted and profiled.

When a platform is **discontinued** (as Roo was), its row is removed entirely — not retained as a historical row.

---

## How This Matrix Relates to Platform Profiles

* The **platform profile** (`01-Platforms/<platform>/README.md`) is the authoritative detail for a single platform.
* This **matrix** is the cross-platform summary.

If a profile and this matrix disagree, the profile wins and the matrix is corrected.

---

## What This Folder Does Not Own

* **Platform profile detail.** Lives in `01-Platforms/`.
* **Adapter mechanism definitions.** Live in `02-Adapters/`.
* **Engineering capability definitions.** Owned by the Framework (Skills, Work Item model, Orchestration Lifecycle).

Capabilities only records **support**; it does not define capability.

---

## Related Documents

* `Tooling/README.md` — Tooling layer overview.
* `Tooling/01-Platforms/README.md` — platform profiles summarised here.
* `Tooling/01-Platforms/Graphify/README.md` — Graphify profile (external tool, not an AI platform).
* `Tooling/02-Adapters/README.md` — adapter mechanisms referenced in the columns.
* `Tooling/03-Capabilities/Codebase-Analysis-Capability.md` — the Codebase Analysis Capability Contract (ADR-008).
* `Framework/11-Collaboration Orchestration/AI-Program-Manager.md` — the "AI-PM host" column's meaning.
