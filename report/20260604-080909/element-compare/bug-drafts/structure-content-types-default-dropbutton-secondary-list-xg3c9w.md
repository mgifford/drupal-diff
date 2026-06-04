# Admin Theme (dark + light) Structure Content Types - Dropbutton Secondary Actions List style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly smaller: 0.0px vs 16.0px (-100.0%).
- Component width is significantly narrower: 0.0px vs 216.0px (-100.0%).
- Component height is significantly shorter: 0.0px vs 181.0px (-100.0%).
- Vertical padding is significantly lower: 0.0px vs 16.0px (-100.0%).
- Horizontal padding is significantly lower: 0.0px vs 16.0px (-100.0%).
- Line height is significantly smaller: 0.0px vs 24.0px (-100.0%).
- Matched element count is different: 1 fewer element(s) (-100.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Secondary Actions List** on **Structure Content Types** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/types
3. Inspect selector: .dropbutton-wrapper .dropbutton__items
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlj1sOwjAMBC-UNEeqnAeRwbWj1EGF0xNURGj5nfWuxkFY06YNyMXaCtAUvsQS8m01QWpyQZYinFjXieGOGRSFrVUR8lCtb6rC--lnB66wHUBEIMlHVKX8VlnqAoTPZGK6QCOdIS7ILpP47rPqoyvlUzh8TsFbTrH80TJ3ZTNqDvvHlbvPYC8MWm2Y :: ul
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlj1sOwjAMBC-UNEeqnAeRwbWj1EGF0xNURGj5nfWuxkFY06YNyMXaCtAUvsQS8m01QWpyQZYinFjXieGOGRSFrVUR8lCtb6rC--lnB66wHUBEIMlHVKX8VlnqAoTPZGK6QCOdIS7ILpP47rPqoyvlUzh8TsFbTrH80TJ3ZTNqDvvHlbvPYC8MWm2Y :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlj1sOwjAMBC-UNEeqnAeRwbWj1EGF0xNURGj5nfWuxkFY06YNyMXaCtAUvsQS8m01QWpyQZYinFjXieGOGRSFrVUR8lCtb6rC--lnB66wHUBEIMlHVKX8VlnqAoTPZGK6QCOdIS7ILpP47rPqoyvlUzh8TsFbTrH80TJ3ZTNqDvvHlbvPYC8MWm2Y :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))

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
- Baseline element screenshot: baseline/structure-content-types__default__light__dropbutton-secondary-list.png
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-content-types__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-content-types__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-types__default__light__dropbutton-secondary-list.png

- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-types__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-types__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Manage form display Manage display Edit Manage permissions Delete
   - Related element screenshot: baseline/structure-content-types__default__light__dropbutton-secondary-list.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-types__default__light__dropbutton-secondary-list.png
   - Related page screenshot: baseline-pages/structure-content-types__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-types__default__light__page.png

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 736px;"> <li class="manage-form-display dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/types/manage/article/form-display">Manage form display</a></li> <li class="manage-display dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/types/manage/article/display">Manage display</a></li> <li class="edit dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/types/manage/article?destination=/admin/structure/types" aria-label="Edit Article">Edit</a></li> <li class="manage-permissions dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/types/manage/article/permissions">Manage perm
```

### Drupal 12 with Admin Theme
- No matching element captured

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
