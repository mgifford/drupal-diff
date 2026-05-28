# Admin Theme (light) Structure Content View - Dropbutton Wrapper style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Wrapper** on **Structure Content View** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views/view/content
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure/views/view/content
3. Inspect selector: .dropbutton-wrapper.dropbutton-multiple, .dropbutton-wrapper
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: -20.4%

## Likely CSS Sources
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: .dropbutton-wrapper
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-view-content__default__light__dropbutton-wrapper.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-view-content__default__light__dropbutton-wrapper.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[1]/div[1]/div[1]`
   - Text sample: Edit view name/descriptionList additional actions Analyze view Duplicate view Re

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul id="views-display-extra-actions" data-drupal-selector="edit-displays-top-extra-actions" class="dropbutton dropbutton--small dropbutton--multiple dropbutton--gin" data-once="dropbutton-icon"> <li class="edit-details dropbutton__item dropbutton-action"><a href="/admin/structure/views/nojs/edit-details/content/page_1" class="views-ajax-link" data-once="views-ajax">Edit view name/description</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__item
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]`
   - Text sample: View PageList additional actions

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple" data-once="dropbutton-icon"><li class="view dropbutton__item dropbutton-action"><a href="/admin/content" data-drupal-selector="edit-displays-settings-settings-content-tab-content-details-top-actions-path" id="edit-displays-settings-settings-content-tab-content-details-top-actions-path">View Page</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li><li class="duplicate dropbutton__item dropbutton-action secondary-action"> <input data-drupal-selector="edit-displays-settings-settings-co
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[1]/div[1]/div[1]`
   - Text sample: Edit view name/descriptionList additional actions Analyze view Duplicate view Re

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul id="views-display-extra-actions" data-drupal-selector="edit-displays-top-extra-actions" class="dropbutton dropbutton--small dropbutton--multiple dropbutton--gin" data-once="dropbutton-icon"> <li class="edit-details dropbutton__item dropbutton-action"><a href="/admin/structure/views/nojs/edit-details/content/page_1" class="views-ajax-link" data-once="views-ajax">Edit view name/description</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__item
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]`
   - Text sample: View PageList additional actions

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple" data-once="dropbutton-icon"><li class="view dropbutton__item dropbutton-action"><a href="/admin/content" data-drupal-selector="edit-displays-settings-settings-content-tab-content-details-top-actions-path" id="edit-displays-settings-settings-content-tab-content-details-top-actions-path">View Page</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li><li class="duplicate dropbutton__item dropbutton-action secondary-action"> <input data-drupal-selector="edit-displays-settings-settings-co
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
