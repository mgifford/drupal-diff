# Admin Theme (dark) Appearance - H2 Heading style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **H2 Heading** on **Appearance** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/appearance
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/appearance
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 14.8%
- lineHeight: 14.8%
- paddingY: 100.0%
- paddingX: 184.4%
- width: 1529.4%
- height: 569.6%
- count: -2 (-25.0%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_Jqmjn5cfMRdz66qR0MTQFuJB7zjvTCg4pzfGmBy-Gz4.css?delta=0&language=en&theme=default_admin&include=eJxlj9EOwjAIRX9oXT9pYR02RAYNpUb9emu22GS-ngucS1JxfHoDjpu1AjynHwlMcq9TUsOYdC8qKF5ngQdlcFIJwVV5BQtrc1c5Rs87hhU9QCkIBpLwCEVtB6Y3ThveoLEvsO0kMbOu3Vj91aX5Eg7jJfjqncofLUsvNY21SP0nk95qsA8SamIf :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX9oXT9pYR02RAYNpUb9emu22GS-ngucS1JxfHoDjpu1AjynHwlMcq9TUsOYdC8qKF5ngQdlcFIJwVV5BQtrc1c5Rs87hhU9QCkIBpLwCEVtB6Y3ThveoLEvsO0kMbOu3Vj91aX5Eg7jJfjqncofLUsvNY21SP0nk95qsA8SamIf :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX9oXT9pYR02RAYNpUb9emu22GS-ngucS1JxfHoDjpu1AjynHwlMcq9TUsOYdC8qKF5ngQdlcFIJwVV5BQtrc1c5Rs87hhU9QCkIBpLwCEVtB6Y3ThveoLEvsO0kMbOu3Vj91aX5Eg7jJfjqncofLUsvNY21SP0nk95qsA8SamIf :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX9oXT9pYR02RAYNpUb9emu22GS-ngucS1JxfHoDjpu1AjynHwlMcq9TUsOYdC8qKF5ngQdlcFIJwVV5BQtrc1c5Rs87hhU9QCkIBpLwCEVtB6Y3ThveoLEvsO0kMbOu3Vj91aX5Eg7jJfjqncofLUsvNY21SP0nk95qsA8SamIf :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX9oXT9pYR02RAYNpUb9emu22GS-ngucS1JxfHoDjpu1AjynHwlMcq9TUsOYdC8qKF5ngQdlcFIJwVV5BQtrc1c5Rs87hhU9QCkIBpLwCEVtB6Y3ThveoLEvsO0kMbOu3Vj91aX5Eg7jJfjqncofLUsvNY21SP0nk95qsA8SamIf :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX9oXT9pYR02RAYNpUb9emu22GS-ngucS1JxfHoDjpu1AjynHwlMcq9TUsOYdC8qKF5ngQdlcFIJwVV5BQtrc1c5Rs87hhU9QCkIBpLwCEVtB6Y3ThveoLEvsO0kMbOu3Vj91aX5Eg7jJfjqncofLUsvNY21SP0nk95qsA8SamIf :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX9oXT9pYR02RAYNpUb9emu22GS-ngucS1JxfHoDjpu1AjynHwlMcq9TUsOYdC8qKF5ngQdlcFIJwVV5BQtrc1c5Rs87hhU9QCkIBpLwCEVtB6Y3ThveoLEvsO0kMbOu3Vj91aX5Eg7jJfjqncofLUsvNY21SP0nk95qsA8SamIf :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.reset-appearance
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/appearance__dark__h2.png
- Candidate element screenshot: candidate/appearance__dark__h2.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/appearance__dark__h2.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/appearance__dark__h2.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/h2[1]`
   - Text sample: Toolbar items

```html
<h2 class="visually-hidden">Toolbar items</h2>
```

2. XPath: `//*[@id="menu--create"]`
   - Text sample: Create Navigation

```html
<h2 id="menu--create" class="toolbar-block__title visually-hidden focusable">Create Navigation</h2>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-1739148866"]`
   - Text sample: Administrative sidebar

```html
<h2 id="admin-toolbar__scroll-wrapper-1739148866" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
