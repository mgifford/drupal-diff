# Admin Theme (light) Configuration Basic HTML Format - H2 Heading style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **H2 Heading** on **Configuration Basic HTML Format** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config/content/formats/manage/basic_html
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/config/content/formats/manage/basic_html
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 47.4%
- lineHeight: 47.4%
- paddingX: -100.0%
- width: -88.0%
- height: 20.0%
- count: -4 (-66.7%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_Z-cfWYMDY_4heTxbArGUcBbRz684ANdUAVpzIZoKvgs.css?delta=0&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_STX0jO7bJqgQibgjvp-jVzlBy6sHmUY2FTr5RNMvoDI.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

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
- Baseline element screenshot: 
- Candidate element screenshot: candidate/config-text-format-basic-html__default__light__h2.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-text-format-basic-html__default__light__h2.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/h2[1]`
   - Text sample: Toolbar items

```html
<h2 class="visually-hidden">Toolbar items</h2>
```

2. XPath: `//*[@id="menu--create"]`
   - Text sample: Create Navigation

```html
<h2 id="menu--create" class="toolbar-block__title visually-hidden focusable">Create Navigation</h2>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-777889206"]`
   - Text sample: Administrative sidebar

```html
<h2 id="admin-toolbar__scroll-wrapper-777889206" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
