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
