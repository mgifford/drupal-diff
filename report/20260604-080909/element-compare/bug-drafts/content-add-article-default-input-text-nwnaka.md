# Admin Theme (dark + light) Content Add Article - Text Input style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Horizontal padding is noticeably higher: 36.0px vs 32.5px (+10.8%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Text Input** on **Content Add Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingX: 10.8%
- dark: paddingX: 10.8%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/node/add/article
2. Open candidate page: http://drupal-12.ddev.site/node/add/article
3. Inspect selector: input[type="text"], input.form-text
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingX: 10.8%
- dark: paddingX: 10.8%

## Likely CSS Sources
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_rp-gYXyeBg44InJtY65oLmSffmoLIOG3K7rOApD1fCA.css?delta=0&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: button, input, optgroup, select, textarea
- http://drupal-12.ddev.site/sites/default/files/css/css_rp-gYXyeBg44InJtY65oLmSffmoLIOG3K7rOApD1fCA.css?delta=0&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: button, input
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: input.form-autocomplete, input.form-text, input.form-tel, input.form-email, input.form-url, input.form-search, input.form-number, input.form-color, input.form-file, textarea.form-textarea, select.form-select
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: input, optgroup
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: .form-element
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/print.css (score: 11; selectors: input.form-autocomplete, input.form-text, input.form-tel, input.form-email)
- core/themes/default_admin/css/base/print.pcss.css (score: 11; selectors: input.form-autocomplete, input.form-text, input.form-tel, input.form-email)
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
- Baseline element screenshot: baseline/content-add-article__default__light__input-text.png
- Candidate element screenshot: candidate/content-add-article__default__light__input-text.png
- Baseline page screenshot: baseline-pages/content-add-article__default__light__page.png
- Candidate page screenshot: candidate-pages/content-add-article__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__input-text.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__input-text.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `//*[@id="edit-title-0-value"]`
   - Related element screenshot: baseline/content-add-article__default__light__input-text.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__input-text.png
   - Related page screenshot: baseline-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png

```html
<input class="js-text-full text-full form-text required form-element form-element--type-text form-element--api-textfield" data-drupal-selector="edit-title-0-value" type="text" id="edit-title-0-value" name="title[0][value]" value="" size="60" maxlength="255" placeholder="" required="required" style="">
```

2. XPath: `//*[@id="edit-field-tags-target-id"]`
   - Related element screenshot: baseline/content-add-article__default__light__input-text.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__input-text.png
   - Related page screenshot: baseline-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png

```html
<input data-drupal-selector="edit-field-tags-target-id" aria-describedby="edit-field-tags-target-id--description" class="form-autocomplete form-text form-element form-element--type-text form-element--api-entity-autocomplete ui-autocomplete-input" data-autocomplete-path="/entity_reference_autocomplete/taxonomy_term/default%3Ataxonomy_term/6biOMHxkR3bQ7OLor_-WnX6s_pZT45M-LnwO696TQR4" type="text" id="edit-field-tags-target-id" name="field_tags[target_id]" size="60" maxlength="1024" placeholder="" data-once="autocomplete claroAutoComplete" autocomplete="off" style="">
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="edit-title-0-value"]`
   - Related element screenshot: candidate/content-add-article__default__light__input-text.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__input-text.png
   - Related page screenshot: candidate-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png

```html
<input class="js-text-full text-full form-text required form-element form-element--type-text form-element--api-textfield" data-drupal-selector="edit-title-0-value" type="text" id="edit-title-0-value" name="title[0][value]" value="" size="60" maxlength="255" placeholder="" required="required" style="">
```

2. XPath: `//*[@id="edit-field-tags-target-id"]`
   - Related element screenshot: candidate/content-add-article__default__light__input-text.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__input-text.png
   - Related page screenshot: candidate-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png

```html
<input data-drupal-selector="edit-field-tags-target-id" aria-describedby="edit-field-tags-target-id--description" class="form-autocomplete form-text form-element form-element--type-text form-element--api-entity-autocomplete ui-autocomplete-input" data-autocomplete-path="/entity_reference_autocomplete/taxonomy_term/default%3Ataxonomy_term/Jwanurkqm4pc8NooT0EiDMlOhm2D_2-bNmZlzdyLi8w" type="text" id="edit-field-tags-target-id" name="field_tags[target_id]" size="60" maxlength="1024" placeholder="" data-once="autocomplete claroAutoComplete" autocomplete="off" style="">
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
