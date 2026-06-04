# Admin Theme (dark + light) Content Add Article - Required Marker (*) style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is significantly wider: 702.0px vs 44.2px (+1488.7%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Required Marker (*)** on **Content Add Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: width: 1488.7%
- dark: width: 1488.7%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/node/add/article
2. Open candidate page: http://drupal-12.ddev.site/node/add/article
3. Inspect selector: label.form-required, .form-required
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: width: 1488.7%
- dark: width: 1488.7%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_Ku18gqCdEdCAs434mQ0gFryfnc-pmzNoz2yFQvpTGmw.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_Ku18gqCdEdCAs434mQ0gFryfnc-pmzNoz2yFQvpTGmw.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: .form-item__label
- http://drupal-12.ddev.site/sites/default/files/css/css_Ku18gqCdEdCAs434mQ0gFryfnc-pmzNoz2yFQvpTGmw.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
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
- Baseline element screenshot: baseline/content-add-article__default__light__required-marker.png
- Candidate element screenshot: candidate/content-add-article__default__light__required-marker.png
- Baseline page screenshot: baseline-pages/content-add-article__default__light__page.png
- Candidate page screenshot: candidate-pages/content-add-article__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__required-marker.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__required-marker.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[1]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]/label[1]`
   - Text sample: Title
   - Related element screenshot: baseline/content-add-article__default__light__required-marker.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/content-add-article__default__light__required-marker.png
   - Related page screenshot: baseline-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-add-article__default__light__page.png

```html
<label for="edit-title-0-value" class="form-item__label js-form-required form-required">Title</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]/label[1]`
   - Text sample: Title
   - Related element screenshot: candidate/content-add-article__default__light__required-marker.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-add-article__default__light__required-marker.png
   - Related page screenshot: candidate-pages/content-add-article__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-add-article__default__light__page.png

```html
<label for="edit-title-0-value" class="form-item__label js-form-required form-required">Title</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
