# Admin Theme (dark + light) People List - Dropbutton Wrapper style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 78.0px vs 100.0px (-22.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Wrapper** on **People List** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: width: -22.0%
- dark: width: -22.0%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-12.ddev.site/admin/people
3. Inspect selector: .dropbutton-wrapper.dropbutton-multiple, .dropbutton-wrapper
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: width: -22.0%
- dark: width: -22.0%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: .dropbutton-wrapper
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- core/drupal.item-list
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
- Baseline element screenshot: baseline/people-list__default__light__dropbutton-wrapper.png
- Candidate element screenshot: candidate/people-list__default__light__dropbutton-wrapper.png
- Baseline page screenshot: baseline-pages/people-list__default__light__page.png
- Candidate page screenshot: candidate-pages/people-list__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/people-list__default__light__dropbutton-wrapper.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/people-list__default__light__dropbutton-wrapper.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/people-list__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/people-list__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]`
   - Text sample: EditList additional actions View
   - Related element screenshot: baseline/people-list__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/people-list__default__light__dropbutton-wrapper.png
   - Related page screenshot: baseline-pages/people-list__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/people-list__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple open" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/user/2/edit?destination=/admin/people" aria-label="Edit editor1" hreflang="en">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 320.328px;"> <li class="view dropbutton__item dropbutton-action secondary-a
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[2]/td[7]/div[1]`
   - Text sample: EditList additional actions View
   - Related element screenshot: baseline/people-list__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/people-list__default__light__dropbutton-wrapper.png
   - Related page screenshot: baseline-pages/people-list__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/people-list__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/user/1/edit?destination=/admin/people" aria-label="Edit admin" hreflang="en">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items"> <li class="view dropbutton__item dropbutton-action secondary-action"><a href="/user/1?destination=/admin/people" aria-label="View admin" hreflang="en">View</a></li
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]`
   - Text sample: EditList additional actions View
   - Related element screenshot: candidate/people-list__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/people-list__default__light__dropbutton-wrapper.png
   - Related page screenshot: candidate-pages/people-list__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/people-list__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple open" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/user/2/edit?destination=/admin/people" aria-label="Edit editor1" hreflang="en">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: fixed; left: auto; right: 75px; top: 420.203px;"> <li class="view dropbutton__item dropbutton-action secondary-action"><a href="/user/2?dest
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[2]/td[7]/div[1]`
   - Text sample: EditList additional actions View
   - Related element screenshot: candidate/people-list__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/people-list__default__light__dropbutton-wrapper.png
   - Related page screenshot: candidate-pages/people-list__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/people-list__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/user/1/edit?destination=/admin/people" aria-label="Edit admin" hreflang="en">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items"> <li class="view dropbutton__item dropbutton-action secondary-action"><a href="/user/1?destination=/admin/people" aria-label="View admin" hreflang="en">View</a></li
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
