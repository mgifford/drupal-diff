# [Admin Theme][light] Content - Button style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Button** on **Content** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/content
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/content
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
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_p7oaJLzXhhsfibJzbJI0Ra-m5oxn2dy71jKShr5LIYg.css
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_7_4nz4qqwIN9QvB5KqQokLhixB7EvcL2017oSSQXjtk.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_p7oaJLzXhhsfibJzbJI0Ra-m5oxn2dy71jKShr5LIYg.css?delta=0&language=en&theme=claro&include=eJxljksOgzAMRC9EyJmcMKJRjR05Dv2cvlFBQlU3Xrx5mnFmMo0rayIOzV9cZJ2yiuPpnTgu1ivxfJEwjHsbiiFm3aoKxNsstJeVvKiE4KqcyELq7iqHevYYGjxQrSAjyfgJnRLjBlpg_7yp-UFFbSMub0zXaCzjP5MhX2zaCx4tfu-86dIZH1uqXOk :: button, input, optgroup, select, textarea
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_p7oaJLzXhhsfibJzbJI0Ra-m5oxn2dy71jKShr5LIYg.css?delta=0&language=en&theme=claro&include=eJxljksOgzAMRC9EyJmcMKJRjR05Dv2cvlFBQlU3Xrx5mnFmMo0rayIOzV9cZJ2yiuPpnTgu1ivxfJEwjHsbiiFm3aoKxNsstJeVvKiE4KqcyELq7iqHevYYGjxQrSAjyfgJnRLjBlpg_7yp-UFFbSMub0zXaCzjP5MhX2zaCx4tfu-86dIZH1uqXOk :: button, input
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_p7oaJLzXhhsfibJzbJI0Ra-m5oxn2dy71jKShr5LIYg.css?delta=0&language=en&theme=claro&include=eJxljksOgzAMRC9EyJmcMKJRjR05Dv2cvlFBQlU3Xrx5mnFmMo0rayIOzV9cZJ2yiuPpnTgu1ivxfJEwjHsbiiFm3aoKxNsstJeVvKiE4KqcyELq7iqHevYYGjxQrSAjyfgJnRLjBlpg_7yp-UFFbSMub0zXaCzjP5MhX2zaCx4tfu-86dIZH1uqXOk :: button, select
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_p7oaJLzXhhsfibJzbJI0Ra-m5oxn2dy71jKShr5LIYg.css?delta=0&language=en&theme=claro&include=eJxljksOgzAMRC9EyJmcMKJRjR05Dv2cvlFBQlU3Xrx5mnFmMo0rayIOzV9cZJ2yiuPpnTgu1ivxfJEwjHsbiiFm3aoKxNsstJeVvKiE4KqcyELq7iqHevYYGjxQrSAjyfgJnRLjBlpg_7yp-UFFbSMub0zXaCzjP5MhX2zaCx4tfu-86dIZH1uqXOk :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_7_4nz4qqwIN9QvB5KqQokLhixB7EvcL2017oSSQXjtk.css?delta=1&language=en&theme=claro&include=eJxljksOgzAMRC9EyJmcMKJRjR05Dv2cvlFBQlU3Xrx5mnFmMo0rayIOzV9cZJ2yiuPpnTgu1ivxfJEwjHsbiiFm3aoKxNsstJeVvKiE4KqcyELq7iqHevYYGjxQrSAjyfgJnRLjBlpg_7yp-UFFbSMub0zXaCzjP5MhX2zaCx4tfu-86dIZH1uqXOk :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_7_4nz4qqwIN9QvB5KqQokLhixB7EvcL2017oSSQXjtk.css?delta=1&language=en&theme=claro&include=eJxljksOgzAMRC9EyJmcMKJRjR05Dv2cvlFBQlU3Xrx5mnFmMo0rayIOzV9cZJ2yiuPpnTgu1ivxfJEwjHsbiiFm3aoKxNsstJeVvKiE4KqcyELq7iqHevYYGjxQrSAjyfgJnRLjBlpg_7yp-UFFbSMub0zXaCzjP5MhX2zaCx4tfu-86dIZH1uqXOk :: button

## Suggested CSS Patch (Confidence-Gated)
Confidence: **medium**

```css
button, input, optgroup, select, textarea {
  font-size: 13.3px; /* current ~14px */
  padding-block: 12.8px; /* current ~20px */
  padding-inline: 16.6px; /* current ~24.5px */
}
```

## Evidence
- Baseline element screenshot: baseline/content__light__button.png
- Candidate element screenshot: candidate/content__light__button.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-211449/element-compare/baseline/content__light__button.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260527-211449/element-compare/candidate/content__light__button.png
- Dashboard: ../element-compare-dashboard.html

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
