# Admin Theme (light) Structure Article Display - Table Header Cell style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Table Header Cell** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure/types/manage/article/display
3. Inspect selector: table thead th
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- paddingX: 75.0%
- width: 140.6%
- height: 75.0%

## Likely CSS Sources
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_XlujyaecmFlvqpEfeNBQCCJeOhPd7zI2_iGDsoG1zWM.css?delta=0&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: .display-mode-overview-table th:first-child
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: th
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: table th
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: table th)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: table th)

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
- Baseline element screenshot: baseline/structure-content-type-article-display__light__table-header.png
- Candidate element screenshot: candidate/structure-content-type-article-display__light__table-header.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-content-type-article-display__light__table-header.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-display__light__table-header.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[2]/table[1]/thead[1]/tr[1]/th[1]`
   - Text sample: Field

```html
<th class="th__field">Field </th>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[2]/table[1]/thead[1]/tr[1]/th[2]`
   - Text sample: Machine name

```html
<th class="priority-medium machine-name th__machine-name">Machine name </th>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/thead[1]/tr[1]/th[1]`
   - Text sample: View mode

```html
<th class="th__view-mode">View mode </th>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/thead[1]/tr[1]/th[2]`
   - Text sample: Description

```html
<th class="th__description">Description </th>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
