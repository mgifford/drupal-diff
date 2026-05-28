# Admin Theme (dark) Reports Status - Details Summary style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Matched element count is different: 1 more element(s) (+50.0%).

## Summary
Potential CSS regression in **Details Summary** on **Reports Status** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/reports/status
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/reports/status
3. Inspect selector: details > summary
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- count: +1 (50.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/details.css
- core/themes/default_admin/css/components/details.pcss.css
- core/themes/default_admin/css/components/system-status-report.css
- core/themes/default_admin/css/components/system-status-report.pcss.css
- core/themes/default_admin/css/components/tabs.css
- core/themes/default_admin/css/components/tabs.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: .gin-details__summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: .gin-details[open] > .gin-details__summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: .gin-details__summary--system-status-report
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_RGciPg516mF7_2NWodSROSPMu5G-uRGvZfhyglWW6nQ.css?delta=1&language=en&theme=default_admin&include=eJxlj-EOwjAIhF9oXR9pYR0uRAoNUKM-vTUmzsy_d8d3R1EJvEcHzpv1BjyXr5KY5OpTUcNctDYVlPBZ4EY7BKmkFKq8gqW1R6h8oqJWgemJ04YX6BwLbJUk76zrgHo8Bnc_mQf0ZLwbgtqf2pbROx1nmcZsk_HAD8ofHlizB0T32bCpxQs6gF9z :: .tabs__link, .gin-details__summary, .horizontal-tabs ul.horizontal-tabs-list li.horizontal-tab-button a

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/details.css (score: 1; selectors: .gin-details[open] > .gin-details__summary)
- core/themes/default_admin/css/components/details.pcss.css (score: 1; selectors: .gin-details[open] > .gin-details__summary)
- core/themes/default_admin/css/components/system-status-report.css (score: 1; selectors: .gin-details__summary--system-status-report)
- core/themes/default_admin/css/components/system-status-report.pcss.css (score: 1; selectors: .gin-details__summary--system-status-report)
- core/themes/default_admin/css/components/tabs.css (score: 1; selectors: .tabs__link)
- core/themes/default_admin/css/components/tabs.pcss.css (score: 1; selectors: .tabs__link)

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
- Baseline element screenshot: baseline/reports-status__default__dark__details-summary.png
- Candidate element screenshot: candidate/reports-status__default__dark__details-summary.png
- Baseline page screenshot: baseline-pages/reports-status__default__dark__page.png
- Candidate page screenshot: candidate-pages/reports-status__default__dark__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/reports-status__default__dark__details-summary.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/reports-status__default__dark__details-summary.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/reports-status__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/reports-status__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `//*[@id="warning"]`
   - Text sample: Warnings found
   - Related element screenshot: baseline/reports-status__default__dark__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/reports-status__default__dark__details-summary.png
   - Related page screenshot: baseline-pages/reports-status__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/reports-status__default__dark__page.png

```html
<summary id="warning" class="claro-details__summary claro-details__summary--system-status-report">Warnings found<span class="claro-details__summary-summary"></span></summary>
```

2. XPath: `//*[@id="checked"]`
   - Text sample: Checked
   - Related element screenshot: baseline/reports-status__default__dark__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/reports-status__default__dark__details-summary.png
   - Related page screenshot: baseline-pages/reports-status__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/reports-status__default__dark__page.png

```html
<summary id="checked" class="claro-details__summary claro-details__summary--system-status-report">Checked<span class="claro-details__summary-summary"></span></summary>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="error"]`
   - Text sample: Errors found
   - Related element screenshot: candidate/reports-status__default__dark__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/reports-status__default__dark__details-summary.png
   - Related page screenshot: candidate-pages/reports-status__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/reports-status__default__dark__page.png

```html
<summary id="error" class="gin-details__summary gin-details__summary--system-status-report">Errors found<span class="gin-details__summary-summary"></span></summary>
```

2. XPath: `//*[@id="warning"]`
   - Text sample: Warnings found
   - Related element screenshot: candidate/reports-status__default__dark__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/reports-status__default__dark__details-summary.png
   - Related page screenshot: candidate-pages/reports-status__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/reports-status__default__dark__page.png

```html
<summary id="warning" class="gin-details__summary gin-details__summary--system-status-report">Warnings found<span class="gin-details__summary-summary"></span></summary>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
