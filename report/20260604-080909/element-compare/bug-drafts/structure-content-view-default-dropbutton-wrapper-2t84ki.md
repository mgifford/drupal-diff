# Admin Theme (dark + light) Structure Content View - Dropbutton Wrapper style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 75.1px vs 100.0px (-24.9%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Wrapper** on **Structure Content View** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: width: -24.9%
- dark: width: -24.9%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views/view/content
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/views/view/content
3. Inspect selector: .dropbutton-wrapper.dropbutton-multiple, .dropbutton-wrapper
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: width: -24.9%
- dark: width: -24.9%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: .dropbutton-wrapper
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
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
- core/drupal.tabledrag
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- views_ui/admin.styling

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-view-content__default__light__dropbutton-wrapper.png
- Candidate element screenshot: candidate/structure-view-content__default__light__dropbutton-wrapper.png
- Baseline page screenshot: baseline-pages/structure-view-content__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-view-content__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-view-content__default__light__dropbutton-wrapper.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-view-content__default__light__dropbutton-wrapper.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-view-content__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-view-content__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[4]/div[1]/div[1]/div[1]`
   - Text sample: Add filter criteriaList additional actions And/Or Rearrange filter criteria
   - Related element screenshot: baseline/structure-view-content__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-view-content__default__light__dropbutton-wrapper.png
   - Related page screenshot: baseline-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-view-content__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="views-ui-settings-bucket-operations dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin" data-once="dropbutton-icon"> <li class="add dropbutton__item dropbutton-action"><a href="/admin/structure/views/nojs/add-handler/content/page_1/filter" class="compact add views-ajax-link" id="views-add-filter" data-once="views-ajax">Add <span class="visually-hidden">filter criteria</span></a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dr
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/div[1]/div[1]/div[1]`
   - Text sample: Add sort criteria
   - Related element screenshot: baseline/structure-view-content__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-view-content__default__light__dropbutton-wrapper.png
   - Related page screenshot: baseline-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-view-content__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-single" data-drupal-ajax-container="" data-once="dropbutton"> <div class="dropbutton-widget"><ul class="views-ui-settings-bucket-operations dropbutton dropbutton--extrasmall dropbutton--single dropbutton--gin" data-once="dropbutton-icon"> <li class="add dropbutton__item dropbutton-action"><a href="/admin/structure/views/nojs/add-handler/content/page_1/sort" class="compact add views-ajax-link" id="views-add-sort" data-once="views-ajax">Add <span class="visually-hidden">sort criteria</span></a></li> </ul></div> </div>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[5]/div[1]/div[1]/div[1]`
   - Text sample: Add sort criteria
   - Related element screenshot: candidate/structure-view-content__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-view-content__default__light__dropbutton-wrapper.png
   - Related page screenshot: candidate-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-view-content__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-single" data-drupal-ajax-container="" data-once="dropbutton"> <div class="dropbutton-widget"><ul class="views-ui-settings-bucket-operations dropbutton dropbutton--extrasmall dropbutton--single dropbutton--gin" data-once="dropbutton-icon"> <li class="add dropbutton__item dropbutton-action"><a href="/admin/structure/views/nojs/add-handler/content/page_1/sort" class="compact add views-ajax-link" id="views-add-sort" data-once="views-ajax">Add <span class="visually-hidden">sort criteria</span></a></li> </ul></div> </div>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[2]/form[1]/div[4]/div[2]/div[3]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]`
   - Text sample: EditList additional actions Delete View
   - Related element screenshot: candidate/structure-view-content__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-view-content__default__light__dropbutton-wrapper.png
   - Related page screenshot: candidate-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-view-content__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin" data-once="dropbutton-icon"> <li class="edit dropbutton__item dropbutton-action"><a href="/node/50/edit?destination=/admin/structure/views/view/content/preview/page_1%3F_wrapper_format%3Ddrupal_ajax" aria-label="Edit Dummy Page 20" hreflang="en" data-once="views-ajax">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items"> <li class="delete dropbutton__item
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
