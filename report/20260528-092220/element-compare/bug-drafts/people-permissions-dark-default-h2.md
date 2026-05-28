# Admin Theme (dark) People Permissions - H2 Heading style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **H2 Heading** on **People Permissions** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people/permissions
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/people/permissions
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 38.0%
- lineHeight: 38.0%
- paddingX: -100.0%
- width: -86.3%
- height: 16.7%
- count: -4 (-57.1%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_-dexMKJ5QmTrmGlg3YOqjsINZIn3Z2hOWjo28BrDiaI.css?delta=0&language=en&theme=default_admin&include=eJxlj-EOgzAIhF_I2kcyWJkhQ2goXbY9_ep0c3H_yB3HdyQVx7tX4DhZzcB9-iqBSa6lS2oYky5ZBcVLL3CjGZxUQnBVHsHCWN1VttX9jmFBD5AzgoEk3ExRW4Dpid2EF6jsA0wLSZxZx0Ys_mjQ-WQexJOx4p3yn5qHVqo7YpHaTyat1c-pWtA-Zde5f6dfS3xq5Q :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_97R8GJLnGADk-L0BPqJsWBZ1D2ijBQOg0XyHM32QKeE.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOgzAIhF_I2kcyWJkhQ2goXbY9_ep0c3H_yB3HdyQVx7tX4DhZzcB9-iqBSa6lS2oYky5ZBcVLL3CjGZxUQnBVHsHCWN1VttX9jmFBD5AzgoEk3ExRW4Dpid2EF6jsA0wLSZxZx0Ys_mjQ-WQexJOx4p3yn5qHVqo7YpHaTyat1c-pWtA-Zde5f6dfS3xq5Q :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_97R8GJLnGADk-L0BPqJsWBZ1D2ijBQOg0XyHM32QKeE.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOgzAIhF_I2kcyWJkhQ2goXbY9_ep0c3H_yB3HdyQVx7tX4DhZzcB9-iqBSa6lS2oYky5ZBcVLL3CjGZxUQnBVHsHCWN1VttX9jmFBD5AzgoEk3ExRW4Dpid2EF6jsA0wLSZxZx0Ys_mjQ-WQexJOx4p3yn5qHVqo7YpHaTyat1c-pWtA-Zde5f6dfS3xq5Q :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_97R8GJLnGADk-L0BPqJsWBZ1D2ijBQOg0XyHM32QKeE.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOgzAIhF_I2kcyWJkhQ2goXbY9_ep0c3H_yB3HdyQVx7tX4DhZzcB9-iqBSa6lS2oYky5ZBcVLL3CjGZxUQnBVHsHCWN1VttX9jmFBD5AzgoEk3ExRW4Dpid2EF6jsA0wLSZxZx0Ys_mjQ-WQexJOx4p3yn5qHVqo7YpHaTyat1c-pWtA-Zde5f6dfS3xq5Q :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_97R8GJLnGADk-L0BPqJsWBZ1D2ijBQOg0XyHM32QKeE.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOgzAIhF_I2kcyWJkhQ2goXbY9_ep0c3H_yB3HdyQVx7tX4DhZzcB9-iqBSa6lS2oYky5ZBcVLL3CjGZxUQnBVHsHCWN1VttX9jmFBD5AzgoEk3ExRW4Dpid2EF6jsA0wLSZxZx0Ys_mjQ-WQexJOx4p3yn5qHVqo7YpHaTyat1c-pWtA-Zde5f6dfS3xq5Q :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_97R8GJLnGADk-L0BPqJsWBZ1D2ijBQOg0XyHM32QKeE.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOgzAIhF_I2kcyWJkhQ2goXbY9_ep0c3H_yB3HdyQVx7tX4DhZzcB9-iqBSa6lS2oYky5ZBcVLL3CjGZxUQnBVHsHCWN1VttX9jmFBD5AzgoEk3ExRW4Dpid2EF6jsA0wLSZxZx0Ys_mjQ-WQexJOx4p3yn5qHVqo7YpHaTyat1c-pWtA-Zde5f6dfS3xq5Q :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_97R8GJLnGADk-L0BPqJsWBZ1D2ijBQOg0XyHM32QKeE.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOgzAIhF_I2kcyWJkhQ2goXbY9_ep0c3H_yB3HdyQVx7tX4DhZzcB9-iqBSa6lS2oYky5ZBcVLL3CjGZxUQnBVHsHCWN1VttX9jmFBD5AzgoEk3ExRW4Dpid2EF6jsA0wLSZxZx0Ys_mjQ-WQexJOx4p3yn5qHVqo7YpHaTyat1c-pWtA-Zde5f6dfS3xq5Q :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

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
- Baseline element screenshot: 
- Candidate element screenshot: candidate/people-permissions__default__dark__h2.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people-permissions__default__dark__h2.png
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
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-896067187"]`
   - Text sample: Administrative sidebar

```html
<h2 id="admin-toolbar__scroll-wrapper-896067187" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
