# Admin Theme (dark + light) Theme Settings (Gin vs Default Admin) - Form Label style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is slightly larger: 13.3px vs 12.5px (+6.0%).
- Component width is significantly wider: 264.9px vs 150.4px (+76.1%).
- Component height is significantly shorter: 17.5px vs 33.9px (-48.4%).
- Horizontal padding is significantly higher: 2.0px vs 1.0px (+100.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Form Label** on **Theme Settings (Gin vs Default Admin)** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: 6.0% | paddingX: 100.0% | width: 76.1% | height: -48.4%
- dark: fontSize: 6.0% | paddingX: 100.0% | width: 76.1% | height: -48.4%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/appearance/settings/gin
2. Open candidate page: http://drupal-12.ddev.site/admin/appearance/settings/default_admin
3. Inspect selector: label
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: 6.0% | paddingX: 100.0% | width: 76.1% | height: -48.4%
- dark: fontSize: 6.0% | paddingX: 100.0% | width: 76.1% | height: -48.4%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_FFhCZvH1Ca0xWC1nPtPd4DCiVcq945Sc1e2nWr0crRo.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_FFhCZvH1Ca0xWC1nPtPd4DCiVcq945Sc1e2nWr0crRo.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: .form-item__label
- http://drupal-12.ddev.site/sites/default/files/css/css_FFhCZvH1Ca0xWC1nPtPd4DCiVcq945Sc1e2nWr0crRo.css?delta=1&language=en&theme=default_admin&include=eJxlzlEKAyEMRdENOXVJQ9RUQmMiMQ5tV1-_WrC_58LjZRXHp0_gWGx24Fv-ysEkjxGyGkZRa8D0xlDwDpP9hNJIYjKEkm22tIXKmtbE8NdaqVsc6L50bOyq7NT_tJ8JLAhcVMFJJdK6aLLO_uwDSLhPRw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/form.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/form.pcss.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.css (score: 1; selectors: .form-item__label)
- core/themes/default_admin/css/components/tables.pcss.css (score: 1; selectors: .form-item__label)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/normalize
- default_admin/breadcrumb
- default_admin/global-styling
- default_admin/settings
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/theme-settings__density-compact__light__label.png
- Candidate element screenshot: candidate/theme-settings__density-compact__light__label.png
- Baseline page screenshot: baseline-pages/theme-settings__density-compact__light__page.png
- Candidate page screenshot: candidate-pages/theme-settings__density-compact__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/theme-settings__density-compact__light__label.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/theme-settings__density-compact__light__label.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/theme-settings__density-compact__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/theme-settings__density-compact__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/details[1]/div[1]/fieldset[5]/div[1]/div[1]/div[1]/label[1]`
   - Text sample: New Drupal Navigation, Test integration New Experimental
   - Related element screenshot: baseline/theme-settings__density-compact__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/theme-settings__density-compact__light__label.png
   - Related page screenshot: baseline-pages/theme-settings__density-compact__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/theme-settings__density-compact__light__page.png

```html
<label for="edit-classic-toolbar-new" class="form-item__label option">New Drupal Navigation, Test integration <span class="gin-new-flag">New</span> <span class="gin-experimental-flag">Experimental</span></label>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/details[1]/div[1]/fieldset[5]/div[1]/div[1]/div[2]/label[1]`
   - Text sample: Sidebar, Vertical Toolbar (Default)
   - Related element screenshot: baseline/theme-settings__density-compact__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/theme-settings__density-compact__light__label.png
   - Related page screenshot: baseline-pages/theme-settings__density-compact__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/theme-settings__density-compact__light__page.png

```html
<label for="edit-classic-toolbar-vertical" class="form-item__label option">Sidebar, Vertical Toolbar (Default)</label>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/details[1]/div[1]/div[1]/label[1]`
   - Text sample: Focus color
   - Related element screenshot: candidate/theme-settings__density-compact__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/theme-settings__density-compact__light__label.png
   - Related page screenshot: candidate-pages/theme-settings__density-compact__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/theme-settings__density-compact__light__page.png

```html
<label for="edit-preset-focus-color" class="form-item__label">Focus color</label>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/details[1]/div[1]/div[2]/label[1]`
   - Text sample: Increase contrast Experimental
   - Related element screenshot: candidate/theme-settings__density-compact__light__label.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/theme-settings__density-compact__light__label.png
   - Related page screenshot: candidate-pages/theme-settings__density-compact__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/theme-settings__density-compact__light__page.png

```html
<label for="edit-high-contrast-mode" class="form-item__label option">Increase contrast <span class="gin-experimental-flag">Experimental</span></label>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
