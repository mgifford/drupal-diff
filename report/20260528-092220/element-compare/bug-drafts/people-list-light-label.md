# Admin Theme (light) People List - Form Label style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Label** on **People List** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: 99.8%
- height: -60.9%

## Likely CSS Sources
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFFywzAIRC9kWUfKYIl4aBFoEErTnr5Km0lixz98vGWBJak4Xr0Dx2y9As_pQQKTfLYpqWFMWqoKirdZ4EIrOKmE4Kq8gIWlu6v8t97nwAdcNyATsK5bZFoPrORYxvLmG2rY0APUimAgCTeiw8JDZ0x-wNXuVNQKMP3glPEMnf0EuZDElXUZgZt_j8zrTnwG3gm39E71jdbT-Mn0tEUaLzUZ57yMuhB-tfhX56K5M_4CUTqaOw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFFywzAIRC9kWUfKYIl4aBFoEErTnr5Km0lixz98vGWBJak4Xr0Dx2y9As_pQQKTfLYpqWFMWqoKirdZ4EIrOKmE4Kq8gIWlu6v8t97nwAdcNyATsK5bZFoPrORYxvLmG2rY0APUimAgCTeiw8JDZ0x-wNXuVNQKMP3glPEMnf0EuZDElXUZgZt_j8zrTnwG3gm39E71jdbT-Mn0tEUaLzUZ57yMuhB-tfhX56K5M_4CUTqaOw :: .form-item__label
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFFywzAIRC9kWUfKYIl4aBFoEErTnr5Km0lixz98vGWBJak4Xr0Dx2y9As_pQQKTfLYpqWFMWqoKirdZ4EIrOKmE4Kq8gIWlu6v8t97nwAdcNyATsK5bZFoPrORYxvLmG2rY0APUimAgCTeiw8JDZ0x-wNXuVNQKMP3glPEMnf0EuZDElXUZgZt_j8zrTnwG3gm39E71jdbT-Mn0tEUaLzUZ57yMuhB-tfhX56K5M_4CUTqaOw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- core/drupal.item-list
- core/drupal.reset-appearance
- core/drupal.tableselect
- core/drupal.tablesort
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- views/views.module

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/people-list__light__label.png
- Candidate element screenshot: candidate/people-list__light__label.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people-list__light__label.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people-list__light__label.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/label[1]`
   - Text sample: Name or email contains

```html
<label for="edit-user" class="form-item__label">Name or email contains</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/form[1]/div[2]/label[1]`
   - Text sample: Status

```html
<label for="edit-status" class="form-item__label">Status</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/label[1]`
   - Text sample: Name or email contains

```html
<label for="edit-user" class="form-item__label">Name or email contains</label>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/form[1]/div[2]/label[1]`
   - Text sample: Status

```html
<label for="edit-status" class="form-item__label">Status</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
