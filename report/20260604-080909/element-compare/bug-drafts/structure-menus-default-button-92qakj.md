# Admin Theme (dark + light) Structure Menus - Button style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably wider: 225.8px vs 169.9px (+32.9%).
- Component height is noticeably taller: 40.0px vs 34.8px (+15.1%).
- Vertical padding is significantly higher: 20.0px vs 14.3px (+40.4%).
- Horizontal padding is significantly higher: 27.5px vs 19.5px (+41.0%).
- Line height is slightly smaller: 16.0px vs 17.0px (-5.9%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Button** on **Structure Menus** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: lineHeight: -5.9% | paddingY: 40.4% | paddingX: 41.0% | width: 32.9% | height: 15.1%
- dark: lineHeight: -5.9% | paddingY: 40.4% | paddingX: 41.0% | width: 32.9% | height: 15.1%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/menu
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/menu
3. Inspect selector: button, input[type="submit"], .button
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: lineHeight: -5.9% | paddingY: 40.4% | paddingX: 41.0% | width: 32.9% | height: 15.1%
- dark: lineHeight: -5.9% | paddingY: 40.4% | paddingX: 41.0% | width: 32.9% | height: 15.1%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_xJD3ZaOLSJxG0WRj-xpYG2VG5HmO0y2vDu-_7MFBXQs.css?delta=0&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: button, input, optgroup, select, textarea
- http://drupal-12.ddev.site/sites/default/files/css/css_xJD3ZaOLSJxG0WRj-xpYG2VG5HmO0y2vDu-_7MFBXQs.css?delta=0&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: button, input
- http://drupal-12.ddev.site/sites/default/files/css/css_xJD3ZaOLSJxG0WRj-xpYG2VG5HmO0y2vDu-_7MFBXQs.css?delta=0&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: button, select
- http://drupal-12.ddev.site/sites/default/files/css/css_xJD3ZaOLSJxG0WRj-xpYG2VG5HmO0y2vDu-_7MFBXQs.css?delta=0&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: button
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOwiAMRX8IxictHTBS7VoCxahfL-p0bj729PbmpF5Y41UbkAulZaDBf4kl5HM1Xkp0XpYsHFnrwHDBBIrC1qoITVDs1FSF39G1B05w3YGAQJL2qEj-PWUpCxDeowlxhkY6QliQXSKZuk_VW1dKh-Xmc1g85RTzH81jVzZL5DY2_Kis4_AKzd2jmq3YYf9J4R7b2AN7MHrr :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))

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
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 17px; /* current ~16px */
  padding-block: 14.3px; /* current ~20px */
  padding-inline: 19.5px; /* current ~27.5px */
  min-height: 34.8px; /* current ~40px */
}
```

## Evidence
- Baseline element screenshot: baseline/structure-menus__default__light__button.png
- Candidate element screenshot: candidate/structure-menus__default__light__button.png
- Baseline page screenshot: baseline-pages/structure-menus__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-menus__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-menus__default__light__button.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-menus__default__light__button.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-menus__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-menus__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[2]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Create
   - Related element screenshot: baseline/structure-menus__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-menus__default__light__button.png
   - Related page screenshot: baseline-pages/structure-menus__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-menus__default__light__page.png

```html
<button class="toolbar-link toolbar-link--has-icon toolbar-link--create"> <span class="toolbar-link__action">Extend</span> <span class="toolbar-link__label">Create</span> </button>
```

2. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[4]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Structure
   - Related element screenshot: baseline/structure-menus__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-menus__default__light__button.png
   - Related page screenshot: baseline-pages/structure-menus__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-menus__default__light__page.png

```html
<button class="toolbar-link toolbar-link--has-icon toolbar-link--system-admin-structure"> <span class="toolbar-link__action">Extend</span> <span class="toolbar-link__label">Structure</span> </button>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[1]/div[2]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Create
   - Related element screenshot: candidate/structure-menus__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-menus__default__light__button.png
   - Related page screenshot: candidate-pages/structure-menus__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-menus__default__light__page.png

```html
<button aria-expanded="false" aria-controls="navigation-link--navigationcreate-1035006399" data-toolbar-popover-control="" data-has-safe-triangle="" data-component-id="navigation:toolbar-button" data-index-text="c" data-icon-text="Cr" class="toolbar-button toolbar-button--icon--navigation-create toolbar-button--expand--side toolbar-button--collapsible toolbar-popover__control" data-once="safe-triangle"> <svg width="20" height="20" viewBox="0 0 24 24" fill="none" class="toolbar-button__icon" aria-hidden="true"> <path d="M12 2.25C10.0716 2.25 8.18657 2.82183 6.58319 3.89317C4.97982 4.96452 3.73013 6.48726 2.99218 8.26884C2.25422 10.0504 2.06114 12.0108 2.43735 13.9021C2.81355 15.7934 3.74215 17.5307 5.10571 18.8943C6.46928 20.2579 8.20656 21.1865 10.0979 21.5627C11.9892 21.9389 13.9496 21.74
```

2. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[1]/div[3]/ul[1]/li[1]/button[1]`
   - Text sample: Collapse Structure
   - Related element screenshot: candidate/structure-menus__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-menus__default__light__button.png
   - Related page screenshot: candidate-pages/structure-menus__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-menus__default__light__page.png

```html
<button aria-expanded="false" aria-controls="navigation-link--systemadmin-structure-1782520279" data-toolbar-popover-control="" data-has-safe-triangle="" data-component-id="navigation:toolbar-button" data-index-text="s" data-icon-text="St" class="toolbar-button toolbar-button--icon--system-admin-structure toolbar-button--expand--side toolbar-button--collapsible toolbar-popover__control" data-once="safe-triangle"> <svg width="20" height="20" viewBox="0 0 24 24" fill="none" class="toolbar-button__icon" aria-hidden="true"> <path d="M15.75 10.5H20.25C20.6478 10.5 21.0294 10.342 21.3107 10.0607C21.592 9.77936 21.75 9.39782 21.75 9V4.5C21.75 4.10218 21.592 3.72064 21.3107 3.43934C21.0294 3.15804 20.6478 3 20.25 3H15.75C15.3522 3 14.9706 3.15804 14.6893 3.43934C14.408 3.72064 14.25 4.10218 14.25 
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
