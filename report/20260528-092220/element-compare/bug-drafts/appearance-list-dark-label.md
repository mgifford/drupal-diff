# Admin Theme (dark) Appearance List - Form Label style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Label** on **Appearance List** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/appearance
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/appearance
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: 152.4%

## Likely CSS Sources
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX9oXT9pYR02RAYNpUb9emu22GS-ngucS1JxfHoDjpu1AjynHwlMcq9TUsOYdC8qKF5ngQdlcFIJwVV5BQtrc1c5Rs87hhU9QCkIBpLwCEVtB6Y3ThveoLEvsO0kMbOu3Vj91aX5Eg7jJfjqncofLUsvNY21SP0nk95qsA8SamIf :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX9oXT9pYR02RAYNpUb9emu22GS-ngucS1JxfHoDjpu1AjynHwlMcq9TUsOYdC8qKF5ngQdlcFIJwVV5BQtrc1c5Rs87hhU9QCkIBpLwCEVtB6Y3ThveoLEvsO0kMbOu3Vj91aX5Eg7jJfjqncofLUsvNY21SP0nk95qsA8SamIf :: .form-item__label
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX9oXT9pYR02RAYNpUb9emu22GS-ngucS1JxfHoDjpu1AjynHwlMcq9TUsOYdC8qKF5ngQdlcFIJwVV5BQtrc1c5Rs87hhU9QCkIBpLwCEVtB6Y3ThveoLEvsO0kMbOu3Vj91aX5Eg7jJfjqncofLUsvNY21SP0nk95qsA8SamIf :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/form.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/form.pcss.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: .form-item__label)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.reset-appearance
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/appearance-list__dark__label.png
- Candidate element screenshot: candidate/appearance-list__dark__label.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/appearance-list__dark__label.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/appearance-list__dark__label.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/details[1]/div[1]/div[1]/label[1]`
   - Text sample: Administration theme

```html
<label for="edit-admin-theme--2" class="form-item__label">Administration theme</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/details[1]/div[1]/div[2]/label[1]`
   - Text sample: Use the administration theme when editing or creating content

```html
<label for="edit-use-admin-theme" class="form-item__label option">Use the administration theme when editing or creating content</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/details[1]/div[1]/div[1]/label[1]`
   - Text sample: Administration theme

```html
<label for="edit-admin-theme--2" class="form-item__label">Administration theme</label>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/details[1]/div[1]/div[2]/label[1]`
   - Text sample: Use the administration theme when editing or creating content

```html
<label for="edit-use-admin-theme" class="form-item__label option">Use the administration theme when editing or creating content</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
