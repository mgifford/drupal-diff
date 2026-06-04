# Admin Theme (dark + light) People Roles - Dropbutton Secondary Actions List style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 160.0px vs 184.0px (-13.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Secondary Actions List** on **People Roles** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: width: -13.0%
- dark: width: -13.0%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people/roles
2. Open candidate page: http://drupal-12.ddev.site/admin/people/roles
3. Inspect selector: .dropbutton-wrapper .dropbutton__items
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: width: -13.0%
- dark: width: -13.0%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkO0OwjAIRV9oXR9poR82KIOGUTN9emtcXDb9ey6XHIjClldrQD5pq0Bj_BJHyLdliKLZR5mrcGZbRoY7FjAUds5EKIC60MyEP6PbHrjCegAJgaQckUr9UzUIlJPCNsyiMxA-85DyBRrZBGlG9oUkdMvFHl20nMLd8hS8lQ3rD61TP2TYax77H5S7zs5esB91-A :: ul
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkO0OwjAIRV9oXR9poR82KIOGUTN9emtcXDb9ey6XHIjClldrQD5pq0Bj_BJHyLdliKLZR5mrcGZbRoY7FjAUds5EKIC60MyEP6PbHrjCegAJgaQckUr9UzUIlJPCNsyiMxA-85DyBRrZBGlG9oUkdMvFHl20nMLd8hS8lQ3rD61TP2TYax77H5S7zs5esB91-A :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkO0OwjAIRV9oXR9poR82KIOGUTN9emtcXDb9ey6XHIjClldrQD5pq0Bj_BJHyLdliKLZR5mrcGZbRoY7FjAUds5EKIC60MyEP6PbHrjCegAJgaQckUr9UzUIlJPCNsyiMxA-85DyBRrZBGlG9oUkdMvFHl20nMLd8hS8lQ3rD61TP2TYax77H5S7zs5esB91-A :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))

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
- Baseline element screenshot: baseline/people-roles__default__light__dropbutton-secondary-list.png
- Candidate element screenshot: candidate/people-roles__default__light__dropbutton-secondary-list.png
- Baseline page screenshot: baseline-pages/people-roles__default__light__page.png
- Candidate page screenshot: candidate-pages/people-roles__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/people-roles__default__light__dropbutton-secondary-list.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/people-roles__default__light__dropbutton-secondary-list.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/people-roles__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/people-roles__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Edit permissions Delete
   - Related element screenshot: baseline/people-roles__default__light__dropbutton-secondary-list.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/people-roles__default__light__dropbutton-secondary-list.png
   - Related page screenshot: baseline-pages/people-roles__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/people-roles__default__light__page.png

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 388.5px;"> <li class="permissions dropbutton__item dropbutton-action secondary-action"><a href="/admin/people/permissions/content_editor">Edit permissions</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/people/roles/manage/content_editor/delete?destination=/admin/people/roles" aria-label="Delete Content editor" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" data-once="ajax">Delete</a></li> </ul>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Edit permissions Delete
   - Related element screenshot: candidate/people-roles__default__light__dropbutton-secondary-list.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/people-roles__default__light__dropbutton-secondary-list.png
   - Related page screenshot: candidate-pages/people-roles__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/people-roles__default__light__page.png

```html
<ul class="dropbutton__items" style="position: fixed; left: 1053.22px; right: auto; top: 594.203px;"> <li class="permissions dropbutton__item dropbutton-action secondary-action"><a href="/admin/people/permissions/content_editor">Edit permissions</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/people/roles/manage/content_editor/delete?destination=/admin/people/roles" aria-label="Delete Content editor" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" data-once="ajax">Delete</a></li> </ul>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
