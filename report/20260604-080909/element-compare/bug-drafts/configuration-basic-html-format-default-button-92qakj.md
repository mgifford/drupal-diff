# Admin Theme (dark + light) Configuration Basic HTML Format - Button style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Vertical padding is slightly higher: 20.0px vs 18.3px (+9.1%).
- Horizontal padding is noticeably higher: 27.5px vs 22.0px (+25.0%).
- Matched element count is different: 2 more element(s) (+33.3%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Button** on **Configuration Basic HTML Format** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingY: 9.1% | paddingX: 25.0% | count: +2 (33.3%)
- dark: paddingY: 9.1% | paddingX: 25.0% | count: +2 (33.3%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config/content/formats/manage/basic_html
2. Open candidate page: http://drupal-12.ddev.site/admin/config/content/formats/manage/basic_html
3. Inspect selector: button, input[type="submit"], .button
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingY: 9.1% | paddingX: 25.0% | count: +2 (33.3%)
- dark: paddingY: 9.1% | paddingX: 25.0% | count: +2 (33.3%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_BaMiikvJgJptzWGjkHxcluBrvMhqv-XjHvCQaesLBxY.css?delta=0&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: button, input, optgroup, select, textarea
- http://drupal-12.ddev.site/sites/default/files/css/css_BaMiikvJgJptzWGjkHxcluBrvMhqv-XjHvCQaesLBxY.css?delta=0&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: button, input
- http://drupal-12.ddev.site/sites/default/files/css/css_BaMiikvJgJptzWGjkHxcluBrvMhqv-XjHvCQaesLBxY.css?delta=0&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: button, select
- http://drupal-12.ddev.site/sites/default/files/css/css_BaMiikvJgJptzWGjkHxcluBrvMhqv-XjHvCQaesLBxY.css?delta=0&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-12.ddev.site/sites/default/files/css/css_H8uSYPsO3aWhG8-JBW2ngxJypB_M8g_HGQNyuBAaj2k.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_H8uSYPsO3aWhG8-JBW2ngxJypB_M8g_HGQNyuBAaj2k.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: button
- http://drupal-12.ddev.site/sites/default/files/css/css_H8uSYPsO3aWhG8-JBW2ngxJypB_M8g_HGQNyuBAaj2k.css?delta=1&language=en&theme=default_admin&include=eJx9kUFuw0AIRS8Ux6teoFW76h0iPEMcFAwuwyRtTt9xUslqK7Mc3p8PfNIZM7naU0_iaAK8hzyR7NIG2APTKBOKb0sGKJQCzJrOH1UdtzVJMz4vum0JltKmIOCyrTlW5pIMMVjohJBJxkCgRjcVB34nCWamCcYISw5TY5Cxhg5MEuTBVAJ3w0kv-KY2QaAqJ73eYw8yLVot4WuDYWplxtSO83ICg9RI5OhfHKztMCy4XQA_vQL32erc6FrplmRaAzXsk06zSku67AUuNIKTSte5Kg9g3VDdVR7SH5-7fzYYf1ebNRhCZ1johg8mS368PDMeobIf7iP2a6c_YGnrNP-rzoc2zG79tu681r4BMSljIQ :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))

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
- Baseline element screenshot: baseline/config-text-format-basic-html__default__light__button.png
- Candidate element screenshot: candidate/config-text-format-basic-html__default__light__button.png
- Baseline page screenshot: baseline-pages/config-text-format-basic-html__default__light__page.png
- Candidate page screenshot: candidate-pages/config-text-format-basic-html__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/config-text-format-basic-html__default__light__button.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/config-text-format-basic-html__default__light__button.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/config-text-format-basic-html__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/config-text-format-basic-html__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[2]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Create
   - Related element screenshot: baseline/config-text-format-basic-html__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/config-text-format-basic-html__default__light__button.png
   - Related page screenshot: baseline-pages/config-text-format-basic-html__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/config-text-format-basic-html__default__light__page.png

```html
<button class="toolbar-link toolbar-link--has-icon toolbar-link--create"> <span class="toolbar-link__action">Extend</span> <span class="toolbar-link__label">Create</span> </button>
```

2. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[4]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Structure
   - Related element screenshot: baseline/config-text-format-basic-html__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/config-text-format-basic-html__default__light__button.png
   - Related page screenshot: baseline-pages/config-text-format-basic-html__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/config-text-format-basic-html__default__light__page.png

```html
<button class="toolbar-link toolbar-link--has-icon toolbar-link--system-admin-structure"> <span class="toolbar-link__action">Extend</span> <span class="toolbar-link__label">Structure</span> </button>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[1]/div[2]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Create
   - Related element screenshot: candidate/config-text-format-basic-html__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/config-text-format-basic-html__default__light__button.png
   - Related page screenshot: candidate-pages/config-text-format-basic-html__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/config-text-format-basic-html__default__light__page.png

```html
<button aria-expanded="false" aria-controls="navigation-link--navigationcreate-1035006399" data-toolbar-popover-control="" data-has-safe-triangle="" data-component-id="navigation:toolbar-button" data-index-text="c" data-icon-text="Cr" class="toolbar-button toolbar-button--icon--navigation-create toolbar-button--expand--side toolbar-button--collapsible toolbar-popover__control" data-once="safe-triangle"> <svg width="20" height="20" viewBox="0 0 24 24" fill="none" class="toolbar-button__icon" aria-hidden="true"> <path d="M12 2.25C10.0716 2.25 8.18657 2.82183 6.58319 3.89317C4.97982 4.96452 3.73013 6.48726 2.99218 8.26884C2.25422 10.0504 2.06114 12.0108 2.43735 13.9021C2.81355 15.7934 3.74215 17.5307 5.10571 18.8943C6.46928 20.2579 8.20656 21.1865 10.0979 21.5627C11.9892 21.9389 13.9496 21.74
```

2. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[1]/div[3]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Structure
   - Related element screenshot: candidate/config-text-format-basic-html__default__light__button.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/config-text-format-basic-html__default__light__button.png
   - Related page screenshot: candidate-pages/config-text-format-basic-html__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/config-text-format-basic-html__default__light__page.png

```html
<button aria-expanded="false" aria-controls="navigation-link--systemadmin-structure-1782520279" data-toolbar-popover-control="" data-has-safe-triangle="" data-component-id="navigation:toolbar-button" data-index-text="s" data-icon-text="St" class="toolbar-button toolbar-button--icon--system-admin-structure toolbar-button--expand--side toolbar-button--collapsible toolbar-popover__control" data-once="safe-triangle"> <svg width="20" height="20" viewBox="0 0 24 24" fill="none" class="toolbar-button__icon" aria-hidden="true"> <path d="M15.75 10.5H20.25C20.6478 10.5 21.0294 10.342 21.3107 10.0607C21.592 9.77936 21.75 9.39782 21.75 9V4.5C21.75 4.10218 21.592 3.72064 21.3107 3.43934C21.0294 3.15804 20.6478 3 20.25 3H15.75C15.3522 3 14.9706 3.15804 14.6893 3.43934C14.408 3.72064 14.25 4.10218 14.25 
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
