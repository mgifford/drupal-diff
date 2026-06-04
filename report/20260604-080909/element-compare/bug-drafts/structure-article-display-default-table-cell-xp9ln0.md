# Admin Theme (dark + light) Structure Article Display - Table Body Cell style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is significantly wider: 358.4px vs 165.8px (+116.2%).
- Component height is noticeably shorter: 61.4px vs 83.1px (-26.2%).
- Horizontal padding is significantly higher: 32.0px vs 20.0px (+60.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Table Body Cell** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingX: 60.0% | width: 116.2% | height: -26.2%
- dark: paddingX: 60.0% | width: 116.2% | height: -26.2%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/types/manage/article/display
3. Inspect selector: table tbody td
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingX: 60.0% | width: 116.2% | height: -26.2%
- dark: paddingX: 60.0% | width: 116.2% | height: -26.2%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_K3X_UsxvN67NGPGstliCFoy_FUmbgb32kuotgvO1xu8.css?delta=0&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: .display-mode-overview-table td
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: td
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))

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
- field_ui/drupal.field_ui_display_overview
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-content-type-article-display__default__light__table-cell.png
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-content-type-article-display__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-type-article-display__default__light__table-cell.png

- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-display__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[1]`
   - Text sample: Image
   - Related element screenshot: baseline/structure-content-type-article-display__default__light__table-cell.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-type-article-display__default__light__table-cell.png
   - Related page screenshot: baseline-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-display__default__light__page.png

```html
<td class="tabledrag-cell"><div class="tabledrag-cell-content js-tabledrag-cell-content"><a href="#" title="Change order" class="tabledrag-handle js-tabledrag-handle tabledrag-handle-y"></a><div class="tabledrag-cell-content__item">Image</div></div></td>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[2]`
   - Text sample: field_image
   - Related element screenshot: baseline/structure-content-type-article-display__default__light__table-cell.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-content-type-article-display__default__light__table-cell.png
   - Related page screenshot: baseline-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-display__default__light__page.png

```html
<td class="priority-medium">field_image</td>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: Default
   - Related page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png

```html
<td>Default</td>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[2]`
   - Related page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png

```html
<td></td>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
