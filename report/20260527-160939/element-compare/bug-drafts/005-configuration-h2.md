# [Admin Theme] Configuration - H2 Heading style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **H2 Heading** on **Configuration** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/config
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 29.2%
- lineHeight: 29.2%
- paddingX: -100.0%
- width: 356.2%
- height: 811.9%
- count: -3 (-50.0%)

## Evidence
- Baseline element screenshot: baseline/config__h2.png
- Candidate element screenshot: candidate/config__h2.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-160939/element-compare/baseline/config__h2.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-160939/element-compare/candidate/config__h2.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
