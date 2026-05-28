# [Admin Theme] People - Button style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Button** on **People** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people
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
- http://drupal-git.ddev.site:8080/sites/default/files/css/css__qWmYdbOkPA31BuSmWSrh0rJMbv2V3BDViMdqclfHVU.css?delta=0&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css__qWmYdbOkPA31BuSmWSrh0rJMbv2V3BDViMdqclfHVU.css?delta=0&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: button, input, optgroup, select, textarea
- http://drupal-git.ddev.site:8080/sites/default/files/css/css__qWmYdbOkPA31BuSmWSrh0rJMbv2V3BDViMdqclfHVU.css?delta=0&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: button, input
- http://drupal-git.ddev.site:8080/sites/default/files/css/css__qWmYdbOkPA31BuSmWSrh0rJMbv2V3BDViMdqclfHVU.css?delta=0&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: button, select
- http://drupal-git.ddev.site:8080/sites/default/files/css/css__qWmYdbOkPA31BuSmWSrh0rJMbv2V3BDViMdqclfHVU.css?delta=0&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: button

## Evidence
- Baseline element screenshot: baseline/people__button.png
- Candidate element screenshot: candidate/people__button.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-201957/element-compare/baseline/people__button.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-201957/element-compare/candidate/people__button.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
