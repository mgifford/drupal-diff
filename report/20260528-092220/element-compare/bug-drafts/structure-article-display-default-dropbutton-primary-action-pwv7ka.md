# Admin Theme (dark + light) Structure Article Display - Dropbutton Primary Action Link style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 13.0px vs 0.0px (+100.0%).
- Component width is significantly wider: 69.0px vs 0.0px (+100.0%).
- Component height is significantly taller: 24.0px vs 0.0px (+100.0%).
- Vertical padding is significantly higher: 10.0px vs 0.0px (+100.0%).
- Horizontal padding is significantly higher: 24.0px vs 0.0px (+100.0%).
- Line height is significantly larger: 12.0px vs 0.0px (+100.0%).
- Matched element count is different: 4 more element(s) (+100.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Primary Action Link** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +4 (100.0%)
- dark: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +4 (100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/types/manage/article/display
3. Inspect selector: .dropbutton-wrapper .dropbutton__item.dropbutton-action > a
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +4 (100.0%)
- dark: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +4 (100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_ifV_44lS__Q_b8x5Z0QT00a3hvuGXf8PzI8Rr5bm2D0.css?delta=0&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: a
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: a, .link, button.link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: a, .link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_TwkthHK5fMOLDBR92pYhSmHj4w5qy3QrqmDOnh7ZvMU.css?delta=1&language=en&theme=default_admin&include=eJxlkGEOgzAIRi9U55EabNGwITSVOt3p12VzTveTxwe8EFQMFyvAbcwlAV_ClzRMcptc0Ixt0DGpoNh0EZhpACOVpjFV7iA3XTFTeUc_e-AKywFEAtbhiLKm31HRPALTA13EHgqbhziStANrV30mW6vScGruPqfGS84o_dHkq7LrCTn6QpvLVvtIU2JYvc6YZ8K72w-0VH-TpaZ39gRn8n5W :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- field_ui/drupal.field_ui_display_overview
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: candidate/structure-content-type-article-display__default__light__dropbutton-primary-action.png
- Baseline page screenshot: baseline-pages/structure-content-type-article-display__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-display__default__light__dropbutton-primary-action.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-display__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
- No matching element captured

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Manage (Default)
   - Related element screenshot: candidate/structure-content-type-article-display__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-display__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png

```html
<a href="/admin/structure/types/manage/article/display/default">Manage <span class="visually-hidden">(Default)</span></a>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Enable (Full content)
   - Related element screenshot: candidate/structure-content-type-article-display__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-display__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png

```html
<a href="/admin/structure/types/manage/article/display/full/enable?token=5l20cjdVeQ_CSMAxnjcJmWs4vH0piqUIq1IcEevwgrg">Enable <span class="visually-hidden">(Full content)</span></a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
