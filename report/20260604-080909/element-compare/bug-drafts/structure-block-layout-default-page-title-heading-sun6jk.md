# Admin Theme (dark + light) Structure Block Layout - Page Title Heading (h1) style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 34.0px vs 24.0px (+41.7%).
- Component width is noticeably wider: 184.1px vs 136.6px (+34.8%).
- Component height is significantly taller: 41.0px vs 29.0px (+41.4%).
- Horizontal padding is significantly higher: 8.5px vs 6.0px (+41.7%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Page Title Heading (h1)** on **Structure Block Layout** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: 41.7% | paddingX: 41.7% | width: 34.8% | height: 41.4%
- dark: fontSize: 41.7% | paddingX: 41.7% | width: 34.8% | height: 41.4%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/block
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/block
3. Inspect selector: h1.page-title, .page-title h1, .page-title
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: 41.7% | paddingX: 41.7% | width: 34.8% | height: 41.4%
- dark: fontSize: 41.7% | paddingX: 41.7% | width: 34.8% | height: 41.4%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/page-title.css
- core/themes/default_admin/css/components/page-title.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_a39Kjl9771Umzkp1NnjryitYKJfGFFtVrJVHPXBOtOU.css?delta=0&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: h1
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: h1, .heading-a
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: .page-title
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-a)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-a)
- core/themes/default_admin/css/components/page-title.css (score: 1; selectors: .page-title)
- core/themes/default_admin/css/components/page-title.pcss.css (score: 1; selectors: .page-title)

## Candidate Aggregate Libraries (decoded include= token)
- block/drupal.block.admin
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.dropbutton
- core/normalize
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
Confidence: **medium**

```css
h1 {
  font-size: 24px; /* current ~34px */
  padding-inline: 6px; /* current ~8.5px */
  min-height: 29px; /* current ~41px */
}
```

## Evidence
- Baseline element screenshot: baseline/structure-block-layout__default__light__page-title-heading.png
- Candidate element screenshot: candidate/structure-block-layout__default__light__page-title-heading.png
- Baseline page screenshot: baseline-pages/structure-block-layout__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-block-layout__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-block-layout__default__light__page-title-heading.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-block-layout__default__light__page-title-heading.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-block-layout__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-block-layout__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Block layout
   - Related element screenshot: baseline/structure-block-layout__default__light__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-block-layout__default__light__page-title-heading.png
   - Related page screenshot: baseline-pages/structure-block-layout__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-block-layout__default__light__page.png

```html
<h1 class="page-title">Block layout</h1>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Block layout
   - Related element screenshot: candidate/structure-block-layout__default__light__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-block-layout__default__light__page-title-heading.png
   - Related page screenshot: candidate-pages/structure-block-layout__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-block-layout__default__light__page.png

```html
<h1 class="page-title">Block layout</h1>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
