# Admin Theme (dark + light) Content Overview - Dropbutton Primary Action Link style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 66.6px vs 80.9px (-17.6%).
- Horizontal padding is noticeably lower: 25.0px vs 29.5px (-15.3%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Primary Action Link** on **Content Overview** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingX: -15.3% | width: -17.6%
- dark: paddingX: -15.3% | width: -17.6%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/content
2. Open candidate page: http://drupal-12.ddev.site/admin/content
3. Inspect selector: .dropbutton-wrapper .dropbutton__item.dropbutton-action > a
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingX: -15.3% | width: -17.6%
- dark: paddingX: -15.3% | width: -17.6%

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
- http://drupal-12.ddev.site/sites/default/files/css/css_5vT_P2-mSci71DtVDu6ewdsrBcqeLm7Bp9PhmODi5Z8.css?delta=0&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: a
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: a, .link, button.link
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: a, .link
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- Baseline element screenshot: baseline/content-overview__default__light__dropbutton-primary-action.png
- Candidate element screenshot: candidate/content-overview__default__light__dropbutton-primary-action.png
- Baseline page screenshot: baseline-pages/content-overview__default__light__page.png
- Candidate page screenshot: candidate-pages/content-overview__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-overview__default__light__dropbutton-primary-action.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-overview__default__light__dropbutton-primary-action.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-overview__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-overview__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related element screenshot: baseline/content-overview__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-overview__default__light__dropbutton-primary-action.png
   - Related page screenshot: baseline-pages/content-overview__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-overview__default__light__page.png

```html
<a href="/node/50/edit?destination=/admin/content" aria-label="Edit Dummy Page 20" hreflang="en">Edit</a>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[2]/td[7]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related element screenshot: baseline/content-overview__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-overview__default__light__dropbutton-primary-action.png
   - Related page screenshot: baseline-pages/content-overview__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-overview__default__light__page.png

```html
<a href="/node/36/edit?destination=/admin/content" aria-label="Edit Dummy Page 6" hreflang="en">Edit</a>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related element screenshot: candidate/content-overview__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-overview__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/content-overview__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-overview__default__light__page.png

```html
<a href="/node/50/edit?destination=/admin/content" aria-label="Edit Dummy Page 20" hreflang="en">Edit</a>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[2]/td[7]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related element screenshot: candidate/content-overview__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-overview__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/content-overview__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-overview__default__light__page.png

```html
<a href="/node/36/edit?destination=/admin/content" aria-label="Edit Dummy Page 6" hreflang="en">Edit</a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
