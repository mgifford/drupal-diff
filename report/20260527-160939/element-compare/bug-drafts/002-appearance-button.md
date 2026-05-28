# [Admin Theme] Appearance - Button style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Button** on **Appearance** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/appearance
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/appearance
3. Inspect selector: button, input[type="submit"], .button
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 5.7%
- paddingY: 56.9%
- paddingX: 47.3%
- width: 136.4%
- height: 163.2%

## Evidence
- Baseline element screenshot: baseline/appearance__button.png
- Candidate element screenshot: candidate/appearance__button.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-160939/element-compare/baseline/appearance__button.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-160939/element-compare/candidate/appearance__button.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
