# Admin Theme (light) Structure Views - H2 Heading style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is noticeably larger: 28.0px vs 21.3px (+31.8%).
- Component width is significantly wider: 425.4px vs 135.1px (+214.8%).
- Component height is significantly taller: 15.2px vs 5.3px (+186.0%).
- Horizontal padding is significantly (less): 0.0px vs 5.6px (-100.0%).
- Line height is noticeably larger: 36.4px vs 27.6px (+31.8%).
- Matched element count is different: 3 fewer element(s) (-37.5%).

## Summary
Potential CSS regression in **H2 Heading** on **Structure Views** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/views
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 31.8%
- lineHeight: 31.8%
- paddingX: -100.0%
- width: 214.8%
- height: 186.0%
- count: -3 (-37.5%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_1jxw8wr9LSzHFCJwU8jtTj7WpFAe3qYSFZfYuljAXf0.css?delta=0&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxlj1sSwiAMRTdUypI6KSATTRMGQq2uXtSOffh7bm5y4oQ1LFqBrM81AfXuRwwh30rnJAfrZErCgbX0DDNGUBQ2RkVohGzGqir8HV33wBWWA_AIJPGIsqR9lSVPQPgMnQ8XqKQD-AnZRpKx-RR9NKV4CjefU_CWU0x_NA1NudtqFtvHmZvPbtWM4V6GivbT6tfTL0-Qdp8 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

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
- Candidate element screenshot: candidate/structure-views__default__light__h2.png
- Baseline page screenshot: baseline-pages/structure-views__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-views__default__light__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-views__default__light__h2.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-views__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-views__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/h2[1]`
   - Text sample: Toolbar items
   - Related page screenshot: baseline-pages/structure-views__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-views__default__light__page.png

```html
<h2 class="visually-hidden">Toolbar items</h2>
```

2. XPath: `//*[@id="menu--create"]`
   - Text sample: Create Navigation
   - Related page screenshot: baseline-pages/structure-views__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-views__default__light__page.png

```html
<h2 id="menu--create" class="toolbar-block__title visually-hidden focusable">Create Navigation</h2>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-334026341"]`
   - Text sample: Administrative sidebar
   - Related element screenshot: candidate/structure-views__default__light__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-views__default__light__h2.png
   - Related page screenshot: candidate-pages/structure-views__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-views__default__light__page.png

```html
<h2 id="admin-toolbar__scroll-wrapper-334026341" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb
   - Related element screenshot: candidate/structure-views__default__light__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-views__default__light__h2.png
   - Related page screenshot: candidate-pages/structure-views__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-views__default__light__page.png

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
