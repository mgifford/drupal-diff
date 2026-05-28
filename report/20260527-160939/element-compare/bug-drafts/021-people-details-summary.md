# [Admin Theme] People - Details Summary style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Details Summary** on **People** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people
3. Inspect selector: details > summary
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: -100.0%
- lineHeight: -100.0%
- paddingY: -100.0%
- paddingX: -100.0%
- width: -100.0%
- height: -100.0%
- count: -1 (-100.0%)

## Evidence
- Baseline element screenshot: baseline/people__details-summary.png
- Candidate element screenshot: candidate/people__details-summary.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-160939/element-compare/baseline/people__details-summary.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-160939/element-compare/candidate/people__details-summary.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
