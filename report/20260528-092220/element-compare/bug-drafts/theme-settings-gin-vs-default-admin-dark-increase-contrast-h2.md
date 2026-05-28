# Admin Theme (dark) Theme Settings (Gin vs Default Admin) - H2 Heading style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is noticeably larger: 25.6px vs 21.3px (+20.5%).
- Component width is significantly wider: 24.9px vs 6.5px (+282.8%).
- Component height is significantly taller: 5.0px vs 0.9px (+466.8%).
- Horizontal padding is significantly (less): 0.0px vs 5.6px (-100.0%).
- Line height is noticeably larger: 33.3px vs 27.6px (+20.5%).
- Matched element count is different: 3 fewer element(s) (-37.5%).

## Summary
Potential CSS regression in **H2 Heading** on **Theme Settings (Gin vs Default Admin)** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/appearance/settings/gin
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/appearance/settings/default_admin
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 20.5%
- lineHeight: 20.5%
- paddingX: -100.0%
- width: 282.8%
- height: 466.8%
- count: -3 (-37.5%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_GN5Tewbuqx2hZ4cDy1Fmrt6Z9CNQhpSCp7ipv3GY7Ko.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_GN5Tewbuqx2hZ4cDy1Fmrt6Z9CNQhpSCp7ipv3GY7Ko.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_GN5Tewbuqx2hZ4cDy1Fmrt6Z9CNQhpSCp7ipv3GY7Ko.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_GN5Tewbuqx2hZ4cDy1Fmrt6Z9CNQhpSCp7ipv3GY7Ko.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_GN5Tewbuqx2hZ4cDy1Fmrt6Z9CNQhpSCp7ipv3GY7Ko.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_GN5Tewbuqx2hZ4cDy1Fmrt6Z9CNQhpSCp7ipv3GY7Ko.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

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
- Baseline element screenshot: 
- Candidate element screenshot: candidate/theme-settings__increase-contrast__dark__h2.png
- Baseline page screenshot: baseline-pages/theme-settings__increase-contrast__dark__page.png
- Candidate page screenshot: candidate-pages/theme-settings__increase-contrast__dark__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/theme-settings__increase-contrast__dark__h2.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/theme-settings__increase-contrast__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/theme-settings__increase-contrast__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/h2[1]`
   - Text sample: Toolbar items
   - Related page screenshot: baseline-pages/theme-settings__increase-contrast__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/theme-settings__increase-contrast__dark__page.png

```html
<h2 class="visually-hidden">Toolbar items</h2>
```

2. XPath: `//*[@id="menu--create"]`
   - Text sample: Create Navigation
   - Related page screenshot: baseline-pages/theme-settings__increase-contrast__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/theme-settings__increase-contrast__dark__page.png

```html
<h2 id="menu--create" class="toolbar-block__title visually-hidden focusable">Create Navigation</h2>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-1730808266"]`
   - Text sample: Administrative sidebar
   - Related element screenshot: candidate/theme-settings__increase-contrast__dark__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/theme-settings__increase-contrast__dark__h2.png
   - Related page screenshot: candidate-pages/theme-settings__increase-contrast__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/theme-settings__increase-contrast__dark__page.png

```html
<h2 id="admin-toolbar__scroll-wrapper-1730808266" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb
   - Related element screenshot: candidate/theme-settings__increase-contrast__dark__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/theme-settings__increase-contrast__dark__h2.png
   - Related page screenshot: candidate-pages/theme-settings__increase-contrast__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/theme-settings__increase-contrast__dark__page.png

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
