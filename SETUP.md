# Local Setup Guide

This repository compares two local Drupal copies:

- [drupal-11.3.10](drupal-11.3.10): Drupal 11 baseline with Gin
- [drupal-git](drupal-git): Drupal 12 candidate with Default Admin

The `drupal-git` folder is the Drupal 12 checkout, but its DDEV project name is `drupal-12`.

## Prerequisites

Install these once on your machine:

1. Docker Desktop or another compatible Docker runtime
2. DDEV
3. Git

Optional but helpful:

1. `mkcert` for trusted HTTPS in local browsers
2. Chromium-based browser for screenshots

## First Build

From the repository root:

```bash
cd /Users/mike.gifford/drupal-diff
cd drupal-11.3.10 && ddev start
cd ../drupal-git && ddev start
cd .. && ./src/seed-dummy-content.sh
```

That gives you:

- Drupal 11 at `http://drupal-11.3.10.ddev.site/`
- Drupal 12 at `http://drupal-12.ddev.site/`

## Confirm Themes

The compare setup expects these admin themes:

- Drupal 11: `gin`
- Drupal 12: `default_admin`

If you need to reapply them manually:

```bash
cd drupal-11.3.10
ddev drush theme:enable gin -y
ddev drush config:set system.theme admin gin -y
ddev drush cr

cd ../drupal-git
ddev drush theme:enable default_admin -y
ddev drush config:set system.theme admin default_admin -y
ddev drush cr
```

## Rebuild After a Database Reset

If the databases are scratched, rerun the same three steps:

```bash
cd /Users/mike.gifford/drupal-diff/drupal-11.3.10 && ddev start
cd ../drupal-git && ddev start
cd .. && ./src/seed-dummy-content.sh
```

Then confirm the themes above, and run the compare workflow again.

## Run a Comparison

```bash
cd /Users/mike.gifford/drupal-diff
./src/run-admin-vrt-compare.sh normal current-compare false both
```

## Publish the Latest Run

After a successful compare run, publish the updated reports and screenshots to GitHub Pages with:

```bash
cd /Users/mike.gifford/drupal-diff
./src/publish-report-updates.sh --skip-run --label current-compare
```

That command stages the docs, generated report artifacts, and screenshots, commits them, and pushes them to `main`.

## Useful Checks

```bash
cd /Users/mike.gifford/drupal-diff/drupal-11.3.10 && ddev describe
cd /Users/mike.gifford/drupal-diff/drupal-git && ddev describe
```

Use those to confirm the local URLs and make sure both DDEV projects are running before you compare.