# Interaction Regression Checklist

Use this with each run to capture regressions beyond static page screenshots.

## Required checks per key route

1. Keyboard focus visibility and order.
2. Hover state contrast and alignment.
3. Modal dialog open, close, and focus return.
4. Off-canvas/panel open, close, and focus trap behavior.
5. Error message and validation styling while focused.

## Suggested priority routes

- /admin/content
- /admin/structure
- /admin/appearance
- /admin/config
- /admin/people

## Evidence capture format

For each issue record:

1. Route
2. Interaction type (focus, hover, modal, off-canvas)
3. Baseline screenshot path
4. Candidate screenshot path
5. Expected behavior
6. Observed behavior
7. Severity (low/medium/high)

## Patch workflow

1. Apply patch in candidate project.
2. Run: ./src/rerun-after-patch.sh normal patch-<ticket-or-branch>
3. Review report/<run-id>/run-metadata.txt and diff artifacts.
4. Add confirmed regressions to issue 3592061.
