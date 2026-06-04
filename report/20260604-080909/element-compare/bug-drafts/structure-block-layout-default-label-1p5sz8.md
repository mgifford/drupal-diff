# Admin Theme (dark + light) Structure Block Layout - Form Label style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly smaller: 0.0px vs 14.0px (-100.0%).
- Component width is significantly narrower: 0.0px vs 60.9px (-100.0%).
- Component height is significantly shorter: 0.0px vs 92.3px (-100.0%).
- Line height is significantly smaller: 0.0px vs 18.0px (-100.0%).
- Matched element count is different: 8 fewer element(s) (-100.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Form Label** on **Structure Block Layout** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -8 (-100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -8 (-100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/block
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/block
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -8 (-100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -8 (-100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_a39Kjl9771Umzkp1NnjryitYKJfGFFtVrJVHPXBOtOU.css?delta=0&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: .visually-hidden
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: .visually-hidden
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: .form-item__label
- http://drupal-12.ddev.site/sites/default/files/css/css_iZEAMFvvSRGz0OyIksSGV_F_dnmgpJXI36Wk-HxzOKo.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/form.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/form.pcss.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: .form-item__label)

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
- Baseline element screenshot: baseline/structure-block-layout__default__light__label.png
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-block-layout__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-block-layout__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-block-layout__default__light__label.png

- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-block-layout__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-block-layout__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[3]/div[1]/label[1]`
   - Text sample: Region for Site branding block
   - Related element screenshot: baseline/structure-block-layout__default__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-block-layout__default__light__label.png
   - Related page screenshot: baseline-pages/structure-block-layout__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-block-layout__default__light__page.png

```html
<label for="edit-blocks-olivero-site-branding-region" class="form-item__label visually-hidden js-form-required form-required">Region for Site branding block</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[6]/td[3]/div[1]/label[1]`
   - Text sample: Region for Search form (narrow) block
   - Related element screenshot: baseline/structure-block-layout__default__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-block-layout__default__light__label.png
   - Related page screenshot: baseline-pages/structure-block-layout__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-block-layout__default__light__page.png

```html
<label for="edit-blocks-olivero-search-form-narrow-region" class="form-item__label visually-hidden js-form-required form-required">Region for Search form (narrow) block</label>
```

### Drupal 12 with Admin Theme
- No matching element captured

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
