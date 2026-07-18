# Prompt Based Adapter

## Purpose

Defines the **Prompt Based** integration mechanism: integration with the AI model is achieved **purely through prompts and instructions**, with no tool-calling surface.

This is the lightest adapter mechanism. The AI operates by reading and following instructions and by reading/writing files (where the platform permits file access), rather than by invoking structured functions.

---

## How It Works

```text
Operator / runtime config
   │
   │  provides instructions via prompt
   ▼
AI model
   │
   │  reads AGENTS.md, Framework docs, Work Items
   │  writes Work Items / code by producing text
   ▼
Files on disk  (the only shared state)
```

There is no call/return protocol. The contract between ForgeOS and the model is textual: the model is told what to do and how to behave, and it produces text that the operator or platform applies.

---

## Why Prompt Based Still Matters

Even on platforms that support richer adapters, Prompt Based remains relevant because:

* It is the **universal fallback** — every AI model accepts prompts.
* It carries **behavioural guidance** that no function call can express (authority hierarchy, propose-vs-dispose, context loading order).
* `.clinerules/`, AGENTS.md and skill prompts are all Prompt Based artefacts, even when Cline also uses Function Calling.

In practice, most platforms use Prompt Based **alongside** a richer adapter. The richer adapter handles actions; Prompt Based handles *how the model should think and behave*.

---

## What Lives in a Prompt Based Integration

| Artefact | Purpose | ForgeOS example |
| --- | --- | --- |
| Governance prompt | Tells the model the authority hierarchy | `AGENTS.md` |
| Behavioural prompts | Tell the model how to load context, format responses, prefer tools | `.clinerules/*` |
| Skill prompts | Codify the language used to invoke a Skill step | `Framework/06-Prompts/` |
| Runtime instructions | Per-session direction from the operator | User messages |

Prompt Based integration is where `Framework/06-Prompts/` lands at runtime.

---

## Boundary

The Prompt Based adapter **instructs**. It does **not**:

* Decide Work Item approval — that is the Product Owner's decision.
* Compute priority.
* Select Agents, Skills or Standards (it can *recommend*, via routing prompts, but the Framework owns the routing logic).
* Override the authority hierarchy. A prompt can never instruct the model to bypass Framework authority.

A prompt that appears to require the model to make a decision is malformed; the decision belongs to a human.

---

## When to Use Prompt Based

Use Prompt Based when:

* The platform has no tool-calling API and no MCP support.
* You are expressing behavioural guidance, not discrete actions.
* You are supplementing a richer adapter with authority/context instructions.

---

## When Not to Use Prompt Based

Avoid Prompt Based as the *sole* mechanism when:

* The platform supports Function Calling or MCP — use the richer adapter for actions, Prompt Based for behaviour.
* Discrete, verifiable actions are required and free-form text is too unreliable.

---

## Relationship to Other Adapters

| Adapter | Relationship |
| --- | --- |
| Function Calling | Function Calling handles actions; Prompt Based handles behaviour. They coexist on most capable platforms. |
| MCP | MCP exposes tools/resources/prompts; Prompt Based prompts may be packaged as MCP prompt resources. |
| Slash Commands | Slash Commands are a structured entry point; Prompt Based carries the work after invocation. |

---

## Authority

Prompt Based artefacts sit **low** in the authority hierarchy:

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
Runtime prompts (.clinerules, skill prompts, etc.)
```

Runtime prompts must never override Framework authority. If a prompt conflicts with a Standard, the Standard wins and the prompt is corrected.

---

## What This Document Does Not Define

* **Specific prompt content.** That lives in `.clinerules/`, `AGENTS.md`, and `Framework/06-Prompts/`.
* **Which platforms are Prompt Based only.** That lives in the Capabilities matrix.
* **Engineering process.** Owned by the Framework.

---

## Related Documents

* `Tooling/02-Adapters/README.md` — adapter overview and selection logic.
* `Tooling/02-Adapters/Function Calling/README.md` — the structured counterpart.
* `Framework/06-Prompts/README.md` — prompt assets this adapter carries.
* `AGENTS.md` — the governance prompt every platform reads.
* `.clinerules/README.md` — Cline's runtime Prompt Based configuration.