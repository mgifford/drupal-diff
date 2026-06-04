# Admin Theme (dark + light) Reports Status - Button style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Vertical padding is noticeably higher: 20.0px vs 17.0px (+17.6%).
- Horizontal padding is noticeably higher: 27.5px vs 20.7px (+33.1%).
- Matched element count is different: 2 more element(s) (+33.3%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Button** on **Reports Status** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingY: 17.6% | paddingX: 33.1% | count: +2 (33.3%)
- dark: paddingY: 17.6% | paddingX: 33.1% | count: +2 (33.3%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/reports/status
2. Open candidate page: http://drupal-12.ddev.site/admin/reports/status
3. Inspect selector: button, input[type="submit"], .button
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingY: 17.6% | paddingX: 33.1% | count: +2 (33.3%)
- dark: paddingY: 17.6% | paddingX: 33.1% | count: +2 (33.3%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_NB-6_r2gy5jJxsyRovkHjwrk6u9sC0pXUFxdNfBTNxw.css?delta=0&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: button, input, optgroup, select, textarea
- http://drupal-12.ddev.site/sites/default/files/css/css_NB-6_r2gy5jJxsyRovkHjwrk6u9sC0pXUFxdNfBTNxw.css?delta=0&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: button, input
- http://drupal-12.ddev.site/sites/default/files/css/css_NB-6_r2gy5jJxsyRovkHjwrk6u9sC0pXUFxdNfBTNxw.css?delta=0&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: button, select
- http://drupal-12.ddev.site/sites/default/files/css/css_NB-6_r2gy5jJxsyRovkHjwrk6u9sC0pXUFxdNfBTNxw.css?delta=0&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-12.ddev.site/sites/default/files/css/css_QAJInxAd3RCk8mwMUVWc7u5uATAKBe-PejqfTHUdnOM.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_QAJInxAd3RCk8mwMUVWc7u5uATAKBe-PejqfTHUdnOM.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: button
- http://drupal-12.ddev.site/sites/default/files/css/css_QAJInxAd3RCk8mwMUVWc7u5uATAKBe-PejqfTHUdnOM.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- system/status.report

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/reports-status__default__light__button.png
- Candidate element screenshot: candidate/reports-status__default__light__button.png
- Baseline page screenshot: baseline-pages/reports-status__default__light__page.png
- Candidate page screenshot: candidate-pages/reports-status__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/reports-status__default__light__button.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/reports-status__default__light__button.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/reports-status__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/reports-status__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[2]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Create
   - Related element screenshot: baseline/reports-status__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/reports-status__default__light__button.png
   - Related page screenshot: baseline-pages/reports-status__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/reports-status__default__light__page.png

```html
<button class="toolbar-link toolbar-link--has-icon toolbar-link--create"> <span class="toolbar-link__action">Extend</span> <span class="toolbar-link__label">Create</span> </button>
```

2. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[4]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Structure
   - Related element screenshot: baseline/reports-status__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/reports-status__default__light__button.png
   - Related page screenshot: baseline-pages/reports-status__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/reports-status__default__light__page.png

```html
<button class="toolbar-link toolbar-link--has-icon toolbar-link--system-admin-structure"> <span class="toolbar-link__action">Extend</span> <span class="toolbar-link__label">Structure</span> </button>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[1]/div[2]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Create
   - Related element screenshot: candidate/reports-status__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/reports-status__default__light__button.png
   - Related page screenshot: candidate-pages/reports-status__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/reports-status__default__light__page.png

```html
<button aria-expanded="false" aria-controls="navigation-link--navigationcreate-498407066" data-toolbar-popover-control="" data-has-safe-triangle="" data-component-id="navigation:toolbar-button" data-index-text="c" data-icon-text="Cr" class="toolbar-button toolbar-button--icon--navigation-create toolbar-button--expand--side toolbar-button--collapsible toolbar-popover__control" data-once="safe-triangle"> <svg width="20" height="20" viewBox="0 0 24 24" fill="none" class="toolbar-button__icon" aria-hidden="true"> <path d="M12 2.25C10.0716 2.25 8.18657 2.82183 6.58319 3.89317C4.97982 4.96452 3.73013 6.48726 2.99218 8.26884C2.25422 10.0504 2.06114 12.0108 2.43735 13.9021C2.81355 15.7934 3.74215 17.5307 5.10571 18.8943C6.46928 20.2579 8.20656 21.1865 10.0979 21.5627C11.9892 21.9389 13.9496 21.745
```

2. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[1]/div[3]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Structure
   - Related element screenshot: candidate/reports-status__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/reports-status__default__light__button.png
   - Related page screenshot: candidate-pages/reports-status__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/reports-status__default__light__page.png

```html
<button aria-expanded="false" aria-controls="navigation-link--systemadmin-structure-1629777872" data-toolbar-popover-control="" data-has-safe-triangle="" data-component-id="navigation:toolbar-button" data-index-text="s" data-icon-text="St" class="toolbar-button toolbar-button--icon--system-admin-structure toolbar-button--expand--side toolbar-button--collapsible toolbar-popover__control" data-once="safe-triangle"> <svg width="20" height="20" viewBox="0 0 24 24" fill="none" class="toolbar-button__icon" aria-hidden="true"> <path d="M15.75 10.5H20.25C20.6478 10.5 21.0294 10.342 21.3107 10.0607C21.592 9.77936 21.75 9.39782 21.75 9V4.5C21.75 4.10218 21.592 3.72064 21.3107 3.43934C21.0294 3.15804 20.6478 3 20.25 3H15.75C15.3522 3 14.9706 3.15804 14.6893 3.43934C14.408 3.72064 14.25 4.10218 14.25 
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
