# Admin Theme (dark + light) People Permissions - Page Title Heading (h1) style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 34.0px vs 24.0px (+41.7%).
- Component width is significantly wider: 189.8px vs 133.8px (+41.8%).
- Component height is significantly taller: 41.0px vs 29.0px (+41.4%).
- Horizontal padding is significantly higher: 8.5px vs 6.0px (+41.7%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Page Title Heading (h1)** on **People Permissions** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: 41.7% | paddingX: 41.7% | width: 41.8% | height: 41.4%
- dark: fontSize: 41.7% | paddingX: 41.7% | width: 41.8% | height: 41.4%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people/permissions
2. Open candidate page: http://drupal-12.ddev.site/admin/people/permissions
3. Inspect selector: h1.page-title, .page-title h1, .page-title
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: 41.7% | paddingX: 41.7% | width: 41.8% | height: 41.4%
- dark: fontSize: 41.7% | paddingX: 41.7% | width: 41.8% | height: 41.4%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/page-title.css
- core/themes/default_admin/css/components/page-title.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_jl-YpbH8Tmwrfs667vCpda0vZx185NqvroS5qCiBFJ8.css?delta=0&language=en&theme=default_admin&include=eJxlj2sOAiEMhC_E40ibLiBpLC2BYtTTy7rRNeu_ptP5phOENd11APnYRgVy4buxhHztJkhLPkipwom1O4YbZlAUtlZFaIVm16EqvJ-ytAKEz2RiusAgXSAWZJ9J1gnt-pjcfBIP6EnYEhTr37YuM9ccNo_z7cazwA9q9NQ-vbbZvd0v9a9fyw :: h1
- http://drupal-12.ddev.site/sites/default/files/css/css_e0jP6BTndsDGTh0xpP-D5utXKc_BBAdlyYFyf_bEyVM.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC_E40ibLiBpLC2BYtTTy7rRNeu_ptP5phOENd11APnYRgVy4buxhHztJkhLPkipwom1O4YbZlAUtlZFaIVm16EqvJ-ytAKEz2RiusAgXSAWZJ9J1gnt-pjcfBIP6EnYEhTr37YuM9ccNo_z7cazwA9q9NQ-vbbZvd0v9a9fyw :: h1, .heading-a
- http://drupal-12.ddev.site/sites/default/files/css/css_e0jP6BTndsDGTh0xpP-D5utXKc_BBAdlyYFyf_bEyVM.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC_E40ibLiBpLC2BYtTTy7rRNeu_ptP5phOENd11APnYRgVy4buxhHztJkhLPkipwom1O4YbZlAUtlZFaIVm16EqvJ-ytAKEz2RiusAgXSAWZJ9J1gnt-pjcfBIP6EnYEhTr37YuM9ccNo_z7cazwA9q9NQ-vbbZvd0v9a9fyw :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_e0jP6BTndsDGTh0xpP-D5utXKc_BBAdlyYFyf_bEyVM.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC_E40ibLiBpLC2BYtTTy7rRNeu_ptP5phOENd11APnYRgVy4buxhHztJkhLPkipwom1O4YbZlAUtlZFaIVm16EqvJ-ytAKEz2RiusAgXSAWZJ9J1gnt-pjcfBIP6EnYEhTr37YuM9ccNo_z7cazwA9q9NQ-vbbZvd0v9a9fyw :: .page-title
- http://drupal-12.ddev.site/sites/default/files/css/css_e0jP6BTndsDGTh0xpP-D5utXKc_BBAdlyYFyf_bEyVM.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC_E40ibLiBpLC2BYtTTy7rRNeu_ptP5phOENd11APnYRgVy4buxhHztJkhLPkipwom1O4YbZlAUtlZFaIVm16EqvJ-ytAKEz2RiusAgXSAWZJ9J1gnt-pjcfBIP6EnYEhTr37YuM9ccNo_z7cazwA9q9NQ-vbbZvd0v9a9fyw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-a)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-a)
- core/themes/default_admin/css/components/page-title.css (score: 1; selectors: .page-title)
- core/themes/default_admin/css/components/page-title.pcss.css (score: 1; selectors: .page-title)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- user/drupal.user.admin

## Suggested CSS Patch (Confidence-Gated)
Confidence: **medium**

```css
h1 {
  font-size: 24px; /* current ~34px */
  padding-inline: 6px; /* current ~8.5px */
  min-height: 29px; /* current ~41px */
}
```

## Evidence
- Baseline element screenshot: baseline/people-permissions__default__light__page-title-heading.png
- Candidate element screenshot: candidate/people-permissions__default__light__page-title-heading.png
- Baseline page screenshot: baseline-pages/people-permissions__default__light__page.png
- Candidate page screenshot: candidate-pages/people-permissions__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/people-permissions__default__light__page-title-heading.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/people-permissions__default__light__page-title-heading.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/people-permissions__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/people-permissions__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Permissions
   - Related element screenshot: baseline/people-permissions__default__light__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/people-permissions__default__light__page-title-heading.png
   - Related page screenshot: baseline-pages/people-permissions__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/people-permissions__default__light__page.png

```html
<h1 class="page-title">Permissions</h1>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Permissions
   - Related element screenshot: candidate/people-permissions__default__light__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/people-permissions__default__light__page-title-heading.png
   - Related page screenshot: candidate-pages/people-permissions__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/people-permissions__default__light__page.png

```html
<h1 class="page-title">Permissions</h1>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
