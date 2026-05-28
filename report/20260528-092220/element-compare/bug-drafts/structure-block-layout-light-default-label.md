# Admin Theme (light) Structure Block Layout - Form Label style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Label** on **Structure Block Layout** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/block
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure/block
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: -98.4%
- height: -98.9%

## Likely CSS Sources
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_sI3bEWIp6mimNm2uhCgIp5ySxxrqJgLdZIHVZzUNPFU.css?delta=0&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: .form-item__label
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
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
- Candidate element screenshot: candidate/structure-block-layout__default__light__label.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-block-layout__default__light__label.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-block-layout__default__light__label.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[3]/div[1]/label[1]`
   - Text sample: Region for Site branding block

```html
<label for="edit-blocks-olivero-site-branding-region" class="form-item__label visually-hidden js-form-required form-required">Region for Site branding block</label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[4]/div[1]/label[1]`
   - Text sample: Weight for Site branding block

```html
<label for="edit-blocks-olivero-site-branding-weight" class="form-item__label visually-hidden">Weight for Site branding block</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[3]/div[1]/label[1]`
   - Text sample: Region for Site branding block

```html
<label for="edit-blocks-olivero-site-branding-region" class="form-item__label visually-hidden js-form-required form-required">Region for Site branding block</label>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[4]/div[1]/label[1]`
   - Text sample: Weight for Site branding block

```html
<label for="edit-blocks-olivero-site-branding-weight" class="form-item__label visually-hidden">Weight for Site branding block</label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
