# Project Instructions

## Issue Tracking

**IMPORTANT:** This project uses **bd (beads)** for ALL issue tracking. See [AGENTS.md](./AGENTS.md) for complete instructions on using bd for task management, dependency tracking, and workflow.

Do NOT use the TodoWrite tool or markdown TODO lists. Use bd commands instead.

## Project Scripts

This project includes several utility scripts in the `./scripts` directory for common development tasks. Use these scripts for code quality and testing tasks:

## Available Scripts

### Formatting
**Script:** `./scripts/format.sh`
**Command:** `uv run ruff format`
**Purpose:** Format the codebase using Ruff formatter
**When to use:** When code needs to be formatted, before committing changes, or when formatting issues are detected

### Linting
**Script:** `./scripts/lint.sh`
**Command:** `uv run ruff check`
**Purpose:** Lint the codebase and check for code quality issues
**When to use:** To identify potential bugs, style violations, or code smells before committing or during code review

### Type Checking
**Script:** `./scripts/typecheck.sh`
**Command:** `uv run ty check`
**Purpose:** Run type checking across the codebase
**When to use:** To verify type safety, especially after making changes to function signatures, classes, or type annotations

### Testing
**Script:** `./scripts/test.sh`
**Command:** `uv run pytest`
**Purpose:** Run the test suite
**When to use:** After making code changes, before committing, or when validating that functionality works as expected

## Workflow Guidelines

1. **Before committing:** Run all scripts to ensure code quality:
   ```bash
   ./scripts/format.sh && ./scripts/lint.sh && ./scripts/typecheck.sh && ./scripts/test.sh
   ```

2. **During development:** Use individual scripts as needed based on the type of changes being made

3. **All scripts are executable** and can be run directly from the project root
