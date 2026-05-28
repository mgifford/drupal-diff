# Admin Theme (dark) People Permissions - Form Label style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Label** on **People Permissions** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people/permissions
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people/permissions
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: 42.9%
- height: -96.0%

## Likely CSS Sources
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_97R8GJLnGADk-L0BPqJsWBZ1D2ijBQOg0XyHM32QKeE.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOgzAIhF_I2kcyWJkhQ2goXbY9_ep0c3H_yB3HdyQVx7tX4DhZzcB9-iqBSa6lS2oYky5ZBcVLL3CjGZxUQnBVHsHCWN1VttX9jmFBD5AzgoEk3ExRW4Dpid2EF6jsA0wLSZxZx0Ys_mjQ-WQexJOx4p3yn5qHVqo7YpHaTyat1c-pWtA-Zde5f6dfS3xq5Q :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_97R8GJLnGADk-L0BPqJsWBZ1D2ijBQOg0XyHM32QKeE.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOgzAIhF_I2kcyWJkhQ2goXbY9_ep0c3H_yB3HdyQVx7tX4DhZzcB9-iqBSa6lS2oYky5ZBcVLL3CjGZxUQnBVHsHCWN1VttX9jmFBD5AzgoEk3ExRW4Dpid2EF6jsA0wLSZxZx0Ys_mjQ-WQexJOx4p3yn5qHVqo7YpHaTyat1c-pWtA-Zde5f6dfS3xq5Q :: .form-item__label
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_97R8GJLnGADk-L0BPqJsWBZ1D2ijBQOg0XyHM32QKeE.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOgzAIhF_I2kcyWJkhQ2goXbY9_ep0c3H_yB3HdyQVx7tX4DhZzcB9-iqBSa6lS2oYky5ZBcVLL3CjGZxUQnBVHsHCWN1VttX9jmFBD5AzgoEk3ExRW4Dpid2EF6jsA0wLSZxZx0Ys_mjQ-WQexJOx4p3yn5qHVqo7YpHaTyat1c-pWtA-Zde5f6dfS3xq5Q :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- user/drupal.user.admin

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/people-permissions__default__dark__label.png
- Candidate element screenshot: candidate/people-permissions__default__dark__label.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people-permissions__default__dark__label.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people-permissions__default__dark__label.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[2]/div[1]/label[1]`
   - Text sample: Filter

```html
<label for="edit-text" class="form-item__label">Filter</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[3]/div[1]/table[1]/tbody[1]/tr[2]/td[2]/div[1]/label[1]`
   - Text sample: Anonymous user: View official announcements related to Drupal

```html
<label for="edit-anonymous-access-announcements" class="form-item__label visually-hidden">Anonymous user: View official announcements related to Drupal</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[2]/div[1]/label[1]`
   - Text sample: Filter

```html
<label for="edit-text" class="form-item__label">Filter</label>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[3]/div[1]/table[1]/tbody[1]/tr[2]/td[2]/div[1]/label[1]`
   - Text sample: Anonymous user: View official announcements related to Drupal

```html
<label for="edit-anonymous-access-announcements" class="form-item__label visually-hidden">Anonymous user: View official announcements related to Drupal</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
