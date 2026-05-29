# Admin Theme (dark + light) Structure Views - Form Label style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly smaller: 0.0px vs 14.0px (-100.0%).
- Component width is significantly narrower: 0.0px vs 36.0px (-100.0%).
- Component height is significantly shorter: 0.0px vs 18.0px (-100.0%).
- Line height is significantly smaller: 0.0px vs 18.0px (-100.0%).
- Matched element count is different: 1 fewer element(s) (-100.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Form Label** on **Structure Views** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/views
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_1jxw8wr9LSzHFCJwU8jtTj7WpFAe3qYSFZfYuljAXf0.css?delta=0&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: .form-item__label
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- views_ui/admin.styling

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-views__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-views__default__light__page.png


- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-views__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-views__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/label[1]`
   - Text sample: Filter
   - Related page screenshot: baseline-pages/structure-views__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-views__default__light__page.png

```html
<label class="form-item__label visually-hidden">Filter</label>
```

### Drupal 12 with Admin Theme
- No matching element captured

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
