# Admin Theme (dark + light) People Permissions - Form Label style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is significantly wider: 1062.0px vs 93.5px (+1035.8%).
- Component height is significantly shorter: 18.0px vs 78.8px (-77.1%).
- Matched element count is different: 7 fewer element(s) (-87.5%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Form Label** on **People Permissions** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: width: 1035.8% | height: -77.1% | count: -7 (-87.5%)
- dark: width: 1035.8% | height: -77.1% | count: -7 (-87.5%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people/permissions
2. Open candidate page: http://drupal-12.ddev.site/admin/people/permissions
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: width: 1035.8% | height: -77.1% | count: -7 (-87.5%)
- dark: width: 1035.8% | height: -77.1% | count: -7 (-87.5%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_e0jP6BTndsDGTh0xpP-D5utXKc_BBAdlyYFyf_bEyVM.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC_E40ibLiBpLC2BYtTTy7rRNeu_ptP5phOENd11APnYRgVy4buxhHztJkhLPkipwom1O4YbZlAUtlZFaIVm16EqvJ-ytAKEz2RiusAgXSAWZJ9J1gnt-pjcfBIP6EnYEhTr37YuM9ccNo_z7cazwA9q9NQ-vbbZvd0v9a9fyw :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_e0jP6BTndsDGTh0xpP-D5utXKc_BBAdlyYFyf_bEyVM.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC_E40ibLiBpLC2BYtTTy7rRNeu_ptP5phOENd11APnYRgVy4buxhHztJkhLPkipwom1O4YbZlAUtlZFaIVm16EqvJ-ytAKEz2RiusAgXSAWZJ9J1gnt-pjcfBIP6EnYEhTr37YuM9ccNo_z7cazwA9q9NQ-vbbZvd0v9a9fyw :: .form-item__label
- http://drupal-12.ddev.site/sites/default/files/css/css_e0jP6BTndsDGTh0xpP-D5utXKc_BBAdlyYFyf_bEyVM.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC_E40ibLiBpLC2BYtTTy7rRNeu_ptP5phOENd11APnYRgVy4buxhHztJkhLPkipwom1O4YbZlAUtlZFaIVm16EqvJ-ytAKEz2RiusAgXSAWZJ9J1gnt-pjcfBIP6EnYEhTr37YuM9ccNo_z7cazwA9q9NQ-vbbZvd0v9a9fyw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/form.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/form.pcss.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: .form-item__label)

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
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/people-permissions__default__light__label.png
- Candidate element screenshot: candidate/people-permissions__default__light__label.png
- Baseline page screenshot: baseline-pages/people-permissions__default__light__page.png
- Candidate page screenshot: candidate-pages/people-permissions__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/people-permissions__default__light__label.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/people-permissions__default__light__label.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/people-permissions__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/people-permissions__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[2]/div[1]/label[1]`
   - Text sample: Filter
   - Related element screenshot: baseline/people-permissions__default__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/people-permissions__default__light__label.png
   - Related page screenshot: baseline-pages/people-permissions__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/people-permissions__default__light__page.png

```html
<label for="edit-text" class="form-item__label">Filter</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[3]/div[1]/table[1]/tbody[1]/tr[2]/td[2]/div[1]/label[1]`
   - Text sample: Anonymous user: View official announcements related to Drupal
   - Related element screenshot: baseline/people-permissions__default__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/people-permissions__default__light__label.png
   - Related page screenshot: baseline-pages/people-permissions__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/people-permissions__default__light__page.png

```html
<label for="edit-anonymous-access-announcements" class="form-item__label visually-hidden">Anonymous user: View official announcements related to Drupal</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[2]/div[1]/label[1]`
   - Text sample: Filter
   - Related element screenshot: candidate/people-permissions__default__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/people-permissions__default__light__label.png
   - Related page screenshot: candidate-pages/people-permissions__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/people-permissions__default__light__page.png

```html
<label for="edit-text" class="form-item__label">Filter</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
