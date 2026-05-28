# Admin Theme (dark) Structure Admin Menu - Form Label style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Label** on **Structure Admin Menu** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/menu/manage/admin
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/menu/manage/admin
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: 368.9%
- height: -81.9%

## Likely CSS Sources
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: .form-item__label
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGEOwjAIRi_UrkdaWNs1KIOmpUY9vVWny6Y_eXyQB15Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39F1D5zgugMBgSTtUZH8Z1RhohgKrGGWsgDhPZoQZ2ikI4QF2SWSqVtWvXXRdGhulofGU1kx_9A89kPMErmNDT8mazm8QnP3qGZb7LB_qnCPbewBO9ODSw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/form.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/form.pcss.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: .form-item__label)

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
- Baseline element screenshot: baseline/structure-menu-admin__default__dark__label.png
- Candidate element screenshot: candidate/structure-menu-admin__default__dark__label.png
- Baseline page screenshot: baseline-pages/structure-menu-admin__default__dark__page.png
- Candidate page screenshot: candidate-pages/structure-menu-admin__default__dark__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-menu-admin__default__dark__label.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-menu-admin__default__dark__label.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menu-admin__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menu-admin__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/label[1]`
   - Text sample: Title
   - Related element screenshot: baseline/structure-menu-admin__default__dark__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-menu-admin__default__dark__label.png
   - Related page screenshot: baseline-pages/structure-menu-admin__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menu-admin__default__dark__page.png

```html
<label for="edit-label" class="form-item__label js-form-required form-required">Title</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[2]/label[1]`
   - Text sample: Menu name
   - Related element screenshot: baseline/structure-menu-admin__default__dark__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-menu-admin__default__dark__label.png
   - Related page screenshot: baseline-pages/structure-menu-admin__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menu-admin__default__dark__page.png

```html
<label class="is-disabled form-item__label js-form-required form-required" for="edit-id">Menu name</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/label[1]`
   - Text sample: Title
   - Related element screenshot: candidate/structure-menu-admin__default__dark__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-menu-admin__default__dark__label.png
   - Related page screenshot: candidate-pages/structure-menu-admin__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menu-admin__default__dark__page.png

```html
<label for="edit-label" class="form-item__label js-form-required form-required">Title</label>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[2]/label[1]`
   - Text sample: Menu name
   - Related element screenshot: candidate/structure-menu-admin__default__dark__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-menu-admin__default__dark__label.png
   - Related page screenshot: candidate-pages/structure-menu-admin__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menu-admin__default__dark__page.png

```html
<label class="is-disabled form-item__label js-form-required form-required" for="edit-id">Menu name</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
