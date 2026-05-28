# Admin Theme (dark) Structure Block Layout - Form Item Wrapper style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Item Wrapper** on **Structure Block Layout** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/block
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure/block
3. Inspect selector: .form-item
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- height: 13.8%

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
- Baseline element screenshot: baseline/structure-block-layout__dark__form-item.png
- Candidate element screenshot: candidate/structure-block-layout__dark__form-item.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-block-layout__dark__form-item.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-block-layout__dark__form-item.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[3]/div[1]`
   - Text sample: Region for Site branding block Header Primary menu Secondary menu Hero (full wid

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-blocks-olivero-site-branding-region form-item--blocks-olivero-site-branding-region form-item--no-label"> <label for="edit-blocks-olivero-site-branding-region" class="form-item__label visually-hidden js-form-required form-required">Region for Site branding block</label> <select class="block-region-select block-region-header form-select required form-element form-element--type-select form-element--extrasmall" data-drupal-selector="edit-blocks-olivero-site-branding-region" id="edit-blocks-olivero-site-branding-region" name="blocks[olivero_site_branding][region]" required="required" data-once="block-region-select"> <option value="header" selected="selected">Header</option> <option value="primary_menu">Primary
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[4]/div[1]`
   - Text sample: Weight for Site branding block -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-blocks-olivero-site-branding-weight form-item--blocks-olivero-site-branding-weight form-item--no-label"> <label for="edit-blocks-olivero-site-branding-weight" class="form-item__label visually-hidden">Weight for Site branding block</label> <select class="block-weight block-weight-header form-select form-element form-element--type-select form-element--extrasmall" data-drupal-selector="edit-blocks-olivero-site-branding-weight" id="edit-blocks-olivero-site-branding-weight" name="blocks[olivero_site_branding][weight]"> <option value="-7">-7</option> <option value="-6">-6</option> <option value="-5">-5</option> <option value="-4">-4</option> <option value="-3">-3</option> <option value="-2">-2</option> <option 
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[3]/div[1]`
   - Text sample: Region for Site branding block Header Primary menu Secondary menu Hero (full wid

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-blocks-olivero-site-branding-region form-item--blocks-olivero-site-branding-region form-item--no-label"> <label for="edit-blocks-olivero-site-branding-region" class="form-item__label visually-hidden js-form-required form-required">Region for Site branding block</label> <select class="block-region-select block-region-header form-select required form-element form-element--type-select form-element--extrasmall" data-drupal-selector="edit-blocks-olivero-site-branding-region" id="edit-blocks-olivero-site-branding-region" name="blocks[olivero_site_branding][region]" required="required"> <option value="header" selected="selected">Header</option> <option value="primary_menu">Primary menu</option> <option value="se
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[4]/div[1]`
   - Text sample: Weight for Site branding block -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-blocks-olivero-site-branding-weight form-item--blocks-olivero-site-branding-weight form-item--no-label"> <label for="edit-blocks-olivero-site-branding-weight" class="form-item__label visually-hidden">Weight for Site branding block</label> <select class="block-weight block-weight-header form-select form-element form-element--type-select form-element--extrasmall" data-drupal-selector="edit-blocks-olivero-site-branding-weight" id="edit-blocks-olivero-site-branding-weight" name="blocks[olivero_site_branding][weight]"> <option value="-6">-6</option> <option value="-5">-5</option> <option value="-4">-4</option> <option value="-3">-3</option> <option value="-2">-2</option> <option value="-1">-1</option> <option 
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
