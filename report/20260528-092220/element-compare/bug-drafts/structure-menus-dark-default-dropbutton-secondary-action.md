# Admin Theme (dark) Structure Menus - Dropbutton Secondary Action Link style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Secondary Action Link** on **Structure Menus** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/menu
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/menu
3. Inspect selector: .dropbutton-wrapper .dropbutton__items .dropbutton__item a
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: 25.3%
- count: +2 (40.0%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QBfhADn2w8dDrWVjuoq9WyDR7v36NJE-ThgH9YZ1haI.css?delta=0&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: a
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: a, .link, button.link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: a, .link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/elements.pcss.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/print.css (score: 1; selectors: .link)
- core/themes/default_admin/css/base/print.pcss.css (score: 1; selectors: .link)

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
- Baseline element screenshot: 
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-menus__default__dark__page.png
- Candidate page screenshot: candidate-pages/structure-menus__default__dark__page.png


- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menus__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menus__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Add link
   - Related page screenshot: baseline-pages/structure-menus__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menus__default__dark__page.png

```html
<a href="/admin/structure/menu/manage/admin/add?destination=/admin/structure/menu/manage/admin">Add link</a>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Add link
   - Related page screenshot: baseline-pages/structure-menus__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-menus__default__dark__page.png

```html
<a href="/admin/structure/menu/manage/footer/add?destination=/admin/structure/menu/manage/footer">Add link</a>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Add link
   - Related page screenshot: candidate-pages/structure-menus__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menus__default__dark__page.png

```html
<a href="/admin/structure/menu/manage/admin/add?destination=/admin/structure/menu/manage/admin">Add link</a>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Add link
   - Related page screenshot: candidate-pages/structure-menus__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-menus__default__dark__page.png

```html
<a href="/admin/structure/menu/manage/content/add?destination=/admin/structure/menu/manage/content">Add link</a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
