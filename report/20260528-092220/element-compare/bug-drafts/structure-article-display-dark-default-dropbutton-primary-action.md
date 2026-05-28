# Admin Theme (dark) Structure Article Display - Dropbutton Primary Action Link style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Primary Action Link** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure/types/manage/article/display
3. Inspect selector: .dropbutton-wrapper .dropbutton__item.dropbutton-action > a
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 100.0%
- lineHeight: 100.0%
- paddingY: 100.0%
- paddingX: 100.0%
- width: 100.0%
- height: 100.0%
- count: +4 (100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_XlujyaecmFlvqpEfeNBQCCJeOhPd7zI2_iGDsoG1zWM.css?delta=0&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: a
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: a, .link, button.link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: a, .link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- Candidate element screenshot: candidate/structure-content-type-article-display__default__dark__dropbutton-primary-action.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-display__default__dark__dropbutton-primary-action.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
- No matching element captured

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Manage (Default)

```html
<a href="/admin/structure/types/manage/article/display/default">Manage <span class="visually-hidden">(Default)</span></a>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Enable (Full content)

```html
<a href="/admin/structure/types/manage/article/display/full/enable?token=HBUZxbw9CJyLKHc1qbdm-ibbpfOaFRBDEsazq9xaetI">Enable <span class="visually-hidden">(Full content)</span></a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
