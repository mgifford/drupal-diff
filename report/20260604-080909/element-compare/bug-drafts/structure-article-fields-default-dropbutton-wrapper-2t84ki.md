# Admin Theme (dark + light) Structure Article Fields - Dropbutton Wrapper style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 78.0px vs 100.0px (-22.0%).
- Matched element count is different: 3 fewer element(s) (-75.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Wrapper** on **Structure Article Fields** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: width: -22.0% | count: -3 (-75.0%)
- dark: width: -22.0% | count: -3 (-75.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/fields
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/types/manage/article/fields
3. Inspect selector: .dropbutton-wrapper.dropbutton-multiple, .dropbutton-wrapper
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: width: -22.0% | count: -3 (-75.0%)
- dark: width: -22.0% | count: -3 (-75.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: .dropbutton-wrapper
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/dropbutton.css (score: 1; selectors: .dropbutton-wrapper)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 1; selectors: .dropbutton-wrapper)
- core/themes/default_admin/css/components/views-ui.css (score: 1; selectors: .dropbutton-wrapper)
- core/themes/default_admin/css/components/views-ui.pcss.css (score: 1; selectors: .dropbutton-wrapper)

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
- Baseline element screenshot: baseline/structure-content-type-article-fields__default__light__dropbutton-wrapper.png
- Candidate element screenshot: candidate/structure-content-type-article-fields__default__light__dropbutton-wrapper.png
- Baseline page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-fields__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-type-article-fields__default__light__dropbutton-wrapper.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-content-type-article-fields__default__light__dropbutton-wrapper.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-fields__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]`
   - Text sample: EditList additional actions Delete
   - Related element screenshot: baseline/structure-content-type-article-fields__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-type-article-fields__default__light__dropbutton-wrapper.png
   - Related page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/types/manage/article/fields/node.article.body" title="Edit field settings." class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:1100}" data-once="ajax">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: absolute; overflow-y: auto
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[3]/div[1]`
   - Text sample: EditList additional actions Delete
   - Related element screenshot: baseline/structure-content-type-article-fields__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-type-article-fields__default__light__dropbutton-wrapper.png
   - Related page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/types/manage/article/fields/node.article.comment" title="Edit field settings." class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:1100}" data-once="ajax">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: absolute; overflow-y: a
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]`
   - Text sample: EditList additional actions Delete
   - Related element screenshot: candidate/structure-content-type-article-fields__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-content-type-article-fields__default__light__dropbutton-wrapper.png
   - Related page screenshot: candidate-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-fields__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple open" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/types/manage/article/fields/node.article.body" title="Edit field settings." class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:1100}" data-once="ajax">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: fixed; left: 1127.36p
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
