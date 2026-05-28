# [Admin Theme] Appearance - Form Label style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Label** on **Appearance** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/appearance
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/appearance
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- paddingX: -100.0%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFjVEOwyAMQy_UlDMZFiG0NEEhTNtOP6RO4td-fi4Ct1TFMoRGfKRpPYpp8DsmJD18dsi5E1rEcyzEORW7uilrjFPxahXRTInCTDKc8owwvdG_x3lwEHpnOLTwXar5BWlfPrYmtfXoujY7-wEG2kPJ :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFjVEOwyAMQy_UlDMZFiG0NEEhTNtOP6RO4td-fi4Ct1TFMoRGfKRpPYpp8DsmJD18dsi5E1rEcyzEORW7uilrjFPxahXRTInCTDKc8owwvdG_x3lwEHpnOLTwXar5BWlfPrYmtfXoujY7-wEG2kPJ :: .form-item__label

## Evidence
- Baseline element screenshot: baseline/appearance__label.png
- Candidate element screenshot: candidate/appearance__label.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-203651/element-compare/baseline/appearance__label.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-203651/element-compare/candidate/appearance__label.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
