#!/usr/bin/env bash
# Sync cns-skills to ~/.cursor/skills/
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${1:-$HOME/.cursor/skills}"
SKILLS_SRC="$REPO_ROOT/skills"

usage() {
  cat <<EOF
Usage: $(basename "$0") [--dest PATH] [--check] [--prune]

  --dest PATH   Target skills directory (default: ~/.cursor/skills)
  --check       Diff only, do not copy
  --prune       Remove cns-* dirs in DEST that no longer exist in repo
EOF
}

CHECK=0
PRUNE=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    --dest) DEST="$2"; shift 2 ;;
    --check) CHECK=1; shift ;;
    --prune) PRUNE=1; shift ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown option: $1"; usage; exit 1 ;;
  esac
done

mkdir -p "$DEST"

copy_skill() {
  local name="$1"
  local src="$SKILLS_SRC/$name"
  local dst="$DEST/$name"
  if [[ ! -d "$src" ]]; then
    echo "Skip missing: $name"
    return
  fi
  if [[ "$CHECK" -eq 1 ]]; then
    if [[ -d "$dst" ]]; then
      diff -qr "$src" "$dst" || true
    else
      echo "Would install: $name"
    fi
    return
  fi
  rsync -a --delete "$src/" "$dst/"
  echo "Installed: $name -> $dst"
}

for dir in "$SKILLS_SRC"/cns-*; do
  [[ -d "$dir" ]] || continue
  copy_skill "$(basename "$dir")"
done

if [[ "$PRUNE" -eq 1 && "$CHECK" -eq 0 ]]; then
  for dst in "$DEST"/cns-*; do
    [[ -d "$dst" ]] || continue
    base="$(basename "$dst")"
    [[ -d "$SKILLS_SRC/$base" ]] || { rm -rf "$dst"; echo "Pruned: $base"; }
  done
fi

echo "Done. Restart Cursor or start a new agent session to load skills."
