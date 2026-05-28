# Admin Theme (light) Configuration Text Formats - Dropbutton Toggle Button style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Toggle Button** on **Configuration Text Formats** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config/content/formats
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/config/content/formats
3. Inspect selector: .dropbutton-wrapper .dropbutton__toggle, .dropbutton-toggle button.dropbutton__toggle
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: -12.5%

## Likely CSS Sources
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_Y2fRQNI2W3fWuksN_OOjRA2OMGffpy-g_o_oDh3cVWc.css?delta=0&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: button, input, optgroup, select, textarea
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_Y2fRQNI2W3fWuksN_OOjRA2OMGffpy-g_o_oDh3cVWc.css?delta=0&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: button, input
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_Y2fRQNI2W3fWuksN_OOjRA2OMGffpy-g_o_oDh3cVWc.css?delta=0&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: button, select
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_Y2fRQNI2W3fWuksN_OOjRA2OMGffpy-g_o_oDh3cVWc.css?delta=0&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: .dropbutton__toggle
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: .no-touchevents .dropbutton--extrasmall .dropbutton__toggle
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: button
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/dropbutton.css (score: 1; selectors: .no-touchevents .dropbutton--extrasmall .dropbutton__toggle)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 1; selectors: .no-touchevents .dropbutton--extrasmall .dropbutton__toggle)

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
- Baseline element screenshot: baseline/config-text-formats__default__light__dropbutton-toggle.png
- Candidate element screenshot: candidate/config-text-formats__default__light__dropbutton-toggle.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/config-text-formats__default__light__dropbutton-toggle.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-text-formats__default__light__dropbutton-toggle.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[6]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[6]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[6]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[6]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
