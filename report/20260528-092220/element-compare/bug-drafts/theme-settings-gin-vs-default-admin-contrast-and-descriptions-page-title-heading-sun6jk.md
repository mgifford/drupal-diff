# Admin Theme (dark + light) Theme Settings (Gin vs Default Admin) - Page Title Heading (h1) style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is significantly wider: 216.4px vs 59.4px (+264.3%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Page Title Heading (h1)** on **Theme Settings (Gin vs Default Admin)** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: width: 264.3%
- dark: width: 264.3%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/appearance/settings/gin
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/appearance/settings/default_admin
3. Inspect selector: h1.page-title, .page-title h1, .page-title
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: width: 264.3%
- dark: width: 264.3%

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/page-title.css
- core/themes/default_admin/css/components/page-title.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: h1
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_GN5Tewbuqx2hZ4cDy1Fmrt6Z9CNQhpSCp7ipv3GY7Ko.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: h1, .heading-a
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_GN5Tewbuqx2hZ4cDy1Fmrt6Z9CNQhpSCp7ipv3GY7Ko.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_GN5Tewbuqx2hZ4cDy1Fmrt6Z9CNQhpSCp7ipv3GY7Ko.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: .page-title
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_GN5Tewbuqx2hZ4cDy1Fmrt6Z9CNQhpSCp7ipv3GY7Ko.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-a)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-a)
- core/themes/default_admin/css/components/page-title.css (score: 1; selectors: .page-title)
- core/themes/default_admin/css/components/page-title.pcss.css (score: 1; selectors: .page-title)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/normalize
- default_admin/breadcrumb
- default_admin/global-styling
- default_admin/settings
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/theme-settings__contrast-and-descriptions__light__page-title-heading.png
- Candidate element screenshot: candidate/theme-settings__contrast-and-descriptions__light__page-title-heading.png
- Baseline page screenshot: baseline-pages/theme-settings__contrast-and-descriptions__light__page.png
- Candidate page screenshot: candidate-pages/theme-settings__contrast-and-descriptions__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/theme-settings__contrast-and-descriptions__light__page-title-heading.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/theme-settings__contrast-and-descriptions__light__page-title-heading.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/theme-settings__contrast-and-descriptions__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/theme-settings__contrast-and-descriptions__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Gin
   - Related element screenshot: baseline/theme-settings__contrast-and-descriptions__light__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/theme-settings__contrast-and-descriptions__light__page-title-heading.png
   - Related page screenshot: baseline-pages/theme-settings__contrast-and-descriptions__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/theme-settings__contrast-and-descriptions__light__page.png

```html
<h1 class="page-title">Gin</h1>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Default Admin
   - Related element screenshot: candidate/theme-settings__contrast-and-descriptions__light__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/theme-settings__contrast-and-descriptions__light__page-title-heading.png
   - Related page screenshot: candidate-pages/theme-settings__contrast-and-descriptions__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/theme-settings__contrast-and-descriptions__light__page.png

```html
<h1 class="page-title">Default Admin</h1>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
