# [Admin Theme] Appearance - Details Summary style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Details Summary** on **Appearance** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/appearance
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/appearance
3. Inspect selector: details > summary
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- paddingY: -20.0%
- paddingX: -13.3%
- height: -14.3%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_Jqmjn5cfMRdz66qR0MTQFuJB7zjvTCg4pzfGmBy-Gz4.css?delta=0&language=en&theme=claro&include=eJxFjVEOwyAMQy_UlDMZFiG0NEEhTNtOP6RO4td-fi4Ct1TFMoRGfKRpPYpp8DsmJD18dsi5E1rEcyzEORW7uilrjFPxahXRTInCTDKc8owwvdG_x3lwEHpnOLTwXar5BWlfPrYmtfXoujY7-wEG2kPJ
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFjVEOwyAMQy_UlDMZFiG0NEEhTNtOP6RO4td-fi4Ct1TFMoRGfKRpPYpp8DsmJD18dsi5E1rEcyzEORW7uilrjFPxahXRTInCTDKc8owwvdG_x3lwEHpnOLTwXar5BWlfPrYmtfXoujY7-wEG2kPJ

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_Jqmjn5cfMRdz66qR0MTQFuJB7zjvTCg4pzfGmBy-Gz4.css?delta=0&language=en&theme=claro&include=eJxFjVEOwyAMQy_UlDMZFiG0NEEhTNtOP6RO4td-fi4Ct1TFMoRGfKRpPYpp8DsmJD18dsi5E1rEcyzEORW7uilrjFPxahXRTInCTDKc8owwvdG_x3lwEHpnOLTwXar5BWlfPrYmtfXoujY7-wEG2kPJ :: summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFjVEOwyAMQy_UlDMZFiG0NEEhTNtOP6RO4td-fi4Ct1TFMoRGfKRpPYpp8DsmJD18dsi5E1rEcyzEORW7uilrjFPxahXRTInCTDKc8owwvdG_x3lwEHpnOLTwXar5BWlfPrYmtfXoujY7-wEG2kPJ :: summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFjVEOwyAMQy_UlDMZFiG0NEEhTNtOP6RO4td-fi4Ct1TFMoRGfKRpPYpp8DsmJD18dsi5E1rEcyzEORW7uilrjFPxahXRTInCTDKc8owwvdG_x3lwEHpnOLTwXar5BWlfPrYmtfXoujY7-wEG2kPJ :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFjVEOwyAMQy_UlDMZFiG0NEEhTNtOP6RO4td-fi4Ct1TFMoRGfKRpPYpp8DsmJD18dsi5E1rEcyzEORW7uilrjFPxahXRTInCTDKc8owwvdG_x3lwEHpnOLTwXar5BWlfPrYmtfXoujY7-wEG2kPJ :: .claro-details__summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFjVEOwyAMQy_UlDMZFiG0NEEhTNtOP6RO4td-fi4Ct1TFMoRGfKRpPYpp8DsmJD18dsi5E1rEcyzEORW7uilrjFPxahXRTInCTDKc8owwvdG_x3lwEHpnOLTwXar5BWlfPrYmtfXoujY7-wEG2kPJ :: .claro-details[open] > .claro-details__summary

## Evidence
- Baseline element screenshot: baseline/appearance__details-summary.png
- Candidate element screenshot: candidate/appearance__details-summary.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
