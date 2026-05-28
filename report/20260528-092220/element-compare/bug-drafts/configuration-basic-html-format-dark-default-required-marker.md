# Admin Theme (dark) Configuration Basic HTML Format - Required Marker (*) style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Required Marker (*)** on **Configuration Basic HTML Format** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config/content/formats/manage/basic_html
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/config/content/formats/manage/basic_html
3. Inspect selector: label.form-required, .form-required
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: 1906.2%

## Likely CSS Sources
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: .form-item__label
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/form.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/form.pcss.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: .form-item__label)

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
- Baseline element screenshot: baseline/config-text-format-basic-html__default__dark__required-marker.png
- Candidate element screenshot: candidate/config-text-format-basic-html__default__dark__required-marker.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/config-text-format-basic-html__default__dark__required-marker.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-text-format-basic-html__default__dark__required-marker.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/label[1]`
   - Text sample: Name

```html
<label for="edit-name" class="form-item__label js-form-required form-required">Name</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[2]/label[1]`
   - Text sample: Machine-readable name

```html
<label class="is-disabled form-item__label js-form-required form-required" for="edit-format">Machine-readable name</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/label[1]`
   - Text sample: Name

```html
<label for="edit-name" class="form-item__label js-form-required form-required">Name</label>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[2]/label[1]`
   - Text sample: Machine-readable name

```html
<label class="is-disabled form-item__label js-form-required form-required" for="edit-format">Machine-readable name</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
