# Admin Theme (dark) Structure Article Display - Table Body Cell style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Table Body Cell** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/types/manage/article/display
3. Inspect selector: table tbody td
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- paddingX: 60.0%
- width: 277.9%
- height: 47.0%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_XlujyaecmFlvqpEfeNBQCCJeOhPd7zI2_iGDsoG1zWM.css
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_XlujyaecmFlvqpEfeNBQCCJeOhPd7zI2_iGDsoG1zWM.css?delta=0&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: .display-mode-overview-table td
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: td
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxtkFkOwyAMBS8UmiMhB9zIrWMjY9Ll9KXqEnX59LwHHkgqjmdvwGO2VoB36U0CkxzrkNRwTLoUFRSvO4GVZnBSCcFVeQILU3NXeVSf98ABzh8gE7DOn8i0_DlqWNEDlIJgIAkfoagtwHTFIeMeGnuEvJCMM-vUZatfuu_8FW6yX8Hd3Kn80BL7e4Y9IefY6GX0mmOmWhguUVe0lfA0bAtG6h9n0tsbuwEfgYlw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

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
- Candidate element screenshot: candidate/structure-content-type-article-display__default__dark__table-cell.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-display__default__dark__table-cell.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: No field is displayed.

```html
<td colspan="9">No field is displayed.</td>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[1]`
   - Text sample: Image

```html
<td class="tabledrag-cell"><div class="tabledrag-cell-content js-tabledrag-cell-content"><a href="#" title="Change order" class="tabledrag-handle js-tabledrag-handle tabledrag-handle-y"></a><div class="tabledrag-cell-content__item">Image</div></div></td>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: Default

```html
<td>Default</td>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[2]`

```html
<td></td>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
