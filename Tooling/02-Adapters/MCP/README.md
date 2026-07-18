# MCP Adapter

## Purpose

Defines the **Model Context Protocol (MCP)** integration mechanism: ForgeOS capabilities and external resources are exposed to AI models through a **standardised protocol** for tool, resource and prompt discovery.

MCP is an open standard for connecting AI models to external systems. Rather than each platform inventing its own tool-calling format, MCP defines a shared protocol so any MCP-compatible client can consume any MCP-compatible server.

---

## How It Works

```text
AI model (MCP client)
   │
   │  discovers available tools/resources/prompts
   ▼
MCP server  (ForgeOS-exposing)
   │
   │  exposes: tools, resources, prompts
   ▼
ForgeOS capabilities / repository content / external systems
```

The MCP server advertises three kinds of surfaces:

| Surface | Meaning | ForgeOS example |
| --- | --- | --- |
| **Tools** | Callable functions, like Function Calling but standardised | "Read Work Item", "List ADRs", `query`/`path`/`explain` from a Codebase Analysis MCP server |
| **Resources** | Readable data sources the model can reference | Framework documents, Standards, ADRs, knowledge graph snapshots |
| **Prompts** | Pre-defined prompt templates the model can invoke | Skill prompts from `Framework/06-Prompts/` |

The model discovers what is available and chooses what to use, exactly as with Function Calling — but through a vendor-neutral protocol.

---

## Why MCP Matters for ForgeOS

ForgeOS is explicitly **platform-independent** (AGENTS.md → Core Principles). MCP advances that goal:

* A single MCP server can serve **any** MCP-compatible AI platform (Cline, VS Code Agent, Claude Code, etc.).
* Capabilities are defined once in the server, not re-implemented per platform.
* The platform profiles become thinner: they only need to document that MCP is supported, not redefine the tool surface.

This is why MCP is the **preferred adapter** when a platform supports it.

---

## MCP vs Function Calling

| Concern | Function Calling | MCP |
| --- | --- | --- |
| Surface definition | Platform-specific | Standardised |
| Per-platform rework | Required | Not required |
| Tool/resource discovery | Implicit | Explicit (server advertises) |
| Cross-platform reuse | Low | High |
| Underlying call mechanism | N/A | Often uses function calling |

MCP does not replace function calling at the transport level — many MCP clients still call tools via function calling. MCP replaces the *ad-hoc, per-platform definition* of tools with a shared contract.

---

## Boundary

The MCP adapter **exposes tools, resources and prompts**. It does **not**:

* Decide whether a Work Item should be approved.
* Compute priority.
* Select Agents, Skills or Standards.
* Define engineering standards.
* Override the authority hierarchy.

MCP is a transport and discovery mechanism. Decisions stay with humans and the Framework.

---

## When to Use MCP

Use MCP when:

* The platform supports MCP.
* You want one definition of a capability to serve multiple platforms.
* You are exposing ForgeOS resources (Standards, ADRs, templates) as readable context, not just callable actions.

---

## When Not to Use MCP

Avoid MCP when:

* The platform does not support MCP (use Function Calling or Prompt Based).
* The integration is a single fixed workflow (a Slash Command may be simpler).
* The overhead of an MCP server is not justified for a trivial integration.

---

## Relationship to Other Adapters

| Adapter | Relationship |
| --- | --- |
| Function Calling | MCP standardises discovery; Function Calling often provides the underlying call transport. |
| Prompt Based | Prompt Based is the fallback when no tool surface exists; MCP is the richest tool surface. |
| Slash Commands | Slash Commands are fixed and named; MCP tools are discovered dynamically. |

---

## What This Document Does Not Define

* **Specific MCP server implementations.** Those would live alongside the platform profiles or in project tooling.
* **Which platforms support MCP.** That lives in the Capabilities matrix.
* **Engineering process.** Owned by the Framework.

---

## Concrete Example: Codebase Analysis Tool (ADR-008)

The **Codebase Analysis Capability** (`Tooling/03-Capabilities/Codebase-Analysis-Capability.md`) names MCP as its **preferred** integration surface. A tool such as **Graphify** (`Tooling/01-Platforms/Graphify/README.md`) is spawned by the AI platform's MCP client as a local stdio server (`graphify --mcp`) and exposes `query` / `path` / `explain` tools that read a pre-built knowledge graph from disk.

This is the canonical pattern for MCP-integrated **external tools** (as distinct from MCP servers that expose ForgeOS itself): the Tooling-layer tool satisfies a capability contract, and the Framework-layer Codebase Analyst Agent consumes it without ever naming the tool.

---

## Related Documents

* `Tooling/02-Adapters/README.md` — adapter overview and selection logic.
* `Tooling/02-Adapters/Function Calling/README.md` — the underlying call mechanism MCP often uses.
* `Tooling/03-Capabilities/README.md` — which platforms support MCP.
* `Tooling/03-Capabilities/Codebase-Analysis-Capability.md` — a Capability that names MCP as its preferred adapter (ADR-008).
* `Tooling/01-Platforms/Graphify/README.md` — a concrete MCP-integrated external tool.
* `Framework/06-Prompts/README.md` — prompt assets MCP servers may expose.
