# Admin Theme (dark + light) Structure Content View - Dropbutton Primary Action Link style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably narrower: 85.1px vs 113.9px (-25.2%).
- Horizontal padding is noticeably lower: 24.8px vs 36.0px (-31.3%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Primary Action Link** on **Structure Content View** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: paddingX: -31.3% | width: -25.2%
- dark: paddingX: -31.3% | width: -25.2%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views/view/content
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/views/view/content
3. Inspect selector: .dropbutton-wrapper .dropbutton__item.dropbutton-action > a
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: paddingX: -31.3% | width: -25.2%
- dark: paddingX: -31.3% | width: -25.2%

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
- http://drupal-12.ddev.site/sites/default/files/css/css_C13qKeDrq4rYIXMP6aIlsLjOWZjz8w_gV_KwrETcEX4.css?delta=0&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: a
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: a, .link, button.link
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: a, .link
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button
- http://drupal-12.ddev.site/sites/default/files/css/css_P0PvSfrEYw5Wj5Jao_56LVTAFIWRNulmp93gF2QVRek.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

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
- core/drupal.tabledrag
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- views_ui/admin.styling

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-view-content__default__light__dropbutton-primary-action.png
- Candidate element screenshot: candidate/structure-view-content__default__light__dropbutton-primary-action.png
- Baseline page screenshot: baseline-pages/structure-view-content__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-view-content__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-view-content__default__light__dropbutton-primary-action.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-view-content__default__light__dropbutton-primary-action.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-view-content__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-view-content__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit view name/description
   - Related element screenshot: baseline/structure-view-content__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-view-content__default__light__dropbutton-primary-action.png
   - Related page screenshot: baseline-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-view-content__default__light__page.png

```html
<a href="/admin/structure/views/nojs/edit-details/content/page_1" class="views-ajax-link" data-once="views-ajax">Edit view name/description</a>
```

2. XPath: `//*[@id="edit-displays-settings-settings-content-tab-content-details-top-actions-path"]`
   - Text sample: View Page
   - Related element screenshot: baseline/structure-view-content__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-view-content__default__light__dropbutton-primary-action.png
   - Related page screenshot: baseline-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-view-content__default__light__page.png

```html
<a href="/admin/content" data-drupal-selector="edit-displays-settings-settings-content-tab-content-details-top-actions-path" id="edit-displays-settings-settings-content-tab-content-details-top-actions-path">View Page</a>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit view name/description
   - Related element screenshot: candidate/structure-view-content__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-view-content__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-view-content__default__light__page.png

```html
<a href="/admin/structure/views/nojs/edit-details/content/page_1" class="views-ajax-link" data-once="views-ajax">Edit view name/description</a>
```

2. XPath: `//*[@id="edit-displays-settings-settings-content-tab-content-details-top-actions-path"]`
   - Text sample: View Page
   - Related element screenshot: candidate/structure-view-content__default__light__dropbutton-primary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-view-content__default__light__dropbutton-primary-action.png
   - Related page screenshot: candidate-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-view-content__default__light__page.png

```html
<a href="/admin/content" data-drupal-selector="edit-displays-settings-settings-content-tab-content-details-top-actions-path" id="edit-displays-settings-settings-content-tab-content-details-top-actions-path">View Page</a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
