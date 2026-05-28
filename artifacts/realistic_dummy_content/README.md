# Realistic Dummy Content (Repo Artifact)

This is a repository-tracked Drupal 11/12-compatible artifact for deterministic dummy-content seeding used by the visual regression harness.

## What it provides

- Drush command: `realistic-dummy-content:seed`
- Creates missing `article` and `page` content types when needed.
- Ensures `editor1` user and `tags` vocabulary/terms exist.
- Seeds predictable `article` and `page` nodes for repeatable visual diffs.

## How the harness uses it

When `USE_REALISTIC_DUMMY_CONTENT=true` is set, `src/seed-dummy-content.sh` copies this module into each Drupal project at `modules/realistic_dummy_content`, enables it, and runs the command.

If this artifact seeding fails for any reason, the harness falls back to built-in API/UI seeding.
