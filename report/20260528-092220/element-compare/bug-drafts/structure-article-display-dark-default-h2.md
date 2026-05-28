# Admin Theme (dark) Structure Article Display - H2 Heading style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is noticeably larger: 28.0px vs 21.3px (+31.8%).
- Component width is significantly wider: 229.2px vs 6.5px (+3426.7%).
- Component height is significantly taller: 12.8px vs 0.9px (+1362.5%).
- Horizontal padding is significantly lower: 0.0px vs 5.6px (-100.0%).
- Line height is noticeably larger: 36.4px vs 27.6px (+31.8%).
- Matched element count is different: 2 fewer element(s) (-25.0%).

## Summary
Potential CSS regression in **H2 Heading** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/types/manage/article/display
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 31.8%
- lineHeight: 31.8%
- paddingX: -100.0%
- width: 3426.7%
- height: 1362.5%
- count: -2 (-25.0%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_XlujyaecmFlvqpEfeNBQCCJeOhPd7zI2_iGDsoG1zWM.css?delta=0&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.reset-appearance
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- field_ui/drupal.field_ui_display_overview
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: candidate/structure-content-type-article-display__default__dark__h2.png
- Baseline page screenshot: baseline-pages/structure-content-type-article-display__default__dark__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-display__default__dark__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-display__default__dark__h2.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-display__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article-display__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/h2[1]`
   - Text sample: Toolbar items
   - Related page screenshot: baseline-pages/structure-content-type-article-display__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-display__default__dark__page.png

```html
<h2 class="visually-hidden">Toolbar items</h2>
```

2. XPath: `//*[@id="menu--create"]`
   - Text sample: Create Navigation
   - Related page screenshot: baseline-pages/structure-content-type-article-display__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-display__default__dark__page.png

```html
<h2 id="menu--create" class="toolbar-block__title visually-hidden focusable">Create Navigation</h2>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-1831825674"]`
   - Text sample: Administrative sidebar
   - Related element screenshot: candidate/structure-content-type-article-display__default__dark__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-display__default__dark__h2.png
   - Related page screenshot: candidate-pages/structure-content-type-article-display__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article-display__default__dark__page.png

```html
<h2 id="admin-toolbar__scroll-wrapper-1831825674" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb
   - Related element screenshot: candidate/structure-content-type-article-display__default__dark__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-display__default__dark__h2.png
   - Related page screenshot: candidate-pages/structure-content-type-article-display__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article-display__default__dark__page.png

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
