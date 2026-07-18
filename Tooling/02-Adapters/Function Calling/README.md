# Function Calling Adapter

## Purpose

Defines the **Function Calling** integration mechanism: ForgeOS capabilities are surfaced to the AI model as **named, callable functions** (also called tools), and the model decides when to invoke them.

This is the richest adapter mechanism. It allows the AI to perform discrete actions (read a file, create a Work Item, run a command) through a structured call/return interface rather than through free-form text.

---

## How It Works

```text
AI model
   │
   │  "I need to read the Work Item"
   ▼
Function call:  read_file(path=".../WI-001.md")
   │
   ▼
Platform executes the function
   │
   ▼
Result returned to model as structured output
```

The model sees a catalogue of available functions with their signatures. It chooses which to call, with which arguments. The platform executes the call and returns the result.

---

## What ForgeOS Surfaces as Functions

ForgeOS capabilities that map well to Function Calling include:

| Capability | Example function surface |
| --- | --- |
| Read a Work Item | `read_file` on a Work Item path |
| Enrich a Work Item | `replace_in_file` / `write_to_file` |
| Activate a Skill | `use_skill(skill_name)` |
| Search the repository | `search_files`, `list_files` |
| Execute a command | `execute_command` |
| Ask the Product Owner a question | `ask_followup_question` |
| Present a plan for approval | `plan_mode_respond` |
| Complete a task | `attempt_completion` |

The exact function catalogue is platform-dependent. The platform profile documents which functions are available; this adapter folder documents the *mechanism*.

---

## Boundary

The Function Calling adapter **carries calls and results**. It does **not**:

* Decide whether a Work Item should be approved — that is the Product Owner's decision.
* Compute priority — that is Work Item Management's job.
* Select Agents, Skills or Standards — that is routing, owned by the Framework.
* Define engineering standards.

Functions are the transport. Decisions stay with humans and the Framework.

---

## When to Use Function Calling

Use Function Calling when:

* The platform exposes a tool-calling API.
* Discrete, structured actions (read, write, search, execute) are the primary interaction.
* The AI needs precise control over file and command operations.

Cline is a reference example: its entire tool surface (`read_file`, `write_to_file`, `replace_in_file`, `search_files`, `execute_command`, `use_skill`, etc.) is a Function Calling adapter.

---

## When Not to Use Function Calling

Avoid Function Calling when:

* The platform does not support tool calling (use Prompt Based instead).
* The integration is better modelled as standardised tool/resource discovery (use MCP instead).
* The integration is a fixed set of named workflows (use Slash Commands instead).

---

## Relationship to Other Adapters

| Adapter | Relationship |
| --- | --- |
| MCP | MCP standardises tool/resource discovery; Function Calling is the underlying call mechanism many MCP servers rely on. |
| Prompt Based | Prompt Based has no call surface; Function Calling is its structured counterpart. |
| Slash Commands | Slash Commands are a fixed, named subset; Function Calling is open and model-chosen. |

---

## What This Document Does Not Define

* **The function catalogue for a specific platform.** That lives in the platform profile.
* **Which platforms support Function Calling.** That lives in the Capabilities matrix.
* **Engineering process.** Owned by the Framework.

---

## Related Documents

* `Tooling/02-Adapters/README.md` — adapter overview and selection logic.
* `Tooling/01-Platforms/Cline/README.md` — reference platform using Function Calling.
* `Tooling/03-Capabilities/README.md` — which platforms support this mechanism.