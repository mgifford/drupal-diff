# Admin Theme (dark + light) Structure Content View - Table Header Cell style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Vertical padding is significantly higher: 24.0px vs 16.0px (+50.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Table Header Cell** on **Structure Content View** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingY: 50.0%
- dark: paddingY: 50.0%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views/view/content
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/views/view/content
3. Inspect selector: table thead th
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingY: 50.0%
- dark: paddingY: 50.0%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: th
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: table th
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: th.select-all
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: table th)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: table th)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.tabledrag
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
- Baseline element screenshot: baseline/structure-view-content__default__light__table-header.png
- Candidate element screenshot: candidate/structure-view-content__default__light__table-header.png
- Baseline page screenshot: baseline-pages/structure-view-content__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-view-content__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-view-content__default__light__table-header.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-view-content__default__light__table-header.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-view-content__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-view-content__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[2]/form[1]/div[4]/div[2]/div[3]/div[1]/div[2]/div[1]/form[1]/table[1]/thead[1]/tr[1]/th[1]`
   - Related element screenshot: baseline/structure-view-content__default__light__table-header.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-view-content__default__light__table-header.png
   - Related page screenshot: baseline-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-view-content__default__light__page.png

```html
<th class="select-all views-field views-field-node-bulk-form gin--sticky-bulk-select" scope="col" style="width: 53px;"> <input type="checkbox" class="form-checkbox form-boolean form-boolean--type-checkbox" title="Select all rows in this table" style=""> </th>
```

2. XPath: `//*[@id="view-title-table-column--g7DHE6AWF_I"]`
   - Text sample: Title
   - Related element screenshot: baseline/structure-view-content__default__light__table-header.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-view-content__default__light__table-header.png
   - Related page screenshot: baseline-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-view-content__default__light__page.png

```html
<th id="view-title-table-column--g7DHE6AWF_I" class="sortable-heading views-field views-field-title" scope="col" style="width: 179.484px;"> <a href="/admin/structure/views/view/content/preview/page_1?_wrapper_format=drupal_ajax&amp;order=title&amp;sort=asc" title="sort by Title" rel="nofollow" data-once="views-ajax">Title</a></th>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[2]/form[1]/div[4]/div[2]/div[3]/div[1]/div[2]/div[1]/form[1]/table[1]/thead[1]/tr[1]/th[1]`
   - Related element screenshot: candidate/structure-view-content__default__light__table-header.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-view-content__default__light__table-header.png
   - Related page screenshot: candidate-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-view-content__default__light__page.png

```html
<th class="select-all views-field views-field-node-bulk-form gin--sticky-bulk-select" scope="col" style="width: 53px;"> <input type="checkbox" class="form-checkbox form-boolean form-boolean--type-checkbox" title="Select all rows in this table" style=""> </th>
```

2. XPath: `//*[@id="view-title-table-column--UJNBJmpthpE"]`
   - Text sample: Title
   - Related element screenshot: candidate/structure-view-content__default__light__table-header.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-view-content__default__light__table-header.png
   - Related page screenshot: candidate-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-view-content__default__light__page.png

```html
<th id="view-title-table-column--UJNBJmpthpE" class="sortable-heading views-field views-field-title" scope="col" style="width: 195.844px;"> <a href="/admin/structure/views/view/content/preview/page_1?_wrapper_format=drupal_ajax&amp;order=title&amp;sort=asc" title="sort by Title" rel="nofollow" data-once="views-ajax">Title</a></th>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
