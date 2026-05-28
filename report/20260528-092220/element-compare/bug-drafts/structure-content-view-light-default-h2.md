# Admin Theme (light) Structure Content View - H2 Heading style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is noticeably larger: 28.0px vs 21.3px (+31.8%).
- Component width is significantly wider: 262.5px vs 135.1px (+94.3%).
- Component height is significantly taller: 9.8px vs 5.3px (+85.8%).
- Horizontal padding is significantly (less): 0.0px vs 5.6px (-100.0%).
- Line height is noticeably larger: 36.4px vs 27.6px (+31.8%).
- Matched element count is different: 4 fewer element(s) (-50.0%).

## Summary
Potential CSS regression in **H2 Heading** on **Structure Content View** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views/view/content
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/views/view/content
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 31.8%
- lineHeight: 31.8%
- paddingX: -100.0%
- width: 94.3%
- height: 85.8%
- count: -4 (-50.0%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_1jxw8wr9LSzHFCJwU8jtTj7WpFAe3qYSFZfYuljAXf0.css?delta=0&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

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
- Baseline element screenshot: 
- Candidate element screenshot: candidate/structure-view-content__default__light__h2.png
- Baseline page screenshot: baseline-pages/structure-view-content__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-view-content__default__light__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-view-content__default__light__h2.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-view-content__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-view-content__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/h2[1]`
   - Text sample: Toolbar items
   - Related page screenshot: baseline-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-view-content__default__light__page.png

```html
<h2 class="visually-hidden">Toolbar items</h2>
```

2. XPath: `//*[@id="menu--create"]`
   - Text sample: Create Navigation
   - Related page screenshot: baseline-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-view-content__default__light__page.png

```html
<h2 id="menu--create" class="toolbar-block__title visually-hidden focusable">Create Navigation</h2>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-334026341"]`
   - Text sample: Administrative sidebar
   - Related element screenshot: candidate/structure-view-content__default__light__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-view-content__default__light__h2.png
   - Related page screenshot: candidate-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-view-content__default__light__page.png

```html
<h2 id="admin-toolbar__scroll-wrapper-334026341" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb
   - Related element screenshot: candidate/structure-view-content__default__light__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-view-content__default__light__h2.png
   - Related page screenshot: candidate-pages/structure-view-content__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-view-content__default__light__page.png

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
