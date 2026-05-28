# Admin Theme (light) People Roles - Dropbutton Primary Action Link style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 96.1px vs 110.6px (-13.1%).
- Horizontal padding is noticeably (less): 26.0px vs 29.0px (-10.3%).

## Summary
Potential CSS regression in **Dropbutton Primary Action Link** on **People Roles** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people/roles
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/people/roles
3. Inspect selector: .dropbutton-wrapper .dropbutton__item.dropbutton-action > a
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- paddingX: -10.3%
- width: -13.1%

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SFzWad-OcQFszXrSs-4RuPgtLO8pLHTFFRrHqGeMGXU.css?delta=0&language=en&theme=default_admin&include=eJxtkO0OwjAIRV9oXR9poR82KIOGUTN9emtcXDb9ey6XHIjClldrQD5pq0Bj_BJHyLdliKLZR5mrcGZbRoY7FjAUds5EKIC60MyEP6PbHrjCegAJgaQckUr9UzUIlJPCNsyiMxA-85DyBRrZBGlG9oUkdMvFHl20nMLd8hS8lQ3rD61TP2TYax77H5S7zs5esB91-A :: a
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkO0OwjAIRV9oXR9poR82KIOGUTN9emtcXDb9ey6XHIjClldrQD5pq0Bj_BJHyLdliKLZR5mrcGZbRoY7FjAUds5EKIC60MyEP6PbHrjCegAJgaQckUr9UzUIlJPCNsyiMxA-85DyBRrZBGlG9oUkdMvFHl20nMLd8hS8lQ3rD61TP2TYax77H5S7zs5esB91-A :: a, .link, button.link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkO0OwjAIRV9oXR9poR82KIOGUTN9emtcXDb9ey6XHIjClldrQD5pq0Bj_BJHyLdliKLZR5mrcGZbRoY7FjAUds5EKIC60MyEP6PbHrjCegAJgaQckUr9UzUIlJPCNsyiMxA-85DyBRrZBGlG9oUkdMvFHl20nMLd8hS8lQ3rD61TP2TYax77H5S7zs5esB91-A :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkO0OwjAIRV9oXR9poR82KIOGUTN9emtcXDb9ey6XHIjClldrQD5pq0Bj_BJHyLdliKLZR5mrcGZbRoY7FjAUds5EKIC60MyEP6PbHrjCegAJgaQckUr9UzUIlJPCNsyiMxA-85DyBRrZBGlG9oUkdMvFHl20nMLd8hS8lQ3rD61TP2TYax77H5S7zs5esB91-A :: a, .link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkO0OwjAIRV9oXR9poR82KIOGUTN9emtcXDb9ey6XHIjClldrQD5pq0Bj_BJHyLdliKLZR5mrcGZbRoY7FjAUds5EKIC60MyEP6PbHrjCegAJgaQckUr9UzUIlJPCNsyiMxA-85DyBRrZBGlG9oUkdMvFHl20nMLd8hS8lQ3rD61TP2TYax77H5S7zs5esB91-A :: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkO0OwjAIRV9oXR9poR82KIOGUTN9emtcXDb9ey6XHIjClldrQD5pq0Bj_BJHyLdliKLZR5mrcGZbRoY7FjAUds5EKIC60MyEP6PbHrjCegAJgaQckUr9UzUIlJPCNsyiMxA-85DyBRrZBGlG9oUkdMvFHl20nMLd8hS8lQ3rD61TP2TYax77H5S7zs5esB91-A :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/elements.pcss.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/components/dropbutton.css (score: 2; selectors: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 2; selectors: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button)
- core/themes/default_admin/css/base/print.css (score: 1; selectors: .link)
- core/themes/default_admin/css/base/print.pcss.css (score: 1; selectors: .link)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.tabledrag
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/people-roles__default__light__dropbutton-primary-action.png
- Candidate element screenshot: candidate/people-roles__default__light__dropbutton-primary-action.png
- Baseline page screenshot: baseline-pages/people-roles__default__light__page.png
- Candidate page screenshot: candidate-pages/people-roles__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people-roles__default__light__dropbutton-primary-action.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people-roles__default__light__dropbutton-primary-action.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/people-roles__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/people-roles__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related element screenshot: baseline/people-roles__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people-roles__default__light__dropbutton-primary-action.png
   - Related page screenshot: baseline-pages/people-roles__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/people-roles__default__light__page.png

```html
<a href="/admin/people/roles/manage/anonymous?destination=/admin/people/roles" aria-label="Edit Anonymous user">Edit</a>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Edit permissions
   - Related element screenshot: baseline/people-roles__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people-roles__default__light__dropbutton-primary-action.png
   - Related page screenshot: baseline-pages/people-roles__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/people-roles__default__light__page.png

```html
<a href="/admin/people/permissions/anonymous">Edit permissions</a>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related element screenshot: candidate/people-roles__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people-roles__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/people-roles__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/people-roles__default__light__page.png

```html
<a href="/admin/people/roles/manage/anonymous?destination=/admin/people/roles" aria-label="Edit Anonymous user">Edit</a>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Edit permissions
   - Related element screenshot: candidate/people-roles__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people-roles__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/people-roles__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/people-roles__default__light__page.png

```html
<a href="/admin/people/permissions/anonymous">Edit permissions</a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
