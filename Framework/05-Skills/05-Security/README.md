# Security Skills

## Purpose

Security Skills define the capabilities used to create secure software.

These Skills cover security review, security testing, secrets management and attack-surface analysis. Threat modelling is owned by the Architecture category (`Forge-Threat-Modelling`); this category verifies and manages what design and implementation produce.

---

## Boundary Definitions

These concerns overlap in everyday language, so the category draws the boundaries explicitly (per **WI-006**, Q3):

| Concern | Skill | Question it answers | Phase focus |
| --- | --- | --- | --- |
| Attack-surface analysis | `Forge-Security-Surface-Review` | *Where could this codebase be attacked?* (graph-based, preliminary) | Onboarding / Design |
| Design-time risk modelling | `Forge-Threat-Modelling` *(Architecture)* | *What are the risks and required controls?* | Design |
| Artifact review | `Forge-Security-Review` | *Does the code and its supply chain contain weaknesses?* (static) | Develop / Verify |
| Runtime verification | `Forge-Security-Testing` | *Do the implemented controls actually hold?* | Verify |
| Secrets lifecycle | `Forge-Secrets-Management` | *Are credentials stored, injected and rotated safely?* | Develop / Verify / Operate |

**Deference rules:**

* Designing controls is `Forge-Threat-Modelling`'s job; this category verifies them.
* Finding insecure code is `Forge-Security-Review`; *writing* secure code is Secure Coding guidance, deferred to the Develop-phase skills (gap #4 / issue #2) — see the note below.
* Inspecting artifacts is `Forge-Security-Review` (static); exercising a running system is `Forge-Security-Testing` (runtime).
* Operating a specific secrets tool is project Tooling; `Forge-Secrets-Management` owns only the policy and verification discipline.

---

## Skills

| Skill | Responsibility |
| --- | --- |
| `Forge-Security-Surface-Review` | Identifies and assesses the attack surface of an existing codebase from a knowledge graph |
| `Forge-Security-Review` | Secure code review and dependency vulnerability assessment of engineering artifacts |
| `Forge-Security-Testing` | Runtime verification of implemented security controls against the threat model (OWASP WSTG) |
| `Forge-Secrets-Management` | Lifecycle policy and leakage verification for credentials, keys and tokens |

**Deferred capability:** Secure Coding (writing secure code) is tracked for the Develop phase in [issue #2](https://github.com/Nealsch/ForgeOS/issues/2) (skill-gaps gap #4). Until authored, developers should apply OWASP Proactive Controls under `Forge-Backend-Development` / `Forge-Frontend-Development`, with verification by `Forge-Security-Review`.