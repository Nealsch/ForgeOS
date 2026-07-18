#!/usr/bin/env bash
# install-forge-skills.sh
#
# Generic installer that copies the ForgeOS skill catalogue from
# `Framework/05-Skills/` into a Cline workspace's skills directory
# (`.cline/skills/` for a project, or `~/Cline/skills/` globally).
#
# After running this in a new project, Cline 4.0.9+ will discover every
# ForgeOS skill via its `use_skill` tool.
#
# Authority: This script is a Tooling adapter. It does not define or modify
# engineering standards. It only adapts Cline to the ForgeOS Framework.
# (See AGENTS.md authority hierarchy.)
#
# Usage:
#   ./install-forge-skills.sh                       # install into ./.cline/skills
#   ./install-forge-skills.sh --target /path/to/proj
#   ./install-forge-skills.sh --global              # install into ~/Cline/skills
#   ./install-forge-skills.sh --list                # list available skills
#   ./install-forge-skills.sh --dry-run             # show what would happen
#   ./install-forge-skills.sh --force               # overwrite existing skills
#
set -euo pipefail

# -----------------------------------------------------------------------------
# Defaults
# -----------------------------------------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Resolve the ForgeOS repository root (nearest ancestor containing Framework/)
resolve_forgeos_root() {
  local dir="$SCRIPT_DIR"
  while [[ "$dir" != "/" ]]; do
    if [[ -d "$dir/Framework/05-Skills" ]]; then
      echo "$dir"
      return 0
    fi
    dir="$(dirname "$dir")"
  done
  # Fall back to current working directory if caller is invoking from a checkout
  if [[ -d "$PWD/Framework/05-Skills" ]]; then
    echo "$PWD"
    return 0
  fi
  return 1
}

if ! FORGEOS_ROOT="$(resolve_forgeos_root)"; then
  echo "ERROR: could not locate ForgeOS Framework/05-Skills from '$SCRIPT_DIR'." >&2
  echo "       Run this script from inside a ForgeOS checkout," >&2
  echo "       or set FORGEOS_ROOT explicitly." >&2
  exit 1
fi

SKILLS_SRC="$FORGEOS_ROOT/Framework/05-Skills"

# -----------------------------------------------------------------------------
# Arg parsing
# -----------------------------------------------------------------------------
TARGET_DIR=""
GLOBAL=0
FORCE=0
DRY_RUN=0
LIST_ONLY=0

usage() {
  cat <<'EOF'
Usage: install-forge-skills.sh [options]

Copies the ForgeOS skill catalogue into a Cline workspace.

Options:
  --target <dir>   Target project root. Skills install to <dir>/.cline/skills/
                   (default: current working directory)
  --global         Install globally to ~/Cline/skills/ (overrides --target)
  --force          Overwrite existing skill folders
  --dry-run        Show what would happen without writing anything
  --list           List available ForgeOS skills and exit
  -h, --help       Show this help

Environment:
  FORGEOS_ROOT     Override ForgeOS checkout location (auto-detected otherwise)

Examples:
  install-forge-skills.sh --list
  install-forge-skills.sh --target ~/Code/MyApp
  install-forge-skills.sh --global --force
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --target)    TARGET_DIR="$2"; shift 2 ;;
    --global)    GLOBAL=1; shift ;;
    --force)     FORCE=1; shift ;;
    --dry-run)   DRY_RUN=1; shift ;;
    --list)      LIST_ONLY=1; shift ;;
    -h|--help)   usage; exit 0 ;;
    *) echo "Unknown option: $1" >&2; usage >&2; exit 2 ;;
  esac
done

# -----------------------------------------------------------------------------
# Discover skills
# -----------------------------------------------------------------------------
# Returns: <skill-name>\t<path-to-SKILL.md>
discover_skills() {
  # Sort for deterministic ordering
  while IFS= read -r skill_md; do
    local name
    name="$(extract_skill_name "$skill_md")"
    if [[ -z "$name" ]]; then
      # Fall back to the parent directory name
      name="$(basename "$(dirname "$skill_md")")"
    fi
    printf '%s\t%s\n' "$name" "$skill_md"
  done < <(find "$SKILLS_SRC" -type f -name "SKILL.md" | sort)
}

# Extract skill name from JSON metadata: prefer "skill-name", then "skill".
extract_skill_name() {
  local file="$1"
  # Try "skill-name" first (Cline 4.0.9+ canonical field)
  local name
  name="$(grep -m1 -E '"skill-name"[[:space:]]*:' "$file" 2>/dev/null \
         | sed -E 's/.*"skill-name"[[:space:]]*:[[:space:]]*"([^"]*)".*/\1/' || true)"
  if [[ -n "$name" ]]; then echo "$name"; return 0; fi
  # Fall back to legacy "skill" field
  name="$(grep -m1 -E '"skill"[[:space:]]*:' "$file" 2>/dev/null \
         | sed -E 's/.*"skill"[[:space:]]*:[[:space:]]*"([^"]*)".*/\1/' || true)"
  echo "$name"
}

# -----------------------------------------------------------------------------
# --list mode
# -----------------------------------------------------------------------------
if [[ "$LIST_ONLY" -eq 1 ]]; then
  echo "ForgeOS skills available under: $SKILLS_SRC"
  echo "------------------------------------------------------------------------"
  count=0
  while IFS=$'\t' read -r name path; do
    printf '  %-45s  %s\n' "$name" "${path#$FORGEOS_ROOT/}"
    count=$((count + 1))
  done < <(discover_skills)
  echo "------------------------------------------------------------------------"
  echo "Total: $count skill(s)"
  exit 0
fi

# -----------------------------------------------------------------------------
# Resolve target directory
# -----------------------------------------------------------------------------
if [[ "$GLOBAL" -eq 1 ]]; then
  DEST_ROOT="$HOME/Cline"
  DEST_SKILLS="$DEST_ROOT/skills"
else
  if [[ -z "$TARGET_DIR" ]]; then
    TARGET_DIR="$PWD"
  fi
  DEST_ROOT="$TARGET_DIR"
  DEST_SKILLS="$DEST_ROOT/.cline/skills"
fi

# -----------------------------------------------------------------------------
# Pre-flight checks
# -----------------------------------------------------------------------------
if [[ ! -d "$SKILLS_SRC" ]]; then
  echo "ERROR: ForgeOS skills source not found: $SKILLS_SRC" >&2
  exit 1
fi

if [[ ! -d "$DEST_ROOT" ]]; then
  echo "ERROR: target root does not exist: $DEST_ROOT" >&2
  echo "       Create it first, or check --target / --global." >&2
  exit 1
fi

# -----------------------------------------------------------------------------
# Install
# -----------------------------------------------------------------------------
if [[ "$DRY_RUN" -eq 1 ]]; then
  echo "DRY RUN — no files will be written."
fi
echo "ForgeOS root : $FORGEOS_ROOT"
echo "Skills source: $SKILLS_SRC"
echo "Install to   : $DEST_SKILLS"
echo "Mode         : $([[ "$GLOBAL" -eq 1 ]] && echo global || echo project)"
echo "Overwrite    : $([[ "$FORCE" -eq 1 ]] && echo yes || echo no)
"
echo "------------------------------------------------------------------------"

# Normalise a copied SKILL.md so Cline 4.0.9+ can discover it.
# Adds a top-level "skill-name" field alongside the existing "skill" field
# inside the JSON metadata block. Non-destructive: original field is kept.
normalise_skill_metadata() {
  local file="$1"
  local skill_name="$2"

  # Already has skill-name? Nothing to do.
  if grep -q -E '"skill-name"[[:space:]]*:' "$file" 2>/dev/null; then
    return 0
  fi

  # Insert "skill-name" immediately after the opening brace line of the JSON block.
  # We target the first ```json fence and add the field on the line after '{'.
  # Patterns are CRLF-tolerant because ForgeOS files on Windows checkouts use
  # CRLF line endings, which would otherwise defeat `$` anchors in awk.
  #
  # We also detect the file's line ending (CRLF vs LF) and insert the new line
  # using the same convention so we don't create mixed line endings.
  local newline=""
  if grep -q $'\r$' "$file" 2>/dev/null; then
    newline=$'\r'
  fi

  local tmp
  tmp="$(mktemp)"
  awk -v sname="$skill_name" -v nl="$newline" '
    BEGIN { in_json=0; done=0 }
    /^```json\r?$/ { in_json=1; print; next }
    /^```\r?$/     { in_json=0; print; next }
    in_json && !done && /^[[:space:]]*\{[[:space:]]*\r?$/ {
      print
      printf "  \"skill-name\": \"%s\",%s\n", sname, nl
      done=1
      next
    }
    { print }
  ' "$file" > "$tmp" && mv "$tmp" "$file"
}

installed=0
skipped=0
failed=0

while IFS=$'\t' read -r name src_skill_md; do
  src_skill_dir="$(dirname "$src_skill_md")"
  dest_skill_dir="$DEST_SKILLS/$name"

  # Skip if already installed and not forcing
  if [[ -e "$dest_skill_dir" ]] && [[ "$FORCE" -eq 0 ]]; then
    printf '  %-45s  SKIP (exists; use --force)\n' "$name"
    skipped=$((skipped + 1))
    continue
  fi

  if [[ "$DRY_RUN" -eq 1 ]]; then
    printf '  %-45s  WOULD INSTALL\n' "$name"
    installed=$((installed + 1))
    continue
  fi

  # Ensure parent skills/ dir exists
  mkdir -p "$DEST_SKILLS"

  # Remove existing if forcing
  if [[ -e "$dest_skill_dir" ]] && [[ "$FORCE" -eq 1 ]]; then
    rm -rf "$dest_skill_dir"
  fi

  # Copy the entire skill folder (SKILL.md + any templates/resources)
  if cp -R "$src_skill_dir" "$dest_skill_dir"; then
    # Normalise metadata in the destination copy only (source is never modified)
    if [[ -f "$dest_skill_dir/SKILL.md" ]]; then
      normalise_skill_metadata "$dest_skill_dir/SKILL.md" "$name" || true
    fi
    printf '  %-45s  installed\n' "$name"
    installed=$((installed + 1))
  else
    printf '  %-45s  FAILED\n' "$name" >&2
    failed=$((failed + 1))
  fi
done < <(discover_skills)

echo "------------------------------------------------------------------------"
echo "Summary: $installed installed, $skipped skipped, $failed failed."

if [[ "$failed" -gt 0 ]]; then
  exit 1
fi
exit 0