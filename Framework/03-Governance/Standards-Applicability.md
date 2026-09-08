# Standards Applicability (Legacy Code)

## Purpose

Defines how a project declares **scoped exemptions** to Framework Standards for pre-existing ("legacy") code. Framework Standards read as universal; legacy code cannot comply retroactively. This note makes legacy applicability explicit, bounded and burnable-down — without relaxing any Framework requirement.

## Principles

1. **Tighten-only is preserved.** Project rules may tighten but never relax Framework requirements. Exemptions do not weaken the Standards; they defer their *application* to identified legacy code.
2. **Exemptions are scoped.** An exemption names the module, path, file set or interface it covers, the Standards it defers, and the reason. Blanket exemptions ("all Standards", "the whole repo") are invalid.
3. **Exemptions live in Project Documentation.** The authoritative record is a Legacy Compatibility Policy in the project's docs (recommended: `docs/governance/legacy-compat-policy.md`). The Framework is never edited to accommodate legacy code.
4. **Exemptions burn down.** Whenever legacy code covered by an exemption is substantially modified, it must be brought to the relevant Standard as part of that change, and the exemption shrunk or removed. Exemptions never attach to *new* code.
5. **New work never inherits exemptions.** All new modules, and all changes entering via intake, comply fully from the start (`first-session.md` Variant B, step 5).

## Declaring an Exemption

Record per entry:

| Field | Example |
|-------|---------|
| Scope | `src/legacy-payments/**` |
| Deferred Standards | Coding Standards (naming), Testing Standards (coverage) |
| Reason | Pre-framework third-party module; high regression risk of broad rewrite |
| Burn-down trigger | Any change touching >20% of a covered file, or any interface change |
| Review | Re-validated at each Improve-phase review |

## Review

* The AI Program Manager flags expired or stale exemptions during Verify/Improve activities.
* The Product Owner re-approves or prunes the exemption list at each review.

## Related Documents

* `first-session.md` — Variant B adoption path that references this policy.
* `canonical-project-structure.md` — mandatory/optional structure mapping for brownfield adoption.
* `Framework/02-Standards/README.md` — the Standards this note defers for scoped legacy code.
* `ForgeOS Project/ADRs/ADR-009.md` — binding model (Framework consumed read-only).
