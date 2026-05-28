# Admin Theme (dark) Structure Admin Menu - H2 Heading style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 28.0px vs 19.0px (+47.4%).
- Component width is significantly narrower: 1.0px vs 8.3px (-88.0%).
- Component height is noticeably taller: 1.0px vs 0.8px (+20.0%).
- Horizontal padding is significantly (less): 0.0px vs 7.5px (-100.0%).
- Line height is significantly larger: 36.4px vs 24.7px (+47.4%).
- Matched element count is different: 4 fewer element(s) (-66.7%).

## Summary
Potential CSS regression in **H2 Heading** on **Structure Admin Menu** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/menu/manage/admin
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/menu/manage/admin
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 47.4%
- lineHeight: 47.4%
- paddingX: -100.0%
- width: -88.0%
- height: 20.0%
- count: -4 (-66.7%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QBfhADn2w8dDrWVjuoq9WyDR7v36NJE-ThgH9YZ1haI.css?delta=0&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

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
- Candidate element screenshot: candidate/structure-menu-admin__default__dark__h2.png
- Baseline page screenshot: baseline-pages/structure-menu-admin__default__dark__page.png
- Candidate page screenshot: candidate-pages/structure-menu-admin__default__dark__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-menu-admin__default__dark__h2.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menu-admin__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menu-admin__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/h2[1]`
   - Text sample: Toolbar items
   - Related page screenshot: baseline-pages/structure-menu-admin__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menu-admin__default__dark__page.png

```html
<h2 class="visually-hidden">Toolbar items</h2>
```

2. XPath: `//*[@id="menu--create"]`
   - Text sample: Create Navigation
   - Related page screenshot: baseline-pages/structure-menu-admin__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menu-admin__default__dark__page.png

```html
<h2 id="menu--create" class="toolbar-block__title visually-hidden focusable">Create Navigation</h2>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-334026341"]`
   - Text sample: Administrative sidebar
   - Related element screenshot: candidate/structure-menu-admin__default__dark__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-menu-admin__default__dark__h2.png
   - Related page screenshot: candidate-pages/structure-menu-admin__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menu-admin__default__dark__page.png

```html
<h2 id="admin-toolbar__scroll-wrapper-334026341" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb
   - Related element screenshot: candidate/structure-menu-admin__default__dark__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-menu-admin__default__dark__h2.png
   - Related page screenshot: candidate-pages/structure-menu-admin__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menu-admin__default__dark__page.png

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
