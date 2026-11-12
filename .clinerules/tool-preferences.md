# Tool Preferences (Cline Runtime)

Runtime preferences for how Cline uses its tools in a ForgeOS repository. These preferences carry no engineering authority.

## File Access

* Prefer batched file reads (multiple files in one request) over sequential reads.
* Read documentation before implementation code (Framework principle: documentation before code).
* Use precise, scoped edits for existing files; full-file writes only when edits fail or the file is new.

## Commands

* Prefer non-interactive commands; avoid pagers and anything requiring follow-up input.
* Use read-only inspection commands (listing, search, git status/log with `--no-pager`) freely; state-changing commands only after plan approval.

## Search

* Prefer targeted regex search over full-file reads when locating sections.
* Batch independent searches into a single request.

## Execution Order

* Make independent tool calls in parallel wherever possible.
* Sequence calls only when later calls depend on earlier results (e.g. read before edit).
* Verify edited files after changes before reporting completion.

## Long-Running Commands (anti-loop protocol, adopted 2026-11-12)

Learned from repeated poll-storms while waiting on the ~205s Pester suite inside a 30s
tool-call window: same-turn completion mathematically requires 8+ identical checks. Never
hold a turn open waiting for an autonomous process.

* **Launch detached with a sentinel.** Use `scripts/verify-logged.sh` (lint and tests in
  parallel, timestamped logs, writes `work/verify-latest.done` with a one-line summary at
  completion). Never tail half-written logs; never run two verification chains concurrently
  (the script refuses via a liveness guard).
* **Max 2 sentinel checks per turn**, each spaced by genuinely independent work (records,
  commit preparation, cleanup) — never padded sleeps.
* **Yield with status.** If the sentinel is absent after those checks, report the exact
  state ("verification running; results land in `work/verify-latest.done`") and end the
  turn. Retrieve the result with one command on the next interaction.
* **Never emit two consecutive identical wait-polls.** A second identical poll in a row is
  a protocol violation.
* **Fast-feedback tier for point fixes.** After a test-only or single-suite fix, run the
  affected suite first via the filter (`scripts/run-tests.sh '*fragment*'`, ~40s) before any
  full-suite run. Proven: catches single-test regressions in one 40s cycle instead of a
  205s full re-run.
