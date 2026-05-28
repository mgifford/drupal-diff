# Admin Theme (dark) People Roles - Table Header Cell style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Table Header Cell** on **People Roles** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people/roles
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/people/roles
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
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkNEOwjAIRX9oXT9pYS02VQYNpWb69da4uGz6ei6XcAjChqs1IB-1FaAxfImjzLc6BFH0QZYijGx1ZLjnBJaFnTMRmkHd3MyEP6PbHrjCegAxA0k6IpXyp6pY0RyUgqDAAQ-hwUwYFbZNLLoA5ScOES_QyCaIS2afSOauUO3RLdIp3BVOwdvHcvmhZeqWw17zuT9JuZ-zsxeJl4ES :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkNEOwjAIRX9oXT9pYS02VQYNpWb69da4uGz6ei6XcAjChqs1IB-1FaAxfImjzLc6BFH0QZYijGx1ZLjnBJaFnTMRmkHd3MyEP6PbHrjCegAxA0k6IpXyp6pY0RyUgqDAAQ-hwUwYFbZNLLoA5ScOES_QyCaIS2afSOauUO3RLdIp3BVOwdvHcvmhZeqWw17zuT9JuZ-zsxeJl4ES :: th
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkNEOwjAIRX9oXT9pYS02VQYNpWb69da4uGz6ei6XcAjChqs1IB-1FaAxfImjzLc6BFH0QZYijGx1ZLjnBJaFnTMRmkHd3MyEP6PbHrjCegAxA0k6IpXyp6pY0RyUgqDAAQ-hwUwYFbZNLLoA5ScOES_QyCaIS2afSOauUO3RLdIp3BVOwdvHcvmhZeqWw17zuT9JuZ-zsxeJl4ES :: table th
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkNEOwjAIRX9oXT9pYS02VQYNpWb69da4uGz6ei6XcAjChqs1IB-1FaAxfImjzLc6BFH0QZYijGx1ZLjnBJaFnTMRmkHd3MyEP6PbHrjCegAxA0k6IpXyp6pY0RyUgqDAAQ-hwUwYFbZNLLoA5ScOES_QyCaIS2afSOauUO3RLdIp3BVOwdvHcvmhZeqWw17zuT9JuZ-zsxeJl4ES :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: table th)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: table th)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.reset-appearance
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
- Baseline element screenshot: baseline/people-roles__default__dark__table-header.png
- Candidate element screenshot: candidate/people-roles__default__dark__table-header.png
- Baseline page screenshot: baseline-pages/people-roles__default__dark__page.png
- Candidate page screenshot: candidate-pages/people-roles__default__dark__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people-roles__default__dark__table-header.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people-roles__default__dark__table-header.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/people-roles__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/people-roles__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/thead[1]/tr[1]/th[1]`
   - Text sample: Name
   - Related element screenshot: baseline/people-roles__default__dark__table-header.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people-roles__default__dark__table-header.png
   - Related page screenshot: baseline-pages/people-roles__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/people-roles__default__dark__page.png

```html
<th class="th__name">Name </th>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/thead[1]/tr[1]/th[2]`
   - Text sample: Weight
   - Related element screenshot: baseline/people-roles__default__dark__table-header.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people-roles__default__dark__table-header.png
   - Related page screenshot: baseline-pages/people-roles__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/people-roles__default__dark__page.png

```html
<th class="th__weight tabledrag-hide" style="display: none;">Weight </th>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/thead[1]/tr[1]/th[1]`
   - Text sample: Name
   - Related element screenshot: candidate/people-roles__default__dark__table-header.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people-roles__default__dark__table-header.png
   - Related page screenshot: candidate-pages/people-roles__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/people-roles__default__dark__page.png

```html
<th class="th__name">Name </th>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/thead[1]/tr[1]/th[2]`
   - Text sample: Weight
   - Related element screenshot: candidate/people-roles__default__dark__table-header.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people-roles__default__dark__table-header.png
   - Related page screenshot: candidate-pages/people-roles__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/people-roles__default__dark__page.png

```html
<th class="th__weight tabledrag-hide" style="display: none;">Weight </th>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
