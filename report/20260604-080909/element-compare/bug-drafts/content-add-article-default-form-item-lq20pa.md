# Admin Theme (dark + light) Content Add Article - Form Item Wrapper style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably wider: 599.0px vs 536.1px (+11.7%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Form Item Wrapper** on **Content Add Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: width: 11.7%
- dark: width: 11.7%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/node/add/article
2. Open candidate page: http://drupal-12.ddev.site/node/add/article
3. Inspect selector: .form-item
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: width: 11.7%
- dark: width: 11.7%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/views-exposed-form.css
- core/themes/default_admin/css/components/views-exposed-form.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: .form-item
- http://drupal-12.ddev.site/sites/default/files/css/css_Vi2jUSoeqE__LgwBTtdNPMo0eCiShfq0QGUu5aOMSts.css?delta=1&language=en&theme=default_admin&include=eJyNkdtyhSAMRX_ooE_9HidCdDInJA6E3r6-Yc7Flj60T8jai-DWeMVEpuVlJjEsAjyl0g5f4iO5xL-diTLs-C_TYGU31YV3a8Dzw3iSwCTX6krBOWo-VFCsTgKvtIORSgimyiuUsDYzlZt6nwPNtJ9iNPwR9OlQEELBSp_3TLRk4L5NuEFjWyBlkrm_7bJ5OPCOgr1piMotSx3inXX1AtU-vMM-hGeBIaiU0NsMtHc0On7RY-nuRvxs1p878E_-Dfnucl55_pGTfQH5DsWB :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/views-exposed-form.css (score: 1; selectors: .form-item)
- core/themes/default_admin/css/components/views-exposed-form.pcss.css (score: 1; selectors: .form-item)
- core/themes/default_admin/css/components/views-ui.css (score: 1; selectors: .form-item)
- core/themes/default_admin/css/components/views-ui.pcss.css (score: 1; selectors: .form-item)

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
- Baseline element screenshot: baseline/content-add-article__default__light__form-item.png
- Candidate element screenshot: candidate/content-add-article__default__light__form-item.png
- Baseline page screenshot: baseline-pages/content-add-article__default__light__page.png
- Candidate page screenshot: candidate-pages/content-add-article__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__form-item.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__form-item.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[1]/header[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]`
   - Text sample: Published
   - Related element screenshot: baseline/content-add-article__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__form-item.png
   - Related page screenshot: baseline-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-checkbox form-type--checkbox form-type--boolean js-form-item-status-value form-item--status-value"> <input form="node-article-form" data-drupal-selector="edit-status-value" type="checkbox" id="edit-status-value" name="status[value]" value="1" checked="checked" class="form-checkbox form-boolean form-boolean--type-checkbox" style=""> <label for="edit-status-value" class="form-item__label option">Published</label> </div>
```

2. XPath: `/html[1]/body[1]/div[2]/div[1]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]`
   - Text sample: Title
   - Related element screenshot: baseline/content-add-article__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__form-item.png
   - Related page screenshot: baseline-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-textfield form-type--textfield js-form-item-title-0-value form-item--title-0-value"> <label for="edit-title-0-value" class="form-item__label js-form-required form-required">Title</label> <input class="js-text-full text-full form-text required form-element form-element--type-text form-element--api-textfield" data-drupal-selector="edit-title-0-value" type="text" id="edit-title-0-value" name="title[0][value]" value="" size="60" maxlength="255" placeholder="" required="required" style=""> </div>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]`
   - Text sample: Title
   - Related element screenshot: candidate/content-add-article__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__form-item.png
   - Related page screenshot: candidate-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-textfield form-type--textfield js-form-item-title-0-value form-item--title-0-value"> <label for="edit-title-0-value" class="form-item__label js-form-required form-required">Title</label> <input class="js-text-full text-full form-text required form-element form-element--type-text form-element--api-textfield" data-drupal-selector="edit-title-0-value" type="text" id="edit-title-0-value" name="title[0][value]" value="" size="60" maxlength="255" placeholder="" required="required" style=""> </div>
```

2. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[3]/div[1]/details[1]/div[1]/div[1]`
   - Text sample: Add a new file One file only.100 MB limit.Allowed types: png gif jpg jpeg webp.
   - Related element screenshot: candidate/content-add-article__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__form-item.png
   - Related page screenshot: candidate-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-managed-file form-type--managed-file js-form-item-field-image-0 form-item--field-image-0 help-icon__description-container"> <div class="help-icon"> <label for="edit-field-image-0-upload" id="edit-field-image-0--label" class="form-item__label">Add a new file</label> <button class="help-icon__description-toggle"></button> </div> <div class="help-icon__element-has-description"> <div class="image-widget js-form-managed-file form-managed-file form-managed-file--image is-single has-upload no-value no-meta"> <div class="form-managed-file__main"> <input aria-describedby="edit-field-image-0--description" accept="image/*" data-drupal-selector="edit-field-image-0-upload" type="file" id="edit-field-image-0-upload" name="files[field_image_0]" size="22" cl
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
