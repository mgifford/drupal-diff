# [Admin Theme][dark] People - Table Body Cell style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Table Body Cell** on **People** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people
3. Inspect selector: table tbody td
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- paddingY: -50.0%
- width: 14.0%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: td

## Suggested CSS Patch (Confidence-Gated)
Confidence: **medium**

```css
* {
  padding-block: 32px; /* current ~16px */
}
```

## Evidence
- Baseline element screenshot: baseline/people__dark__table-cell.png
- Candidate element screenshot: candidate/people__dark__table-cell.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
