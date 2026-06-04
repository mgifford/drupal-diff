# Admin Theme (dark + light) Structure Admin Menu - Dropbutton Primary Action Link style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 57.8px vs 74.9px (-22.9%).
- Horizontal padding is noticeably lower: 24.5px vs 29.8px (-17.6%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Primary Action Link** on **Structure Admin Menu** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingX: -17.6% | width: -22.9%
- dark: paddingX: -17.6% | width: -22.9%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/menu/manage/admin
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/menu/manage/admin
3. Inspect selector: .dropbutton-wrapper .dropbutton__item.dropbutton-action > a
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingX: -17.6% | width: -22.9%
- dark: paddingX: -17.6% | width: -22.9%

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_xJD3ZaOLSJxG0WRj-xpYG2VG5HmO0y2vDu-_7MFBXQs.css?delta=0&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: a
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: a, .link, button.link
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: a, .link
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/elements.pcss.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/components/dropbutton.css (score: 2; selectors: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 2; selectors: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/base/print.css (score: 1; selectors: .link)
- core/themes/default_admin/css/base/print.pcss.css (score: 1; selectors: .link)

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
- Baseline element screenshot: 
- Candidate element screenshot: candidate/structure-menu-admin__default__light__dropbutton-primary-action.png
- Baseline page screenshot: baseline-pages/structure-menu-admin__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-menu-admin__default__light__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-menu-admin__default__light__dropbutton-primary-action.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-menu-admin__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-menu-admin__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[4]/div[2]/table[1]/tbody[1]/tr[1]/td[4]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related page screenshot: baseline-pages/structure-menu-admin__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-menu-admin__default__light__page.png

```html
<a href="/admin/structure/menu/link/system.admin/edit?destination=/admin/structure/menu/manage/admin">Edit</a>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[4]/div[2]/table[1]/tbody[1]/tr[2]/td[4]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related page screenshot: baseline-pages/structure-menu-admin__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-menu-admin__default__light__page.png

```html
<a href="/admin/structure/menu/link/system.admin_content/edit?destination=/admin/structure/menu/manage/admin">Edit</a>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[4]/div[2]/table[1]/tbody[1]/tr[1]/td[4]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related element screenshot: candidate/structure-menu-admin__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-menu-admin__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/structure-menu-admin__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-menu-admin__default__light__page.png

```html
<a href="/admin/structure/menu/link/system.admin/edit?destination=/admin/structure/menu/manage/admin">Edit</a>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[4]/div[2]/table[1]/tbody[1]/tr[2]/td[4]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related element screenshot: candidate/structure-menu-admin__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-menu-admin__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/structure-menu-admin__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-menu-admin__default__light__page.png

```html
<a href="/admin/structure/menu/link/system.admin_content/edit?destination=/admin/structure/menu/manage/admin">Edit</a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
