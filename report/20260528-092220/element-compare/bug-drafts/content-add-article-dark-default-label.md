# Admin Theme (dark) Content Add Article - Form Label style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Label** on **Content Add Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/node/add/article
2. Open candidate page: http://drupal-12-git.ddev.site:8080/node/add/article
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- paddingX: -100.0%
- width: 307.4%

## Likely CSS Sources
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: .form-item__label
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/form.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/form.pcss.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: .form-item__label)

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
- filter/drupal.filter
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/content-add-article__default__dark__label.png
- Candidate element screenshot: candidate/content-add-article__default__dark__label.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/content-add-article__default__dark__label.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/content-add-article__default__dark__label.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[1]/header[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/label[1]`
   - Text sample: Published

```html
<label for="edit-status-value" class="form-item__label option">Published</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[1]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]/label[1]`
   - Text sample: Title

```html
<label for="edit-title-0-value" class="form-item__label js-form-required form-required">Title</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]/label[1]`
   - Text sample: Title

```html
<label for="edit-title-0-value" class="form-item__label js-form-required form-required">Title</label>
```

2. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/label[1]`
   - Text sample: Summary

```html
<label for="edit-body-0-summary" class="form-item__label">Summary</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
