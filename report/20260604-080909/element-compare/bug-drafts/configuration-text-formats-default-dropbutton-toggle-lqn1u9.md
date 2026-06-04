# Admin Theme (dark + light) Configuration Text Formats - Dropbutton Toggle Button style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is noticeably smaller: 14.0px vs 16.0px (-12.5%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Toggle Button** on **Configuration Text Formats** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: -12.5%
- dark: fontSize: -12.5%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config/content/formats
2. Open candidate page: http://drupal-12.ddev.site/admin/config/content/formats
3. Inspect selector: .dropbutton-wrapper .dropbutton__toggle, .dropbutton-toggle button.dropbutton__toggle
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: -12.5%
- dark: fontSize: -12.5%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_zHfq3R7JR_dMWh9tZx698mXSUVD-GWdhgEz0LBzQ190.css?delta=0&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: button, input, optgroup, select, textarea
- http://drupal-12.ddev.site/sites/default/files/css/css_zHfq3R7JR_dMWh9tZx698mXSUVD-GWdhgEz0LBzQ190.css?delta=0&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: button, input
- http://drupal-12.ddev.site/sites/default/files/css/css_zHfq3R7JR_dMWh9tZx698mXSUVD-GWdhgEz0LBzQ190.css?delta=0&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: button, select
- http://drupal-12.ddev.site/sites/default/files/css/css_zHfq3R7JR_dMWh9tZx698mXSUVD-GWdhgEz0LBzQ190.css?delta=0&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: .dropbutton__toggle
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: .no-touchevents .dropbutton--extrasmall .dropbutton__toggle
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: button
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
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
- Baseline element screenshot: 
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/config-text-formats__default__light__page.png
- Candidate page screenshot: candidate-pages/config-text-formats__default__light__page.png


- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/config-text-formats__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/config-text-formats__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[6]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions
   - Related page screenshot: baseline-pages/config-text-formats__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/config-text-formats__default__light__page.png

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[6]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions
   - Related page screenshot: baseline-pages/config-text-formats__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/config-text-formats__default__light__page.png

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[6]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions
   - Related page screenshot: candidate-pages/config-text-formats__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/config-text-formats__default__light__page.png

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[6]/div[1]/div[1]/ul[1]/li[2]/button[1]`
   - Text sample: List additional actions
   - Related page screenshot: candidate-pages/config-text-formats__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/config-text-formats__default__light__page.png

```html
<button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
