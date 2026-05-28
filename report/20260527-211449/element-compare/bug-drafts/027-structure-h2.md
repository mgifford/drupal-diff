# [Admin Theme][light] Structure - H2 Heading style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **H2 Heading** on **Structure** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 51.7%
- lineHeight: 51.7%
- paddingX: -100.0%
- width: -88.0%
- height: 20.0%
- count: -4 (-66.7%)

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: h2, h3

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure__light__h2.png
- Candidate element screenshot: candidate/structure__light__h2.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
