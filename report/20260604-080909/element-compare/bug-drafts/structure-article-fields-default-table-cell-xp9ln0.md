# Admin Theme (dark + light) Structure Article Fields - Table Body Cell style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Matched element count is different: 5 fewer element(s) (-62.5%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Table Body Cell** on **Structure Article Fields** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: count: -5 (-62.5%)
- dark: count: -5 (-62.5%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/fields
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/types/manage/article/fields
3. Inspect selector: table tbody td
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: count: -5 (-62.5%)
- dark: count: -5 (-62.5%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: td
- http://drupal-12.ddev.site/sites/default/files/css/css_0VlRsFYKLv_g9i6-7fNyc80yEX6CCWOIm3SafqLoNDM.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))

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
- Baseline element screenshot: baseline/structure-content-type-article-fields__default__light__table-cell.png
- Candidate element screenshot: candidate/structure-content-type-article-fields__default__light__table-cell.png
- Baseline page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-fields__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-type-article-fields__default__light__table-cell.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-content-type-article-fields__default__light__table-cell.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-fields__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: Body body Single
   - Related element screenshot: baseline/structure-content-type-article-fields__default__light__table-cell.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-type-article-fields__default__light__table-cell.png
   - Related page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png

```html
<td><div class="field-label-container"><div class="field-label-wrapper"><span class="field-label-text">Body</span> <span class="field-ui-secondary-text field-machine-name"> body</span> </div> <div class="field-details-container"><span class="field-ui-pill">Single</span> </div> </div> </td>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[2]`
   - Text sample: Text (formatted, long, with summary)
   - Related element screenshot: baseline/structure-content-type-article-fields__default__light__table-cell.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-type-article-fields__default__light__table-cell.png
   - Related page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png

```html
<td class="field-settings-summary-cell"><div class="field-settings-summary-container"><div class="field-type-label">Text (formatted, long, with summary)</div> <div class="field-settings-summary-items"></div> </div> </td>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: Body body Single
   - Related element screenshot: candidate/structure-content-type-article-fields__default__light__table-cell.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-content-type-article-fields__default__light__table-cell.png
   - Related page screenshot: candidate-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-fields__default__light__page.png

```html
<td><div class="field-label-container"><div class="field-label-wrapper"><span class="field-label-text">Body</span> <span class="field-ui-secondary-text field-machine-name"> body</span> </div> <div class="field-details-container"><span class="field-ui-pill">Single</span> </div> </div> </td>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[2]`
   - Text sample: Long text with summary
   - Related element screenshot: candidate/structure-content-type-article-fields__default__light__table-cell.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-content-type-article-fields__default__light__table-cell.png
   - Related page screenshot: candidate-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-fields__default__light__page.png

```html
<td class="field-settings-summary-cell"><div class="field-settings-summary-container"><div class="field-type-label">Long text with summary</div> <div class="field-settings-summary-items"></div> </div> </td>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
