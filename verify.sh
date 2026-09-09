#!/usr/bin/env bash
set -euo pipefail

echo "Backstage Techlab - Verification"
echo "---------------------------------"

check_cmd() {
  local label="$1" cmd="$2"
  if command -v "$cmd" > /dev/null 2>&1; then
    echo "[OK]      $label ($("$cmd" --version 2>&1 | head -n1))"
  else
    echo "[MISSING] $label - command '$cmd' not found"
  fi
}

check_write() {
  local label="$1" dir="$2"
  local testfile="$dir/.verify-write-$(date +%s)-$RANDOM.tmp"
  if touch "$testfile" 2>/dev/null && echo "$RANDOM" > "$testfile" 2>/dev/null; then
    rm -f "$testfile"
    echo "[OK]      $label"
  else
    rm -f "$testfile" 2>/dev/null || true
    echo "[MISSING] $label - no write permission inside workspace"
  fi
}

check_cmd   "Node.js"       node
check_cmd   "npm"           npm
check_cmd   "yarn"          yarn
check_cmd   "backstage cli" npx -y @backstage/create-app -y --version
check_write "workspace write access" "$(pwd)"

echo "---------------------------------"
echo "All five lines must show [OK] before starting the lab."
