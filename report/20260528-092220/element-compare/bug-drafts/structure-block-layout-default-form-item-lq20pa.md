# Admin Theme (dark + light) Structure Block Layout - Form Item Wrapper style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component height is noticeably taller: 28.0px vs 24.6px (+13.8%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Form Item Wrapper** on **Structure Block Layout** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: height: 13.8%
- dark: height: 13.8%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/block
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/block
3. Inspect selector: .form-item
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: height: 13.8%
- dark: height: 13.8%

## Likely CSS Sources
- core/themes/default_admin/css/components/views-exposed-form.css
- core/themes/default_admin/css/components/views-exposed-form.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: .form-item
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/views-exposed-form.css (score: 1; selectors: .form-item)
- core/themes/default_admin/css/components/views-exposed-form.pcss.css (score: 1; selectors: .form-item)
- core/themes/default_admin/css/components/views-ui.css (score: 1; selectors: .form-item)
- core/themes/default_admin/css/components/views-ui.pcss.css (score: 1; selectors: .form-item)

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
- Baseline element screenshot: baseline/structure-block-layout__default__light__form-item.png
- Candidate element screenshot: candidate/structure-block-layout__default__light__form-item.png
- Baseline page screenshot: baseline-pages/structure-block-layout__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-block-layout__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-block-layout__default__light__form-item.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-block-layout__default__light__form-item.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-block-layout__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-block-layout__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[16]/td[3]/div[1]`
   - Text sample: Region for Primary admin actions block Header Primary menu Secondary menu Hero (
   - Related element screenshot: baseline/structure-block-layout__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-block-layout__default__light__form-item.png
   - Related page screenshot: baseline-pages/structure-block-layout__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-block-layout__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-blocks-olivero-primary-admin-actions-region form-item--blocks-olivero-primary-admin-actions-region form-item--no-label"> <label for="edit-blocks-olivero-primary-admin-actions-region" class="form-item__label visually-hidden js-form-required form-required">Region for Primary admin actions block</label> <select class="block-region-select block-region-highlighted form-select required form-element form-element--type-select form-element--extrasmall" data-drupal-selector="edit-blocks-olivero-primary-admin-actions-region" id="edit-blocks-olivero-primary-admin-actions-region" name="blocks[olivero_primary_admin_actions][region]" required="required" data-once="block-region-select"> <option value="header">Header</opt
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[17]/td[3]/div[1]`
   - Text sample: Region for Status messages block Header Primary menu Secondary menu Hero (full w
   - Related element screenshot: baseline/structure-block-layout__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-block-layout__default__light__form-item.png
   - Related page screenshot: baseline-pages/structure-block-layout__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-block-layout__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-blocks-olivero-messages-region form-item--blocks-olivero-messages-region form-item--no-label"> <label for="edit-blocks-olivero-messages-region" class="form-item__label visually-hidden js-form-required form-required">Region for Status messages block</label> <select class="block-region-select block-region-highlighted form-select required form-element form-element--type-select form-element--extrasmall" data-drupal-selector="edit-blocks-olivero-messages-region" id="edit-blocks-olivero-messages-region" name="blocks[olivero_messages][region]" required="required" data-once="block-region-select"> <option value="header">Header</option> <option value="primary_menu">Primary menu</option> <option value="secondary_men
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[3]/div[1]`
   - Text sample: Region for Site branding block Header Primary menu Secondary menu Hero (full wid
   - Related element screenshot: candidate/structure-block-layout__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-block-layout__default__light__form-item.png
   - Related page screenshot: candidate-pages/structure-block-layout__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-block-layout__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-blocks-olivero-site-branding-region form-item--blocks-olivero-site-branding-region form-item--no-label"> <label for="edit-blocks-olivero-site-branding-region" class="form-item__label visually-hidden js-form-required form-required">Region for Site branding block</label> <select class="block-region-select block-region-header form-select required form-element form-element--type-select form-element--extrasmall" data-drupal-selector="edit-blocks-olivero-site-branding-region" id="edit-blocks-olivero-site-branding-region" name="blocks[olivero_site_branding][region]" required="required" data-once="block-region-select"> <option value="header" selected="selected">Header</option> <option value="primary_menu">Primary
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[6]/td[3]/div[1]`
   - Text sample: Region for Main navigation block Header Primary menu Secondary menu Hero (full w
   - Related element screenshot: candidate/structure-block-layout__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-block-layout__default__light__form-item.png
   - Related page screenshot: candidate-pages/structure-block-layout__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-block-layout__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-blocks-olivero-main-menu-region form-item--blocks-olivero-main-menu-region form-item--no-label"> <label for="edit-blocks-olivero-main-menu-region" class="form-item__label visually-hidden js-form-required form-required">Region for Main navigation block</label> <select class="block-region-select block-region-primary_menu form-select required form-element form-element--type-select form-element--extrasmall" data-drupal-selector="edit-blocks-olivero-main-menu-region" id="edit-blocks-olivero-main-menu-region" name="blocks[olivero_main_menu][region]" required="required" data-once="block-region-select"> <option value="header">Header</option> <option value="primary_menu" selected="selected">Primary menu</option> <
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
