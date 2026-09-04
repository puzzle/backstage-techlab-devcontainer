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

check_cmd "Node.js"       node
check_cmd "npm"           npm
check_cmd "yarn"          yarn
check_cmd "backstage cli" npx -y @backstage/create-app -y --version

echo "---------------------------------"
echo "All four lines must show [OK] before starting the lab."
