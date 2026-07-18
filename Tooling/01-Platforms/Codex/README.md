# Codex

## Status

**🟡 Stub — populate when adopted.**

Codex is **not currently in active use** on ForgeOS. This profile exists so the platform matrix remains discoverable and the folder structure does not need to change when Codex is later adopted.

---

## Platform Identity

| Attribute | Value |
| --- | --- |
| Platform | Codex (OpenAI) |
| Type | AI coding assistant |
| ForgeOS role (expected) | AI Program Manager-capable (per **ADR-003**) |
| Governance file | `AGENTS.md` (repository root) |
| Runtime config | TBD on adoption |

---

## Why This Is a Stub

Per the maintenance policy in `Tooling/01-Platforms/README.md`, ForgeOS does not require every supported platform to be fully profiled before the framework is usable. Platform profiles are expanded as platforms are actually adopted on projects.

This stub records the platform's identity, the architectural role it would fulfil, and the fact that it is not yet in use. It does not speculatively document Codex's features or runtime configuration.

---

## Expansion Checklist (when adopted)

When Codex is adopted on a ForgeOS project, expand this profile in the same pull request that introduces its runtime configuration. Minimum content:

* [ ] Platform identity (type, vendor, deployment model).
* [ ] How it implements each AI Program Manager responsibility (see `AI-Program-Manager.md`).
* [ ] Runtime configuration location and authority (must sit below Framework in the hierarchy).
* [ ] Context loading behaviour (must follow `Context-Loading.md`).
* [ ] Standards loading behaviour (must follow `Standards-Loading.md`).
* [ ] Work Item integration (reads/enriches Work Items as files; never approves).
* [ ] Confirm the "AI proposes; Product Owner disposes" boundary is enforced.
* [ ] Update `Tooling/01-Platforms/README.md` status from Stub → Active.
* [ ] Update `Tooling/03-Capabilities/README.md` feature matrix.

---

## What This Profile Does Not Define

Until expanded, this profile defines nothing about how Codex operates. All engineering authority remains with the Framework.

---

## Related Documents

* `Tooling/01-Platforms/README.md` — platform matrix and maintenance policy.
* `Tooling/01-Platforms/Cline/README.md` — reference active profile (model to follow on expansion).
* `Framework/11-Collaboration Orchestration/AI-Program-Manager.md` — the role this platform would host.