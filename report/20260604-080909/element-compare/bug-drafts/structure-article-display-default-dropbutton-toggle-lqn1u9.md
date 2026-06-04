# Admin Theme (dark + light) Structure Article Display - Dropbutton Toggle Button style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 14.0px vs 0.0px (+100.0%).
- Component width is significantly wider: 25.0px vs 0.0px (+100.0%).
- Component height is significantly taller: 24.0px vs 0.0px (+100.0%).
- Vertical padding is significantly higher: 2.0px vs 0.0px (+100.0%).
- Horizontal padding is significantly higher: 12.0px vs 0.0px (+100.0%).
- Line height is significantly larger: 18.0px vs 0.0px (+100.0%).
- Matched element count is different: 2 more element(s) (+100.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Toggle Button** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +2 (100.0%)
- dark: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +2 (100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/types/manage/article/display
3. Inspect selector: .dropbutton-wrapper .dropbutton__toggle, .dropbutton-toggle button.dropbutton__toggle
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +2 (100.0%)
- dark: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +2 (100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_K3X_UsxvN67NGPGstliCFoy_FUmbgb32kuotgvO1xu8.css?delta=0&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: button, input, optgroup, select, textarea
- http://drupal-12.ddev.site/sites/default/files/css/css_K3X_UsxvN67NGPGstliCFoy_FUmbgb32kuotgvO1xu8.css?delta=0&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: button, input
- http://drupal-12.ddev.site/sites/default/files/css/css_K3X_UsxvN67NGPGstliCFoy_FUmbgb32kuotgvO1xu8.css?delta=0&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: button, select
- http://drupal-12.ddev.site/sites/default/files/css/css_K3X_UsxvN67NGPGstliCFoy_FUmbgb32kuotgvO1xu8.css?delta=0&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: .page-wrapper :focus, .ui-dialog :focus
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: .dropbutton__toggle
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: .no-touchevents .dropbutton--extrasmall .dropbutton__toggle
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: button
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/dropbutton.css (score: 1; selectors: .no-touchevents .dropbutton--extrasmall .dropbutton__toggle)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 1; selectors: .no-touchevents .dropbutton--extrasmall .dropbutton__toggle)

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
- Baseline element screenshot: 
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-content-type-article-display__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png


- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-display__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
- No matching element captured

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[2]/td[3]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions
   - Related page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[3]/td[3]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions
   - Related page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
