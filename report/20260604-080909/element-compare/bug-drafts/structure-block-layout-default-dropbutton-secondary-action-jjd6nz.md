# Admin Theme (light) Structure Block Layout - Dropbutton Secondary Action Link style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 14.0px vs 0.0px (+100.0%).
- Component width is significantly wider: 119.7px vs 0.0px (+100.0%).
- Component height is significantly taller: 33.0px vs 0.0px (+100.0%).
- Vertical padding is significantly higher: 21.0px vs 0.0px (+100.0%).
- Horizontal padding is significantly higher: 28.0px vs 0.0px (+100.0%).
- Line height is significantly larger: 12.0px vs 0.0px (+100.0%).
- Matched element count is different: 3 more element(s) (+100.0%).

## Summary
Potential CSS regression in **Dropbutton Secondary Action Link** on **Structure Block Layout** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **light**

## Color Mode Coverage
- light: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +3 (100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/block
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/block
3. Inspect selector: .dropbutton-wrapper .dropbutton__items .dropbutton__item a
4. Compare typography, spacing, sizing, and marker presence in: light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 100.0%
- lineHeight: 100.0%
- paddingY: 100.0%
- paddingX: 100.0%
- width: 100.0%
- height: 100.0%
- count: +3 (100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_a39Kjl9771Umzkp1NnjryitYKJfGFFtVrJVHPXBOtOU.css?delta=0&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: a
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: a, .link, button.link
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: a, .link
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/elements.pcss.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/base/print.css (score: 1; selectors: .link)
- core/themes/default_admin/css/base/print.pcss.css (score: 1; selectors: .link)

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
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: candidate/structure-block-layout__default__light__dropbutton-secondary-action.png
- Baseline page screenshot: baseline-pages/structure-block-layout__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-block-layout__default__light__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-block-layout__default__light__dropbutton-secondary-action.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-block-layout__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-block-layout__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
- No matching element captured

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[9]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Disable
   - Related element screenshot: candidate/structure-block-layout__default__light__dropbutton-secondary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-block-layout__default__light__dropbutton-secondary-action.png
   - Related page screenshot: candidate-pages/structure-block-layout__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-block-layout__default__light__page.png

```html
<a href="/admin/structure/block/manage/olivero_account_menu/disable?destination=/admin/structure/block&amp;token=VooxcnQHIl3NJPXbpyc2tYUXLPi-WjWRWEaKujytav8">Disable</a>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[9]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[2]/a[1]`
   - Text sample: Edit menu
   - Related element screenshot: candidate/structure-block-layout__default__light__dropbutton-secondary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-block-layout__default__light__dropbutton-secondary-action.png
   - Related page screenshot: candidate-pages/structure-block-layout__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-block-layout__default__light__page.png

```html
<a href="/admin/structure/menu/manage/account">Edit menu</a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
