# Admin Theme (dark) Structure Content View - Form Label style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Label** on **Structure Content View** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views/view/content
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure/views/view/content
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: 150.4%
- height: -63.3%

## Likely CSS Sources
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: .form-item__label
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- core/drupal.dropbutton
- core/drupal.tabledrag
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- views_ui/admin.styling

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-view-content__default__dark__label.png
- Candidate element screenshot: candidate/structure-view-content__default__dark__label.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-view-content__default__dark__label.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-view-content__default__dark__label.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[2]/form[1]/div[1]/label[1]`
   - Text sample: Auto preview

```html
<label for="edit-displays-live-preview" class="form-item__label option">Auto preview</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[2]/form[1]/div[2]/label[1]`
   - Text sample: Preview with contextual filters:

```html
<label for="preview-args" class="form-item__label">Preview with contextual filters:</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[2]/form[1]/div[1]/label[1]`
   - Text sample: Auto preview

```html
<label for="edit-displays-live-preview" class="form-item__label option">Auto preview</label>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[2]/form[1]/div[2]/label[1]`
   - Text sample: Preview with contextual filters:

```html
<label for="preview-args" class="form-item__label">Preview with contextual filters:</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
