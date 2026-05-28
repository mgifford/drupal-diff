# Admin Theme (light) Structure Menus - Dropbutton Wrapper style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Wrapper** on **Structure Menus** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/menu
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/menu
3. Inspect selector: .dropbutton-wrapper.dropbutton-multiple, .dropbutton-wrapper
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- count: +2 (40.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: .dropbutton-wrapper
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- menu_ui/drupal.menu_ui.adminforms
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-menus__default__light__dropbutton-wrapper.png
- Candidate element screenshot: candidate/structure-menus__default__light__dropbutton-wrapper.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-menus__default__light__dropbutton-wrapper.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-menus__default__light__dropbutton-wrapper.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]`
   - Text sample: Edit menuList additional actions Add link

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/menu/manage/admin" aria-label="Edit Administration">Edit menu</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 691px;"> <li class="add dropbutton__item dropbutton-action secondary-action"><a href="
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[3]/div[1]`
   - Text sample: Edit menuList additional actions Add link

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/menu/manage/footer" aria-label="Edit Footer">Edit menu</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items"> <li class="add dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/menu/manage/footer/add?destination=/admin/structure/menu/manage/footer">Add link
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]`
   - Text sample: Edit menuList additional actions Add link

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/menu/manage/admin" aria-label="Edit Administration">Edit menu</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: fixed; left: 1169.02px; right: auto; top: 296px;"> <li class="add dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/menu/m
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[3]/div[1]`
   - Text sample: Edit menuList additional actions Add link

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/menu/manage/content" aria-label="Edit Content">Edit menu</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items"> <li class="add dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/menu/manage/content/add?destination=/admin/structure/menu/manage/content">Add 
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
