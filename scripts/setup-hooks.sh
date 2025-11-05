#!/bin/bash
#
# Setup git hooks for this project
#
# This script installs the pre-commit hook that:
# 1. Flushes bd (beads) issue changes to .beads/issues.jsonl
# 2. Runs ruff formatting and linting
# 3. Runs ty typechecking
# 4. Runs pytest

set -e

HOOK_SOURCE="$(cd "$(dirname "$0")/../.git-hooks" && pwd)/pre-commit"
HOOK_DEST=".git/hooks/pre-commit"

if [ ! -f "$HOOK_SOURCE" ]; then
    echo "Error: pre-commit hook template not found at $HOOK_SOURCE" >&2
    exit 1
fi

if [ ! -d .git ]; then
    echo "Error: Not in a git repository. Run 'git init' first." >&2
    exit 1
fi

mkdir -p .git/hooks

cp "$HOOK_SOURCE" "$HOOK_DEST"
chmod +x "$HOOK_DEST"

echo "✓ Pre-commit hook installed successfully!"
echo ""
echo "The hook will run automatically on every commit and:"
echo "  • Flush bd (beads) changes to .beads/issues.jsonl"
echo "  • Format code with ruff"
echo "  • Lint code with ruff"
echo "  • Run type checking with ty"
echo "  • Run tests with pytest"
