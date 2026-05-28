# Admin Theme (dark) Content Add Article - Text Input style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Text Input** on **Content Add Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/node/add/article
2. Open candidate page: http://drupal-git.ddev.site:8080/node/add/article
3. Inspect selector: input[type="text"], input.form-text
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: -18.4%

## Likely CSS Sources
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LPhhND5v_oznqKgrvBJp_Z6LHOkAKdPL9_Tg83kCvo8.css?delta=0&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: button, input, optgroup, select, textarea
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LPhhND5v_oznqKgrvBJp_Z6LHOkAKdPL9_Tg83kCvo8.css?delta=0&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: button, input
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: input.form-autocomplete, input.form-text, input.form-tel, input.form-email, input.form-url, input.form-search, input.form-number, input.form-color, input.form-file, textarea.form-textarea, select.form-select
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: input, optgroup
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: .form-element
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/print.css (score: 11; selectors: input.form-autocomplete, input.form-text, input.form-tel, input.form-email)
- core/themes/default_admin/css/base/print.pcss.css (score: 11; selectors: input.form-autocomplete, input.form-text, input.form-tel, input.form-email)

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
- Baseline element screenshot: baseline/content-add-article__default__dark__input-text.png
- Candidate element screenshot: candidate/content-add-article__default__dark__input-text.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/content-add-article__default__dark__input-text.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/content-add-article__default__dark__input-text.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `//*[@id="edit-title-0-value"]`

```html
<input class="js-text-full text-full form-text required form-element form-element--type-text form-element--api-textfield" data-drupal-selector="edit-title-0-value" type="text" id="edit-title-0-value" name="title[0][value]" value="" size="60" maxlength="255" placeholder="" required="required" style="">
```

2. XPath: `//*[@id="edit-field-tags-target-id"]`

```html
<input data-drupal-selector="edit-field-tags-target-id" aria-describedby="edit-field-tags-target-id--description" class="form-autocomplete form-text form-element form-element--type-text form-element--api-entity-autocomplete ui-autocomplete-input" data-autocomplete-path="/entity_reference_autocomplete/taxonomy_term/default%3Ataxonomy_term/6biOMHxkR3bQ7OLor_-WnX6s_pZT45M-LnwO696TQR4" type="text" id="edit-field-tags-target-id" name="field_tags[target_id]" size="60" maxlength="1024" placeholder="" data-once="autocomplete claroAutoComplete" autocomplete="off" style="">
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="edit-title-0-value"]`

```html
<input class="js-text-full text-full form-text required form-element form-element--type-text form-element--api-textfield" data-drupal-selector="edit-title-0-value" type="text" id="edit-title-0-value" name="title[0][value]" value="" size="60" maxlength="255" placeholder="" required="required" style="">
```

2. XPath: `//*[@id="edit-menu-title"]`

```html
<input data-drupal-selector="edit-menu-title" type="text" id="edit-menu-title" name="menu[title]" value="" size="60" maxlength="255" class="form-text form-element form-element--type-text form-element--api-textfield" style="">
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
