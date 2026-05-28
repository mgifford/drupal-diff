# [Admin Theme] People - H2 Heading style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **H2 Heading** on **People** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 46.0%
- lineHeight: 46.0%
- paddingX: -100.0%
- width: -95.1%
- height: -70.1%
- count: -5 (-62.5%)

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css__qWmYdbOkPA31BuSmWSrh0rJMbv2V3BDViMdqclfHVU.css?delta=0&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css__qWmYdbOkPA31BuSmWSrh0rJMbv2V3BDViMdqclfHVU.css?delta=0&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: h2, h3

## Evidence
- Baseline element screenshot: baseline/people__h2.png
- Candidate element screenshot: candidate/people__h2.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
