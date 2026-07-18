# Slash Commands Adapter

## Purpose

Defines the **Slash Commands** integration mechanism: ForgeOS skills, templates and workflows are exposed to the operator as **named commands** (typically invoked as `/command`), which the platform maps to a fixed action.

Slash Commands are a **structured entry point**. They do not replace Function Calling or Prompt Based for the work itself; they provide a discoverable, typed way to *start* a ForgeOS activity.

---

## How It Works

```text
Operator types:   /forge-adr
        │
        ▼
Platform maps command → ForgeOS artefact
   ├── Skill activation
   ├── Template instantiation
   └── Workflow entry point
        │
        ▼
Work proceeds using other adapters
   (Function Calling for actions, Prompt Based for behaviour)
```

The command is a trigger. Once invoked, the actual engineering work uses whatever adapters the platform supports.

---

## What Slash Commands Map To

Typical ForgeOS mappings:

| Command (example) | Maps to |
| --- | --- |
| `/forge-wi-new` | Work Item creation workflow |
| `/forge-adr` | `Forge-Architecture-Decision-Records` skill |
| `/forge-context` | `Forge-Context-Loading` skill |
| `/forge-grill` | `Forge-Grill` skill |
| `/forge-handoff` | `Forge-Session-Management` / handoff workflow |
| `/forge-template <name>` | Template instantiation |

The exact command set is platform-dependent. This adapter defines the *mechanism*; the platform profile documents which commands are wired.

---

## Why Slash Commands Matter

* **Discoverability.** Operators see available commands without reading documentation.
* **Consistency.** A named command always invokes the same skill/template/workflow, reducing prompt drift.
* **Ergonomics.** Common workflows become one keystroke rather than a long prompt.

Slash Commands are an operator convenience. They do not add engineering capability the platform lacks; they make existing capability easier to invoke.

---

## Boundary

The Slash Commands adapter **maps names to artefacts**. It does **not**:

* Decide whether a Work Item should be approved.
* Compute priority.
* Select Agents or Standards (the underlying skill/workflow does that, within Framework rules).
* Define engineering standards.
* Grant the model authority it would not otherwise have.

A slash command is a trigger, not an authority grant.

---

## When to Use Slash Commands

Use Slash Commands when:

* The platform supports named command invocation.
* You want common ForgeOS workflows to be one-step entry points.
* You want to reduce prompt drift on repeatable workflows.

---

## When Not to Use Slash Commands

Avoid Slash Commands when:

* The platform does not support named commands.
* The workflow is one-off and unlikely to recur (just prompt for it).
* The command would obscure a decision that should remain explicit (e.g. "approve this Work Item" should never be a one-keystroke command).

---

## Relationship to Other Adapters

| Adapter | Relationship |
| --- | --- |
| Function Calling | Slash Commands provide entry points; Function Calling carries the actions once invoked. |
| MCP | MCP tools are discovered dynamically; Slash Commands are fixed and named. Slash Commands may wrap MCP tool invocations. |
| Prompt Based | Slash Commands are a structured entry; Prompt Based carries the behavioural guidance before and after. |

---

## Authority

Slash Commands sit within Tooling. They are runtime convenience and do not modify the authority hierarchy:

```text
User Instructions
    ↓
AGENTS.md
    ↓
Framework
    ↓
Project Documentation
    ↓
Tooling  (← Slash Commands live here)
    ↓
Runtime prompts
```

A slash command can never bypass Framework authority. If a command appears to require bypassing a Standard or a human approval, the command is malformed.

---

## What This Document Does Not Define

* **The command catalogue for a specific platform.** That lives in the platform profile.
* **Which platforms support Slash Commands.** That lives in the Capabilities matrix.
* **Engineering process.** Owned by the Framework.

---

## Related Documents

* `Tooling/02-Adapters/README.md` — adapter overview and selection logic.
* `Framework/05-Skills/README.md` — skills that slash commands often wrap.
* `Framework/07-Templates/README.md` — templates that slash commands often instantiate.
* `Tooling/03-Capabilities/README.md` — which platforms support slash commands.