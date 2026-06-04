# Admin Theme (dark + light) Content Overview - Form Label style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is significantly wider: 178.8px vs 62.1px (+187.7%).
- Component height is significantly shorter: 17.8px vs 40.5px (-56.2%).
- Horizontal padding is significantly higher: 2.0px vs 0.0px (+100.0%).
- Matched element count is different: 4 fewer element(s) (-50.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Form Label** on **Content Overview** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingX: 100.0% | width: 187.7% | height: -56.2% | count: -4 (-50.0%)
- dark: paddingX: 100.0% | width: 187.7% | height: -56.2% | count: -4 (-50.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/content
2. Open candidate page: http://drupal-12.ddev.site/admin/content
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingX: 100.0% | width: 187.7% | height: -56.2% | count: -4 (-50.0%)
- dark: paddingX: 100.0% | width: 187.7% | height: -56.2% | count: -4 (-50.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: .form-item__label
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- Baseline element screenshot: 
- Candidate element screenshot: candidate/content-overview__default__light__label.png
- Baseline page screenshot: baseline-pages/content-overview__default__light__page.png
- Candidate page screenshot: candidate-pages/content-overview__default__light__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-overview__default__light__label.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-overview__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-overview__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/label[1]`
   - Text sample: Title
   - Related page screenshot: baseline-pages/content-overview__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-overview__default__light__page.png

```html
<label for="edit-title" class="form-item__label">Title</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/form[1]/div[2]/label[1]`
   - Text sample: Content type
   - Related page screenshot: baseline-pages/content-overview__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-overview__default__light__page.png

```html
<label for="edit-type" class="form-item__label">Content type</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/label[1]`
   - Text sample: Title
   - Related element screenshot: candidate/content-overview__default__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-overview__default__light__label.png
   - Related page screenshot: candidate-pages/content-overview__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-overview__default__light__page.png

```html
<label for="edit-title" class="form-item__label">Title</label>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/form[1]/div[2]/label[1]`
   - Text sample: Content type
   - Related element screenshot: candidate/content-overview__default__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-overview__default__light__label.png
   - Related page screenshot: candidate-pages/content-overview__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-overview__default__light__page.png

```html
<label for="edit-type" class="form-item__label">Content type</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
