# Admin Theme (dark + light) Structure Admin Menu - Dropbutton Wrapper style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 78.0px vs 100.0px (-22.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Wrapper** on **Structure Admin Menu** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: width: -22.0%
- dark: width: -22.0%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/menu/manage/admin
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/menu/manage/admin
3. Inspect selector: .dropbutton-wrapper.dropbutton-multiple, .dropbutton-wrapper
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: width: -22.0%
- dark: width: -22.0%

## Likely CSS Sources
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: .dropbutton-wrapper
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- menu_ui/drupal.menu_ui.adminforms
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-menu-admin__default__light__dropbutton-wrapper.png
- Candidate element screenshot: candidate/structure-menu-admin__default__light__dropbutton-wrapper.png
- Baseline page screenshot: baseline-pages/structure-menu-admin__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-menu-admin__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-menu-admin__default__light__dropbutton-wrapper.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-menu-admin__default__light__dropbutton-wrapper.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menu-admin__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menu-admin__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[4]/div[2]/table[1]/tbody[1]/tr[1]/td[4]/div[1]`
   - Text sample: EditList additional actions Add child
   - Related element screenshot: baseline/structure-menu-admin__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-menu-admin__default__light__dropbutton-wrapper.png
   - Related page screenshot: baseline-pages/structure-menu-admin__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menu-admin__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul data-drupal-selector="edit-links-menu-plugin-idsystemadmin-operations" class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/menu/link/system.admin/edit?destination=/admin/structure/menu/manage/admin">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-heig
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[4]/div[2]/table[1]/tbody[1]/tr[2]/td[4]/div[1]`
   - Text sample: EditList additional actions Add child
   - Related element screenshot: baseline/structure-menu-admin__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-menu-admin__default__light__dropbutton-wrapper.png
   - Related page screenshot: baseline-pages/structure-menu-admin__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menu-admin__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul data-drupal-selector="edit-links-menu-plugin-idsystemadmin-content-operations" class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/menu/link/system.admin_content/edit?destination=/admin/structure/menu/manage/admin">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[4]/div[2]/table[1]/tbody[1]/tr[1]/td[4]/div[1]`
   - Text sample: EditList additional actions Add child
   - Related element screenshot: candidate/structure-menu-admin__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-menu-admin__default__light__dropbutton-wrapper.png
   - Related page screenshot: candidate-pages/structure-menu-admin__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menu-admin__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul data-drupal-selector="edit-links-menu-plugin-idsystemadmin-operations" class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/menu/link/system.admin/edit?destination=/admin/structure/menu/manage/admin">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: fixed; left: 1152.48px; right: auto; top: 506px;"> <li class=
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[4]/div[2]/table[1]/tbody[1]/tr[2]/td[4]/div[1]`
   - Text sample: EditList additional actions Add child
   - Related element screenshot: candidate/structure-menu-admin__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-menu-admin__default__light__dropbutton-wrapper.png
   - Related page screenshot: candidate-pages/structure-menu-admin__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menu-admin__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul data-drupal-selector="edit-links-menu-plugin-idsystemadmin-content-operations" class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/menu/link/system.admin_content/edit?destination=/admin/structure/menu/manage/admin">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: fixed; left: 1092.73px; right: auto; top: 582
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
