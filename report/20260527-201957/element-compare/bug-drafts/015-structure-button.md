# [Admin Theme] Structure - Button style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Button** on **Structure** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure
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

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: button, input, optgroup, select, textarea
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: button, input
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: button, select
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_4dC1SYlGUw9otHcSNVdS9JWBOtH33AKHMNwPEA-P2Mo.css?delta=1&language=en&theme=claro&include=eJxFzFEKxCAMRdENNXVN0YqEpnklxjLT1Y8wH_5eDrcoO1JTZFbq8VWxthVY1E8M1nT4uFn3VWiKs0_iNRVcN6xa9N34kcYhMKIANLNTHhGwPzX4xSpv3ZZMMqduc7_aDwZeOK8 :: button

## Evidence
- Baseline element screenshot: baseline/structure__button.png
- Candidate element screenshot: candidate/structure__button.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-201957/element-compare/baseline/structure__button.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-201957/element-compare/candidate/structure__button.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
