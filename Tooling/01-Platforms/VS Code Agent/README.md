# VS Code Agent

## Status

**✅ Active** — VS Code Agent (VS Code's built-in agent / chat-agent mode) is an active ForgeOS platform, used alongside Cline.

---

## Platform Identity

| Attribute | Value |
| --- | --- |
| Platform | VS Code Agent (VS Code native agent mode) |
| Type | IDE-resident AI agent (built into VS Code) |
| ForgeOS role | AI Program Manager-capable (per **ADR-003**); complementary to Cline |
| Governance file | `AGENTS.md` (repository root) |
| Runtime config | VS Code workspace/user settings + MCP configuration |

---

## Relationship to Cline

VS Code Agent and Cline are both active AI Program Manager-capable platforms. They are **complementary**, not redundant:

| Concern | Cline | VS Code Agent |
| --- | --- | --- |
| Primary AI-PM host | ✅ Yes (reference profile) | ⚙️ Yes |
| Plan/Act split | Native (Plan Mode / Act Mode) | Agent mode with approval prompts |
| Skill invocation | `use_skill` | Via prompt or tooling integration |
| Runtime config | `.clinerules/` | VS Code settings + MCP |
| Best suited to | End-to-end Orchestration Lifecycle execution | Lightweight, editor-native assistance |

Either platform can host the AI Program Manager role for a given task. When both are available, the operator chooses per task; the Framework does not mandate which platform to use.

---

## How VS Code Agent Implements the AI Program Manager Role

| AI Program Manager responsibility | How VS Code Agent provides it |
| --- | --- |
| Load context per the Context Loading order | Reads `AGENTS.md` first, then follows `Context-Loading.md` |
| Load standards per Standards Loading | Follows `Standards-Loading.md` |
| Route work to specialist capabilities | Via prompts referencing ForgeOS skills; Agent-Selection applied manually or via tooling |
| Present options, not decisions | Uses approval prompts before applying changes; defers to the Product Owner for approval decisions |
| Record decisions in Work Items | Edits Work Item files via the editor/tool surface |
| Coordinate the Orchestration Lifecycle | Follows `Orchestration-Lifecycle.md` |

The same **"AI proposes; the Product Owner disposes"** principle applies. VS Code Agent must never mark a Work Item approved — only the Product Owner does.

---

## Runtime Configuration

VS Code Agent does not use `.clinerules/`. Its runtime configuration is spread across:

* VS Code workspace settings (`.vscode/`).
* User settings.
* MCP configuration (for Model Context Protocol servers).
* `AGENTS.md` as the governance document read by the agent.

Despite the different mechanism, the same authority hierarchy applies: runtime configuration must **never** override Framework authority. (See `AGENTS.md` → Authority Hierarchy.)

---

## Work Item Integration

VS Code Agent interacts with ForgeOS Work Items as files, the same as any other AI-PM platform. It sees only the ForgeOS Work Item abstraction; external tracker integration is handled by adapters in `Tooling/01-Platforms/`.

| Work Item action | How VS Code Agent performs it |
| --- | --- |
| Read a Work Item | File read via the editor/agent |
| Enrich a Work Item | File edit via the editor/agent |
| Approve / reject / defer | **Never** — Product Owner only |
| Update lifecycle state | Only after Product Owner approval |

---

## What This Profile Does Not Define

* **Engineering standards.** Those live in `Framework/02-Standards/`.
* **The AI Program Manager role.** Defined in `Framework/11-Collaboration Orchestration/AI-Program-Manager.md`. This profile only describes how VS Code Agent implements it.
* **Product documentation for VS Code.** This profile assumes the operator already knows VS Code's agent mode; it covers only the ForgeOS integration surface.
* **Platform-vs-platform preference.** ForgeOS does not mandate Cline over VS Code Agent or vice versa.

---

## Related Documents

* `AGENTS.md` — repository governance VS Code Agent reads.
* `Framework/11-Collaboration Orchestration/AI-Program-Manager.md` — the role this platform hosts.
* `Framework/11-Collaboration Orchestration/Context-Loading.md` — context loading order.
* `Framework/11-Collaboration Orchestration/Decision-Making.md` — propose/dispose boundary.
* `Tooling/01-Platforms/Cline/README.md` — the complementary active platform.
* `Tooling/01-Platforms/README.md` — platform matrix.