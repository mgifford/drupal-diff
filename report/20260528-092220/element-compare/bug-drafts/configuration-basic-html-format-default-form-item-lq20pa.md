# Admin Theme (dark + light) Configuration Basic HTML Format - Form Item Wrapper style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component height is noticeably taller: 321.3px vs 248.4px (+29.3%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Form Item Wrapper** on **Configuration Basic HTML Format** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: height: 29.3%
- dark: height: 29.3%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config/content/formats/manage/basic_html
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/config/content/formats/manage/basic_html
3. Inspect selector: .form-item
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: height: 29.3%
- dark: height: 29.3%

## Likely CSS Sources
- core/themes/default_admin/css/components/views-exposed-form.css
- core/themes/default_admin/css/components/views-exposed-form.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: .form-item
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/views-exposed-form.css (score: 1; selectors: .form-item)
- core/themes/default_admin/css/components/views-exposed-form.pcss.css (score: 1; selectors: .form-item)
- core/themes/default_admin/css/components/views-ui.css (score: 1; selectors: .form-item)
- core/themes/default_admin/css/components/views-ui.pcss.css (score: 1; selectors: .form-item)

## Candidate Aggregate Libraries (decoded include= token)
- ckeditor5/internal.admin
- ckeditor5/internal.admin.alignment
- ckeditor5/internal.admin.basic
- ckeditor5/internal.admin.blockquote
- ckeditor5/internal.admin.codeBlock
- ckeditor5/internal.admin.essentials
- ckeditor5/internal.admin.fullscreen
- ckeditor5/internal.admin.heading
- ckeditor5/internal.admin.horizontalLine
- ckeditor5/internal.admin.image
- ckeditor5/internal.admin.indent
- ckeditor5/internal.admin.language
- ckeditor5/internal.admin.link
- ckeditor5/internal.admin.list
- ckeditor5/internal.admin.removeFormat
- ckeditor5/internal.admin.showBlocks
- ckeditor5/internal.admin.sourceEditing
- ckeditor5/internal.admin.specialCharacters
- ckeditor5/internal.admin.style
- ckeditor5/internal.admin.table
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.tabledrag
- core/drupal.textarea-resize
- core/normalize
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/config-text-format-basic-html__default__light__form-item.png
- Candidate element screenshot: candidate/config-text-format-basic-html__default__light__form-item.png
- Baseline page screenshot: baseline-pages/config-text-format-basic-html__default__light__page.png
- Candidate page screenshot: candidate-pages/config-text-format-basic-html__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/config-text-format-basic-html__default__light__form-item.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-text-format-basic-html__default__light__form-item.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/config-text-format-basic-html__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/config-text-format-basic-html__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[6]`
   - Text sample: Filter processing order Show row weights Limit allowed HTML tags and correct fau
   - Related element screenshot: baseline/config-text-format-basic-html__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/config-text-format-basic-html__default__light__form-item.png
   - Related page screenshot: baseline-pages/config-text-format-basic-html__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/config-text-format-basic-html__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-table form-type--table js-form-item- form-item--"> <label for="edit-order" class="form-item__label">Filter processing order</label> <div class="layer-wrapper gin-layer-wrapper"> <div class="tabledrag-toggle-weight-wrapper" data-drupal-selector="tabledrag-toggle-weight-wrapper"> <button type="button" class="link action-link tabledrag-toggle-weight" data-drupal-selector="tabledrag-toggle-weight"><span class="action-link action-link--extrasmall tabledrag-toggle-weight action-link--icon-show">Show row weights</span></button> </div><table id="filter-order" data-drupal-selector="edit-order" data-striping="1" class="draggable-table" data-once="tabledrag"> <tbody> <tr class="draggable odd" data-drupal-selector="edit-filter-html" data-once="claroTable
```

2. XPath: `//*[@id="filter-settings-wrapper"]`
   - Text sample: Filter settings Limit allowed HTML tags and correct faulty HTMLEnabled(active ta
   - Related element screenshot: baseline/config-text-format-basic-html__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/config-text-format-basic-html__default__light__form-item.png
   - Related page screenshot: baseline-pages/config-text-format-basic-html__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/config-text-format-basic-html__default__light__page.png

```html
<div id="filter-settings-wrapper" class="js-form-item form-item js-form-type-vertical-tabs form-type--vertical-tabs js-form-item- form-item--" data-once="maintainActiveVerticalTab"> <label for="edit-filter-settings" class="form-item__label">Filter settings</label> <div class="vertical-tabs clearfix"><ul class="vertical-tabs__menu"><li class="vertical-tabs__menu-item is-selected first" tabindex="-1"><a href="#edit-filters-filter-html-settings" class="vertical-tabs__menu-link"><span class="vertical-tabs__menu-link-content"><strong class="vertical-tabs__menu-item-title">Limit allowed HTML tags and correct faulty HTML</strong><span class="vertical-tabs__menu-link-summary">Enabled</span></span><span id="active-vertical-tab" class="visually-hidden">(active tab)</span></a></li><li class="vertical
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[6]`
   - Text sample: Filter processing order Show row weights Limit allowed HTML tags and correct fau
   - Related element screenshot: candidate/config-text-format-basic-html__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-text-format-basic-html__default__light__form-item.png
   - Related page screenshot: candidate-pages/config-text-format-basic-html__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/config-text-format-basic-html__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-table form-type--table js-form-item- form-item--"> <label for="edit-order" class="form-item__label">Filter processing order</label> <div class="layer-wrapper gin-layer-wrapper"> <div class="tabledrag-toggle-weight-wrapper" data-drupal-selector="tabledrag-toggle-weight-wrapper"> <button type="button" class="link action-link tabledrag-toggle-weight" data-drupal-selector="tabledrag-toggle-weight"><span class="action-link action-link--extrasmall tabledrag-toggle-weight action-link--icon-show">Show row weights</span></button> </div><table id="filter-order" data-drupal-selector="edit-order" data-striping="1" class="draggable-table" data-once="tabledrag"> <tbody> <tr class="draggable odd" data-drupal-selector="edit-filter-html" data-once="claroTable
```

2. XPath: `//*[@id="filter-settings-wrapper"]`
   - Text sample: Filter settings Limit allowed HTML tags and correct faulty HTMLEnabled(active ta
   - Related element screenshot: candidate/config-text-format-basic-html__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-text-format-basic-html__default__light__form-item.png
   - Related page screenshot: candidate-pages/config-text-format-basic-html__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/config-text-format-basic-html__default__light__page.png

```html
<div id="filter-settings-wrapper" class="js-form-item form-item js-form-type-vertical-tabs form-type--vertical-tabs js-form-item- form-item--" data-once="maintainActiveVerticalTab"> <label for="edit-filter-settings" class="form-item__label">Filter settings</label> <div class="vertical-tabs clearfix"><ul class="vertical-tabs__menu"><li class="vertical-tabs__menu-item is-selected first" tabindex="-1"><a href="#edit-filters-filter-html-settings" class="vertical-tabs__menu-link"><span class="vertical-tabs__menu-link-content"><strong class="vertical-tabs__menu-item-title">Limit allowed HTML tags and correct faulty HTML</strong><span class="vertical-tabs__menu-link-summary">Enabled</span></span><span id="active-vertical-tab" class="visually-hidden">(active tab)</span></a></li><li class="vertical
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
