# First Session with ForgeOS

## Purpose

The operational walkthrough for starting a ForgeOS project. Two variants are defined:

* **Variant A — New project:** the full canonical scaffold is created up front; folders may exist empty and the project grows into them (see `canonical-project-structure.md`).
* **Variant B — Existing codebase:** the Framework is attached without restructuring the repository; the canonical structure is mapped incrementally, never imposed.

Both variants bind to the Framework identically, per **ADR-009**: a sibling clone with a pointer pinned to a Framework release tag. Copying or forking the Framework into a project is forbidden.

---

## Binding to the Framework (both variants)

1. Clone the ForgeOS Framework repository to a **sibling location** of the project directory (convention: `../ForgeOS`).

   ```text
   parent/
   ├── ForgeOS/        ← Framework clone (read-only; never modified by the project)
   └── my-project/     ← your project
   ```

2. Record the binding in `docs/PROJECT-DEFINITION.md` → **Framework Binding** block:

   | Field | Value |
   |-------|-------|
   | Bound release tag | `v1.0.1` |
   | Pin date | date of binding |
   | Upgrade history | (initial pin) |

   The **pin**, not the local path, is authoritative. The sibling path is a per-machine convenience; project records must never depend on it.

3. Configure the AI platform runtime to resolve Framework references through the sibling clone (e.g. `.clinerules/context-loading.md` points to `../ForgeOS/Framework/...`).

### Upgrading the Binding (both variants)

Upgrades are explicit, recorded actions — never accidental:

1. Review the new release's notes, including the **risks/rewards statement** for any Breaking changes (`Framework/03-Governance/compatibility.md` → Compatibility Preference and Upgrade Review).
2. The Product Owner deliberately accepts or declines the upgrade.
3. If accepted: update the sibling clone to the new release tag, update the pin record and its upgrade history, and work any migration guidance.

A hold decision is recorded against the pin; a hold is never permanent by default — the upgrade review is repeated at each subsequent Major release.

---

## Variant A — New Project

1. **Create the project folder** and initialise version control.
2. **Scaffold the canonical structure** from `Framework/07-Templates/09-Project Template/` — all folders, including ones with no immediate content (`.gitkeep` or structural `README.md` slots preserve them). Do not prune "unused" folders; the project grows into a predictable shape.
3. **Bind the Framework** (steps above).
4. **Bootstrap project state:** complete `docs/PROJECT-DEFINITION.md`, seed `docs/GLOSSARY.md`, and leave the remaining template slots in place.
5. **Configure the AI runtime:** replace the `AGENTS.md` template slot with project-specific agent guidance that points to the Framework as the single source of engineering truth; adapt the platform runtime-config patterns (e.g. `.clinerules/`) from the Framework repository.
6. **Open Session 1** per `Forge-Session-Management`: state the objective, load context per `Forge-Context-Loading`, and route the first Work Item through intake.
7. Enter the Workflow at **Specify** (`Framework/01-Workflow/01-Specify/README.md`).

---

## Variant B — Existing Codebase

1. **Attach, don't restructure:** bind the Framework per the steps above. The existing repository layout is untouched.
2. **Baseline:** engage the Codebase Analyst (per ADR-007/ADR-008) to produce an Architecture Assessment (`Framework/07-Templates/02-Architecture/Architecture-Assessment-template.md`) — what exists today, technical debt, security surface.
3. **Bootstrap a minimal docs set:** create only the **mandatory** pieces from the canonical-structure mandatory/optional matrix (`canonical-project-structure.md`), filling them from the baseline. Recommended pieces are added as touched; optional pieces only when genuinely useful.
4. **Declare a legacy compatibility policy:** per `Framework/03-Governance/Standards-Applicability.md`, record scoped legacy exemptions in project documentation. Project rules may tighten but never relax Framework requirements; exemptions burn down as legacy code is touched.
5. **Route all new work through intake:** from this point, every change — however small — enters via Collaboration Orchestration intake and follows the Workflow. Legacy code is migrated opportunistically under its declared exemptions.
6. **Open Session 1** per `Forge-Session-Management`, with the baseline and compatibility policy as primary context.

---

## Related Documents

* `ForgeOS Project/ADRs/ADR-009.md` — Framework Binding & Consumption Model (the sanctioned binding).
* `canonical-project-structure.md` — the canonical scaffold and the mandatory/optional matrix.
* `Framework/03-Governance/Standards-Applicability.md` — legacy scope exemptions and burn-down.
* `Framework/03-Governance/compatibility.md` — compatibility preference, upgrade review, anti-stranding policy.
* `Framework/01-Workflow/README.md` — the SDLC entered after this session.
* `Framework/07-Templates/09-Project Template/` — the canonical scaffold source.

