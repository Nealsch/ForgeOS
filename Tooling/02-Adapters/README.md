# Adapters

## Purpose

This folder defines the **integration mechanisms** ForgeOS uses to connect AI platforms and external systems to the Framework.

Adapters are *how* integration happens. They are distinct from Platforms (`Tooling/01-Platforms/`), which describe *who* is integrated. A single platform may use more than one adapter mechanism.

---

## Position in the Framework

```text
Framework   →  defines the Work Item model and AI-PM role (platform-independent)
    ↓
Tooling
    ├── 01-Platforms   →  per-platform profiles (who is integrated)
    ├── 02-Adapters    →  integration mechanisms  (how integration happens)  ← this folder
    └── 03-Capabilities →  feature matrix (what each platform/adapter supports)
    ↓
Platform Runtime Configuration
```

Adapters never own engineering process. They translate between platform-native behaviour and ForgeOS abstractions.

---

## Adapter Types

ForgeOS recognises four integration mechanisms:

| Adapter type | Folder | Mechanism summary |
| --- | --- | --- |
| Function Calling | `Function Calling/` | The AI model invokes named functions/tools exposed by the platform; ForgeOS capabilities are surfaced as callable functions. |
| MCP | `MCP/` | Model Context Protocol — a standardised protocol for exposing tools, resources and prompts to AI models. |
| Prompt Based | `Prompt Based/` | Integration is achieved purely through prompts and instructions, with no tool-calling surface; the AI operates by reading/writing files and following instructions. |
| Slash Commands | `Slash Commands/` | The platform exposes named commands (often `/command`) that map to ForgeOS skills, templates or workflows. |

Each subfolder documents its mechanism in detail.

---

## How to Choose an Adapter

The adapter mechanism is determined by **what the platform supports**, not by preference:

```text
Does the platform expose a tool-calling API?
    ├── Yes → Function Calling
    └── No
        ↓
Does the platform support MCP?
    ├── Yes → MCP
    └── No
        ↓
Does the platform expose slash commands?
    ├── Yes → Slash Commands
    └── No
        ↓
Prompt Based
```

A platform may support more than one mechanism. For example, an IDE-resident agent might support Function Calling for tool use *and* Slash Commands for skill invocation. In that case, multiple adapters coexist; each is documented in its own subfolder.

---

## Adapter Boundary (no duplication)

The boundary defined in `Tooling/README.md` applies to every adapter:

* **Adapter owns:** mechanism-specific translation (function signatures, MCP server definitions, prompt packaging, slash command wiring).
* **Framework owns:** validation, enrichment, duplicate detection, prioritisation, routing, approval.

Adapters never make engineering decisions. They only carry inputs and outputs across the platform boundary.

---

## Relationship to Platforms

Adapters and Platforms are orthogonal:

* A **Platform profile** (`01-Platforms/`) describes a specific tool (Cline, VS Code Agent, GitHub, etc.) and which adapters it uses.
* An **Adapter definition** (`02-Adapters/`, this folder) describes a mechanism that may be used by many platforms.

When documenting a platform, reference the adapter(s) it uses. When documenting an adapter, do not enumerate every platform that might use it — that is the Capabilities matrix's job.

---

## Relationship to Capabilities

The Capabilities matrix (`03-Capabilities/`) records which platforms support which adapter mechanisms, and which ForgeOS capabilities each combination enables. Adapters define the mechanism; Capabilities record the support.

---

## Design Principles

* **Adapters are mechanisms, not policies.** They carry inputs and outputs; they do not decide.
* **Adapters are reusable.** A well-defined adapter works for any platform that supports its mechanism.
* **Adapters never leak platform terminology into the Framework.** The Framework only sees ForgeOS abstractions.
* **Adapters are versioned with the Framework.** New mechanisms are added as new adapter types, not by overloading existing ones.

---

## What This Folder Does Not Own

* **Platform profiles.** Those live in `01-Platforms/`.
* **The capability matrix.** That lives in `03-Capabilities/`.
* **The Work Item model.** Defined by ADR-005 and the Work Item template.
* **Engineering process.** Owned by the Framework.

---

## Related Documents

* `Tooling/README.md` — Tooling layer purpose and adapter contract.
* `Tooling/01-Platforms/README.md` — platform profiles that use these adapters.
* `Tooling/03-Capabilities/README.md` — feature matrix across platforms and adapters.
* `Framework/11-Collaboration Orchestration/Work-Item-Management.md` — the process adapters serve.
* `Framework/07-Templates/01-Product/Work-Item-template.md` — the model adapters translate to/from.