# Admin Theme (light) Structure Content Type Article - Required Marker (*) style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Required Marker (*)** on **Structure Content Type Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/types/manage/article
3. Inspect selector: label.form-required, .form-required
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: 929.5%

## Likely CSS Sources
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOgzAIRX_I2k8y2DLDhtAgNWZfv5oZjdvrucA9JBXHzStwzFYLcJ9OEpjktXRJDWPSuaig-NILrDSBk0oIrsojWBiru8p39LgDT9huIBOwTje0F4EhBMOF3njLVjSn1CwcxkNC1GbgfTDjAyr7AHkmiZfRT7DrOZU_WoYm3V1rkdrPJq31Yh-1km3_ :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOgzAIRX_I2k8y2DLDhtAgNWZfv5oZjdvrucA9JBXHzStwzFYLcJ9OEpjktXRJDWPSuaig-NILrDSBk0oIrsojWBiru8p39LgDT9huIBOwTje0F4EhBMOF3njLVjSn1CwcxkNC1GbgfTDjAyr7AHkmiZfRT7DrOZU_WoYm3V1rkdrPJq31Yh-1km3_ :: .form-item__label
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOgzAIRX_I2k8y2DLDhtAgNWZfv5oZjdvrucA9JBXHzStwzFYLcJ9OEpjktXRJDWPSuaig-NILrDSBk0oIrsojWBiru8p39LgDT9huIBOwTje0F4EhBMOF3njLVjSn1CwcxkNC1GbgfTDjAyr7AHkmiZfRT7DrOZU_WoYm3V1rkdrPJq31Yh-1km3_ :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/form.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/form.pcss.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: .form-item__label)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.textarea-resize
- core/drupal.vertical-tabs
- core/normalize
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-content-type-article__default__light__required-marker.png
- Candidate element screenshot: candidate/structure-content-type-article__default__light__required-marker.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-content-type-article__default__light__required-marker.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article__default__light__required-marker.png
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
<label class="is-disabled form-item__label js-form-required form-required" for="edit-type">Machine-readable name</label>
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
<label class="is-disabled form-item__label js-form-required form-required" for="edit-type">Machine-readable name</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
