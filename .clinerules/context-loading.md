# Context Loading (Cline Runtime)

Runtime adaptation of `Framework/11-Collaboration Orchestration/Context-Loading.md` for the Cline platform.

The Framework owns the context-loading strategy. This file only describes how Cline executes it.

## Runtime Behaviour

1. On session start, read `AGENTS.md` first.
2. Identify the current SDLC phase from the session handoff or active Work Item before loading anything else.
3. Load Framework documents in the order defined by `Context-Loading.md` — workflow, then standards, then templates — never the whole tree.
4. For specialist loading (Standards, Skills), follow `Standards-Loading.md`.
5. Inspect implementation code only when documentation is insufficient (Framework principle: documentation before code).
6. Prefer reading files in one batched request over sequential exploration to preserve context budget.
7. When context runs low, favour completing the current activity and requesting session end over starting new work.

## Authority

If this file conflicts with the Framework, the Framework wins and this file must be corrected.
