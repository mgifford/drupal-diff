# [Admin Theme] Content - Form Item Wrapper style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Item Wrapper** on **Content** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/content
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/content
3. Inspect selector: .form-item
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: -14.4%
- height: 12.1%

## Evidence
- Baseline element screenshot: baseline/content__form-item.png
- Candidate element screenshot: candidate/content__form-item.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-160939/element-compare/baseline/content__form-item.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-160939/element-compare/candidate/content__form-item.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
