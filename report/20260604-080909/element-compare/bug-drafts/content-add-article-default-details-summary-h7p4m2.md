# Admin Theme (light) Content Add Article - Details Summary style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 360.3px vs 410.5px (-12.2%).
- Component height is significantly taller: 179.5px vs 78.7px (+128.2%).
- Horizontal padding is noticeably lower: 55.5px vs 70.0px (-20.7%).
- Matched element count is different: 2 more element(s) (+33.3%).

## Summary
Potential CSS regression in **Details Summary** on **Content Add Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **light**

## Color Mode Coverage
- light: paddingX: -20.7% | width: -12.2% | height: 128.2% | count: +2 (33.3%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/node/add/article
2. Open candidate page: http://drupal-12.ddev.site/node/add/article
3. Inspect selector: details > summary
4. Compare typography, spacing, sizing, and marker presence in: light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- paddingX: -20.7%
- width: -12.2%
- height: 128.2%
- count: +2 (33.3%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_rp-gYXyeBg44InJtY65oLmSffmoLIOG3K7rOApD1fCA.css?delta=0&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: summary
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: summary
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))

## Candidate Aggregate Libraries (decoded include= token)
- ckeditor5/internal.drupal.ckeditor5
- ckeditor5/internal.drupal.ckeditor5.image
- ckeditor5/internal.drupal.ckeditor5.table
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.autocomplete
- core/drupal.textarea-resize
- core/normalize
- default_admin/edit_form
- default_admin/form-two-columns
- default_admin/global-styling
- default_admin/navigation
- default_admin/sidebar
- default_admin/tooltip
- default_admin/top_bar
- file/drupal.file
- filter/drupal.filter
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/content-add-article__default__light__details-summary.png
- Candidate element screenshot: candidate/content-add-article__default__light__details-summary.png
- Baseline page screenshot: baseline-pages/content-add-article__default__light__page.png
- Candidate page screenshot: candidate-pages/content-add-article__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__details-summary.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__details-summary.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[1]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[3]/div[1]/details[1]/summary[1]`
   - Text sample: Image
   - Related element screenshot: baseline/content-add-article__default__light__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__details-summary.png
   - Related page screenshot: baseline-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png

```html
<summary role="button" aria-expanded="true" class="claro-details__summary">Image<span class="required-mark"></span> <span class="claro-details__summary-summary"></span></summary>
```

2. XPath: `/html[1]/body[1]/div[2]/div[1]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/details[1]/summary[1]`
   - Text sample: Menu settings Not in menu
   - Related element screenshot: baseline/content-add-article__default__light__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__details-summary.png
   - Related page screenshot: baseline-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png

```html
<summary role="button" aria-controls="edit-menu" aria-expanded="false" class="claro-details__summary claro-details__summary--accordion-item">Menu settings<span class="required-mark"></span> <span class="claro-details__summary-summary">Not in menu</span></summary>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[2]/div[1]/div[1]/div[2]/div[2]/details[1]/summary[1]`
   - Text sample: Deprecated function: dirname(): Passing null to parameter #1 ($path) of type str
   - Related element screenshot: candidate/content-add-article__default__light__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__details-summary.png
   - Related page screenshot: candidate-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png

```html
<summary><em class="placeholder">Deprecated function</em>: dirname(): Passing null to parameter #1 ($path) of type string is deprecated in <em class="placeholder">Drupal\Core\Extension\ExtensionPathResolver-&gt;getPath()</em> (line <em class="placeholder">76</em> of <em class="placeholder">core/lib/Drupal/Core/Extension/ExtensionPathResolver.php</em>).<span class="gin-details__summary-summary"></span></summary>
```

2. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[3]/div[1]/details[1]/summary[1]`
   - Text sample: Image
   - Related element screenshot: candidate/content-add-article__default__light__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__details-summary.png
   - Related page screenshot: candidate-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png

```html
<summary role="button" aria-expanded="true" class="gin-details__summary">Image<span class="required-mark"></span> <span class="gin-details__summary-summary"></span></summary>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
