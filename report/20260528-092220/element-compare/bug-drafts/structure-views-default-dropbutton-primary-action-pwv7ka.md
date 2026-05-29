# Admin Theme (dark + light) Structure Views - Dropbutton Primary Action Link style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 75.5px vs 87.3px (-13.5%).
- Horizontal padding is noticeably lower: 25.5px vs 29.3px (-12.8%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Primary Action Link** on **Structure Views** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingX: -12.8% | width: -13.5%
- dark: paddingX: -12.8% | width: -13.5%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/views
3. Inspect selector: .dropbutton-wrapper .dropbutton__item.dropbutton-action > a
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingX: -12.8% | width: -13.5%
- dark: paddingX: -12.8% | width: -13.5%

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_1jxw8wr9LSzHFCJwU8jtTj7WpFAe3qYSFZfYuljAXf0.css?delta=0&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: a
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: a, .link, button.link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: a, .link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/elements.pcss.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/components/dropbutton.css (score: 2; selectors: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 2; selectors: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button)
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
- navigation/internal.navigation
- views_ui/admin.styling

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-views__default__light__dropbutton-primary-action.png
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-views__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-views__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-views__default__light__dropbutton-primary-action.png

- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-views__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-views__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[5]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related element screenshot: baseline/structure-views__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-views__default__light__dropbutton-primary-action.png
   - Related page screenshot: baseline-pages/structure-views__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-views__default__light__page.png

```html
<a href="/admin/structure/views/view/comment" data-drupal-selector="views-listing-comment">Edit</a>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[5]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit
   - Related element screenshot: baseline/structure-views__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-views__default__light__dropbutton-primary-action.png
   - Related page screenshot: baseline-pages/structure-views__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-views__default__light__page.png

```html
<a href="/admin/structure/views/view/content" data-drupal-selector="views-listing-content">Edit</a>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Duplicate
   - Related page screenshot: candidate-pages/structure-views__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-views__default__light__page.png

```html
<a href="/admin/structure/views/view/files/duplicate" data-drupal-selector="views-listing-files">Duplicate</a>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[2]/a[1]`
   - Text sample: Disable
   - Related page screenshot: candidate-pages/structure-views__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-views__default__light__page.png

```html
<a href="/admin/structure/views/view/files/disable?token=0N9bGJ3whPMphdDjYRbGVcDRNK3paL7a_KakMbOokWE" class="use-ajax" data-drupal-selector="views-listing-files" data-once="ajax">Disable</a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
