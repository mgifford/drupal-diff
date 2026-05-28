# Admin Theme (light) Block Content Types - Dropbutton Secondary Actions List style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Secondary Actions List** on **Block Content Types** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/block-content
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure/block-content
3. Inspect selector: .dropbutton-wrapper .dropbutton__items
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: -11.1%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlj1sOwjAMBC-UNEeqnAeRwbWj1EGF0xNURGj5nfWuxkFY06YNyMXaCtAUvsQS8m01QWpyQZYinFjXieGOGRSFrVUR8lCtb6rC--lnB66wHUBEIMlHVKX8VlnqAoTPZGK6QCOdIS7ILpP47rPqoyvlUzh8TsFbTrH80TJ3ZTNqDvvHlbvPYC8MWm2Y :: ul
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlj1sOwjAMBC-UNEeqnAeRwbWj1EGF0xNURGj5nfWuxkFY06YNyMXaCtAUvsQS8m01QWpyQZYinFjXieGOGRSFrVUR8lCtb6rC--lnB66wHUBEIMlHVKX8VlnqAoTPZGK6QCOdIS7ILpP47rPqoyvlUzh8TsFbTrH80TJ3ZTNqDvvHlbvPYC8MWm2Y :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlj1sOwjAMBC-UNEeqnAeRwbWj1EGF0xNURGj5nfWuxkFY06YNyMXaCtAUvsQS8m01QWpyQZYinFjXieGOGRSFrVUR8lCtb6rC--lnB66wHUBEIMlHVKX8VlnqAoTPZGK6QCOdIS7ILpP47rPqoyvlUzh8TsFbTrH80TJ3ZTNqDvvHlbvPYC8MWm2Y :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/block-content__default__light__dropbutton-secondary-list.png
- Candidate element screenshot: candidate/block-content__default__light__dropbutton-secondary-list.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/block-content__default__light__dropbutton-secondary-list.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/block-content__default__light__dropbutton-secondary-list.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Manage form display Manage display Edit Manage permissions Delete

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 736px;"> <li class="manage-form-display dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block-content/manage/basic/form-display">Manage form display</a></li> <li class="manage-display dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block-content/manage/basic/display">Manage display</a></li> <li class="edit dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block-content/manage/basic?destination=/admin/structure/block-content" aria-label="Edit Basic block">Edit</a></li> <li class="manage-permissions dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block-content/m
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Manage form display Manage display Edit Manage permissions Delete

```html
<ul class="dropbutton__items" style="position: fixed; left: 1109.83px; right: auto; top: 251px;"> <li class="manage-form-display dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block-content/manage/basic/form-display">Manage form display</a></li> <li class="manage-display dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block-content/manage/basic/display">Manage display</a></li> <li class="edit dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block-content/manage/basic?destination=/admin/structure/block-content" aria-label="Edit Basic block">Edit</a></li> <li class="manage-permissions dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block-content/manage/basic/permissions
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
