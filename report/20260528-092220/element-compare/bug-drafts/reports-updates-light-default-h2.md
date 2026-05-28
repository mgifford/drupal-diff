# Admin Theme (light) Reports Updates - H2 Heading style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 28.0px vs 20.3px (+38.0%).
- Component width is significantly narrower: 1.0px vs 7.3px (-86.3%).
- Component height is noticeably taller: 1.0px vs 0.9px (+16.7%).
- Horizontal padding is significantly lower: 0.0px vs 6.4px (-100.0%).
- Line height is significantly larger: 36.4px vs 26.4px (+38.0%).
- Matched element count is different: 4 fewer element(s) (-57.1%).

## Summary
Potential CSS regression in **H2 Heading** on **Reports Updates** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/reports/updates
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/reports/updates
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 38.0%
- lineHeight: 38.0%
- paddingX: -100.0%
- width: -86.3%
- height: 16.7%
- count: -4 (-57.1%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pnRnNmyP0vDzW573AAgMprG-FTuQlUHYWqji-JgCesE.css?delta=0&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_rHge8RKVx8Vh0Fqvv4tkMxUPT5OBnlMFrAlyqdzDMKA.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_rHge8RKVx8Vh0Fqvv4tkMxUPT5OBnlMFrAlyqdzDMKA.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_rHge8RKVx8Vh0Fqvv4tkMxUPT5OBnlMFrAlyqdzDMKA.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_rHge8RKVx8Vh0Fqvv4tkMxUPT5OBnlMFrAlyqdzDMKA.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_rHge8RKVx8Vh0Fqvv4tkMxUPT5OBnlMFrAlyqdzDMKA.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_rHge8RKVx8Vh0Fqvv4tkMxUPT5OBnlMFrAlyqdzDMKA.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- update/drupal.update.admin

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: candidate/reports-updates__default__light__h2.png
- Baseline page screenshot: baseline-pages/reports-updates__default__light__page.png
- Candidate page screenshot: candidate-pages/reports-updates__default__light__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/reports-updates__default__light__h2.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/reports-updates__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/reports-updates__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/h2[1]`
   - Text sample: Toolbar items
   - Related page screenshot: baseline-pages/reports-updates__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/reports-updates__default__light__page.png

```html
<h2 class="visually-hidden">Toolbar items</h2>
```

2. XPath: `//*[@id="menu--create"]`
   - Text sample: Create Navigation
   - Related page screenshot: baseline-pages/reports-updates__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/reports-updates__default__light__page.png

```html
<h2 id="menu--create" class="toolbar-block__title visually-hidden focusable">Create Navigation</h2>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-1819965754"]`
   - Text sample: Administrative sidebar
   - Related element screenshot: candidate/reports-updates__default__light__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/reports-updates__default__light__h2.png
   - Related page screenshot: candidate-pages/reports-updates__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/reports-updates__default__light__page.png

```html
<h2 id="admin-toolbar__scroll-wrapper-1819965754" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb
   - Related element screenshot: candidate/reports-updates__default__light__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/reports-updates__default__light__h2.png
   - Related page screenshot: candidate-pages/reports-updates__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/reports-updates__default__light__page.png

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
