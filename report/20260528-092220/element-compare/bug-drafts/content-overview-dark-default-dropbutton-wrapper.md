# Admin Theme (dark) Content Overview - Dropbutton Wrapper style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Wrapper** on **Content Overview** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/content
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/content
3. Inspect selector: .dropbutton-wrapper.dropbutton-multiple, .dropbutton-wrapper
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: -22.0%

## Likely CSS Sources
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFsSwjAIRTfUNEtyaIIdlEKGEF-rNz5GrfrDx7nAcEgqjidvwDFbK8BjepHAJPs6JDWMSZeiguJ1FDjQDE4qIbgqT2Bhau4qj9bnHtjBaQUyAeu8Rqblz6hhRQ9QCoKBJFyFDhP3nDH5H672pKK2ANMFh4xbaOwbyAtJnFmnrlb93O3mr_Ct9hXcPJ3KDy2bbj-8xyL155n0cz5WHQiPNd7ruGhujFenj5Hp :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFsSwjAIRTfUNEtyaIIdlEKGEF-rNz5GrfrDx7nAcEgqjidvwDFbK8BjepHAJPs6JDWMSZeiguJ1FDjQDE4qIbgqT2Bhau4qj9bnHtjBaQUyAeu8Rqblz6hhRQ9QCoKBJFyFDhP3nDH5H672pKK2ANMFh4xbaOwbyAtJnFmnrlb93O3mr_Ct9hXcPJ3KDy2bbj-8xyL155n0cz5WHQiPNd7ruGhujFenj5Hp :: .dropbutton-wrapper
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFsSwjAIRTfUNEtyaIIdlEKGEF-rNz5GrfrDx7nAcEgqjidvwDFbK8BjepHAJPs6JDWMSZeiguJ1FDjQDE4qIbgqT2Bhau4qj9bnHtjBaQUyAeu8Rqblz6hhRQ9QCoKBJFyFDhP3nDH5H672pKK2ANMFh4xbaOwbyAtJnFmnrlb93O3mr_Ct9hXcPJ3KDy2bbj-8xyL155n0cz5WHQiPNd7ruGhujFenj5Hp :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/dropbutton.css (score: 1; selectors: .dropbutton-wrapper)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 1; selectors: .dropbutton-wrapper)
- core/themes/default_admin/css/components/views-ui.css (score: 1; selectors: .dropbutton-wrapper)
- core/themes/default_admin/css/components/views-ui.pcss.css (score: 1; selectors: .dropbutton-wrapper)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.reset-appearance
- core/drupal.tableselect
- core/drupal.tablesort
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- views/views.module

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/content-overview__default__dark__dropbutton-wrapper.png
- Candidate element screenshot: candidate/content-overview__default__dark__dropbutton-wrapper.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/content-overview__default__dark__dropbutton-wrapper.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/content-overview__default__dark__dropbutton-wrapper.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]`
   - Text sample: EditList additional actions Delete View

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/node/50/edit?destination=/admin/content" aria-label="Edit Dummy Page 20" hreflang="en">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 568px;"> <li class="delete dropbutton__item dropbutton-action secondary-
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[2]/td[7]/div[1]`
   - Text sample: EditList additional actions Delete View

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/node/36/edit?destination=/admin/content" aria-label="Edit Dummy Page 6" hreflang="en">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 507px;"> <li class="delete dropbutton__item dropbutton-action secondary-a
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]`
   - Text sample: EditList additional actions Delete View

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/node/52/edit?destination=/admin/content" aria-label="Edit red" hreflang="en">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: fixed; left: auto; right: 75px; top: 419.203px;"> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/node/52/delete?d
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[2]/td[7]/div[1]`
   - Text sample: EditList additional actions Delete View

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/node/51/edit?destination=/admin/content" aria-label="Edit test" hreflang="en">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: fixed; left: auto; right: 75px; top: 480.203px;"> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/node/51/delete?
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
