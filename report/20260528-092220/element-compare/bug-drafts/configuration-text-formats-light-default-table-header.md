# Admin Theme (light) Configuration Text Formats - Table Header Cell style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Table Header Cell** on **Configuration Text Formats** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config/content/formats
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/config/content/formats
3. Inspect selector: table thead th
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- height: 13.2%

## Likely CSS Sources
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: th
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: table th
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: table th)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: table th)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.item-list
- core/drupal.tabledrag
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/config-text-formats__default__light__table-header.png
- Candidate element screenshot: candidate/config-text-formats__default__light__table-header.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/config-text-formats__default__light__table-header.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-text-formats__default__light__table-header.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/thead[1]/tr[1]/th[1]`
   - Text sample: Name

```html
<th class="th__name">Name </th>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/thead[1]/tr[1]/th[2]`
   - Text sample: Text editor

```html
<th class="th__text-editor">Text editor </th>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/thead[1]/tr[1]/th[1]`
   - Text sample: Name

```html
<th class="th__name">Name </th>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/thead[1]/tr[1]/th[2]`
   - Text sample: Text editor

```html
<th class="th__text-editor">Text editor </th>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
