# Admin Theme (dark + light) Structure Article Display - Dropbutton Wrapper style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 16.0px vs 0.0px (+100.0%).
- Component width is significantly wider: 89.5px vs 0.0px (+100.0%).
- Component height is significantly taller: 28.0px vs 0.0px (+100.0%).
- Line height is significantly larger: 24.0px vs 0.0px (+100.0%).
- Matched element count is different: 4 more element(s) (+100.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Wrapper** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: 100.0% | lineHeight: 100.0% | width: 100.0% | height: 100.0% | count: +4 (100.0%)
- dark: fontSize: 100.0% | lineHeight: 100.0% | width: 100.0% | height: 100.0% | count: +4 (100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/types/manage/article/display
3. Inspect selector: .dropbutton-wrapper.dropbutton-multiple, .dropbutton-wrapper
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: 100.0% | lineHeight: 100.0% | width: 100.0% | height: 100.0% | count: +4 (100.0%)
- dark: fontSize: 100.0% | lineHeight: 100.0% | width: 100.0% | height: 100.0% | count: +4 (100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: .dropbutton-wrapper
- http://drupal-12.ddev.site/sites/default/files/css/css_prW8aDUmhHDRNG0vnAMZ0dCA0sBryZffYvzswET1TMM.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- Candidate element screenshot: candidate/structure-content-type-article-display__default__light__dropbutton-wrapper.png
- Baseline page screenshot: baseline-pages/structure-content-type-article-display__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-content-type-article-display__default__light__dropbutton-wrapper.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-content-type-article-display__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
- No matching element captured

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]`
   - Text sample: Manage (Default)
   - Related element screenshot: candidate/structure-content-type-article-display__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-content-type-article-display__default__light__dropbutton-wrapper.png
   - Related page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-single" data-drupal-ajax-container="" data-once="dropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--single dropbutton--gin"> <li class="manage dropbutton__item dropbutton-action"><a href="/admin/structure/types/manage/article/display/default">Manage <span class="visually-hidden">(Default)</span></a></li> </ul></div> </div>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[2]/td[3]/div[1]`
   - Text sample: Manage (RSS)List additional actions Disable (RSS)
   - Related element screenshot: candidate/structure-content-type-article-display__default__light__dropbutton-wrapper.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-content-type-article-display__default__light__dropbutton-wrapper.png
   - Related page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png

```html
<div class="dropbutton-wrapper dropbutton-multiple open" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="manage dropbutton__item dropbutton-action"><a href="/admin/structure/types/manage/article/display/rss">Manage <span class="visually-hidden">(RSS)</span></a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: fixed; left: 1082.39px; right: auto; top: 528.797px;"> <li class="disable dropbutton__item dropbutton-action secondary-act
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
