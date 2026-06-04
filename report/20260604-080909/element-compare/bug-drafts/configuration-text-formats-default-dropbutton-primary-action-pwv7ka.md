# Admin Theme (dark + light) Configuration Text Formats - Dropbutton Primary Action Link style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Horizontal padding is noticeably lower: 24.8px vs 32.8px (-24.4%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Primary Action Link** on **Configuration Text Formats** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingX: -24.4%
- dark: paddingX: -24.4%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config/content/formats
2. Open candidate page: http://drupal-12.ddev.site/admin/config/content/formats
3. Inspect selector: .dropbutton-wrapper .dropbutton__item.dropbutton-action > a
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingX: -24.4%
- dark: paddingX: -24.4%

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_zHfq3R7JR_dMWh9tZx698mXSUVD-GWdhgEz0LBzQ190.css?delta=0&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: a
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: a, .link, button.link
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: a, .link
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button
- http://drupal-12.ddev.site/sites/default/files/css/css_UDvix0nqpeibYZFnrT7qEEPx3faVK3Sajh9iQbetSlI.css?delta=1&language=en&theme=default_admin&include=eJxtkGsOwjAMgy-0rkea0gdVIE2qNkWD01PExLTB38-x48QLa1y1A9lQewGa_ZcYQr61yUuN1ksuwpG1zQx3TKAobIyKkINqXFcV_oxuOXCF9QACAkk6oirljxU15rG86YEqOIqhwhbBUjMQPuMU4gU66QIhI9tE4kb3po9RP53EvftJeB-iWH5oWcZ5026zOL5TedTZ2QsCnH5K :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/elements.pcss.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/components/dropbutton.css (score: 2; selectors: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 2; selectors: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/base/print.css (score: 1; selectors: .link)
- core/themes/default_admin/css/base/print.pcss.css (score: 1; selectors: .link)

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
- Baseline element screenshot: baseline/config-text-formats__default__light__dropbutton-primary-action.png
- Candidate element screenshot: candidate/config-text-formats__default__light__dropbutton-primary-action.png
- Baseline page screenshot: baseline-pages/config-text-formats__default__light__page.png
- Candidate page screenshot: candidate-pages/config-text-formats__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/config-text-formats__default__light__dropbutton-primary-action.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/config-text-formats__default__light__dropbutton-primary-action.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/config-text-formats__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/config-text-formats__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[6]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Configure
   - Related element screenshot: baseline/config-text-formats__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/config-text-formats__default__light__dropbutton-primary-action.png
   - Related page screenshot: baseline-pages/config-text-formats__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/config-text-formats__default__light__page.png

```html
<a href="/admin/config/content/formats/manage/basic_html?destination=/admin/config/content/formats" aria-label="Edit Basic HTML">Configure</a>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[6]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Configure
   - Related element screenshot: baseline/config-text-formats__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/config-text-formats__default__light__dropbutton-primary-action.png
   - Related page screenshot: baseline-pages/config-text-formats__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/config-text-formats__default__light__page.png

```html
<a href="/admin/config/content/formats/manage/restricted_html?destination=/admin/config/content/formats" aria-label="Edit Restricted HTML">Configure</a>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[6]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Configure
   - Related element screenshot: candidate/config-text-formats__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/config-text-formats__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/config-text-formats__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/config-text-formats__default__light__page.png

```html
<a href="/admin/config/content/formats/manage/basic_html?destination=/admin/config/content/formats" aria-label="Edit Basic HTML">Configure</a>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[6]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Configure
   - Related element screenshot: candidate/config-text-formats__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/config-text-formats__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/config-text-formats__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/config-text-formats__default__light__page.png

```html
<a href="/admin/config/content/formats/manage/restricted_html?destination=/admin/config/content/formats" aria-label="Edit Restricted HTML">Configure</a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
