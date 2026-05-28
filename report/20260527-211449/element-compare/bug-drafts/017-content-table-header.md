# [Admin Theme][light] Content - Table Header Cell style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Table Header Cell** on **Content** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/content
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/content
3. Inspect selector: table thead th
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 14.3%
- paddingY: -71.4%
- width: 14.0%
- height: -12.9%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_7_4nz4qqwIN9QvB5KqQokLhixB7EvcL2017oSSQXjtk.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_7_4nz4qqwIN9QvB5KqQokLhixB7EvcL2017oSSQXjtk.css?delta=1&language=en&theme=claro&include=eJxljksOgzAMRC9EyJmcMKJRjR05Dv2cvlFBQlU3Xrx5mnFmMo0rayIOzV9cZJ2yiuPpnTgu1ivxfJEwjHsbiiFm3aoKxNsstJeVvKiE4KqcyELq7iqHevYYGjxQrSAjyfgJnRLjBlpg_7yp-UFFbSMub0zXaCzjP5MhX2zaCx4tfu-86dIZH1uqXOk :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_7_4nz4qqwIN9QvB5KqQokLhixB7EvcL2017oSSQXjtk.css?delta=1&language=en&theme=claro&include=eJxljksOgzAMRC9EyJmcMKJRjR05Dv2cvlFBQlU3Xrx5mnFmMo0rayIOzV9cZJ2yiuPpnTgu1ivxfJEwjHsbiiFm3aoKxNsstJeVvKiE4KqcyELq7iqHevYYGjxQrSAjyfgJnRLjBlpg_7yp-UFFbSMub0zXaCzjP5MhX2zaCx4tfu-86dIZH1uqXOk :: th
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_7_4nz4qqwIN9QvB5KqQokLhixB7EvcL2017oSSQXjtk.css?delta=1&language=en&theme=claro&include=eJxljksOgzAMRC9EyJmcMKJRjR05Dv2cvlFBQlU3Xrx5mnFmMo0rayIOzV9cZJ2yiuPpnTgu1ivxfJEwjHsbiiFm3aoKxNsstJeVvKiE4KqcyELq7iqHevYYGjxQrSAjyfgJnRLjBlpg_7yp-UFFbSMub0zXaCzjP5MhX2zaCx4tfu-86dIZH1uqXOk :: th.select-all

## Suggested CSS Patch (Confidence-Gated)
Confidence: **medium**

```css
* {
  font-size: 14px; /* current ~16px */
  min-height: 55.1px; /* current ~48px */
}
```

## Evidence
- Baseline element screenshot: baseline/content__light__table-header.png
- Candidate element screenshot: candidate/content__light__table-header.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
