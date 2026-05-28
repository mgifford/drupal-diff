# Admin Theme (dark) Reports Status - H2 Heading style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **H2 Heading** on **Reports Status** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/reports/status
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/reports/status
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 22.7%
- lineHeight: 22.7%
- paddingY: 100.0%
- paddingX: 36.2%
- width: 101.5%
- height: 94.8%
- count: -4 (-50.0%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- system/status.report

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: candidate/reports-status__dark__h2.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/reports-status__dark__h2.png
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
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-777889206"]`
   - Text sample: Administrative sidebar

```html
<h2 id="admin-toolbar__scroll-wrapper-777889206" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
