# Admin Theme (dark + light) Structure Article Fields - Dropbutton Toggle Button style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is noticeably smaller: 14.0px vs 16.0px (-12.5%).
- Matched element count is different: 3 fewer element(s) (-75.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Toggle Button** on **Structure Article Fields** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: -12.5% | count: -3 (-75.0%)
- dark: fontSize: -12.5% | count: -3 (-75.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/fields
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/types/manage/article/fields
3. Inspect selector: .dropbutton-wrapper .dropbutton__toggle, .dropbutton-toggle button.dropbutton__toggle
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: -12.5% | count: -3 (-75.0%)
- dark: fontSize: -12.5% | count: -3 (-75.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_VJmd5PTjpLx5sx3JP9617HzcWzyo8D3fxhkKdc4gMNE.css?delta=0&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: button, input, optgroup, select, textarea
- http://drupal-12.ddev.site/sites/default/files/css/css_VJmd5PTjpLx5sx3JP9617HzcWzyo8D3fxhkKdc4gMNE.css?delta=0&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: button, input
- http://drupal-12.ddev.site/sites/default/files/css/css_VJmd5PTjpLx5sx3JP9617HzcWzyo8D3fxhkKdc4gMNE.css?delta=0&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: button, select
- http://drupal-12.ddev.site/sites/default/files/css/css_VJmd5PTjpLx5sx3JP9617HzcWzyo8D3fxhkKdc4gMNE.css?delta=0&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: .page-wrapper :focus, .ui-dialog :focus
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: .dropbutton__toggle
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: .no-touchevents .dropbutton--extrasmall .dropbutton__toggle
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: button
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/dropbutton.css (score: 1; selectors: .no-touchevents .dropbutton--extrasmall .dropbutton__toggle)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 1; selectors: .no-touchevents .dropbutton--extrasmall .dropbutton__toggle)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.dropbutton
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- field_ui/drupal.field_ui
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-fields__default__light__page.png


- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-fields__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions
   - Related page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[3]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions
   - Related page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions
   - Related page screenshot: candidate-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-fields__default__light__page.png

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
