# Admin Theme (dark) Structure Content View - Button style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Button** on **Structure Content View** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views/view/content
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/views/view/content
3. Inspect selector: button, input[type="submit"], .button
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 7.7%
- lineHeight: -11.1%
- paddingY: 100.0%
- paddingX: 100.0%
- width: 100.0%
- height: 100.0%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_1jxw8wr9LSzHFCJwU8jtTj7WpFAe3qYSFZfYuljAXf0.css
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_1jxw8wr9LSzHFCJwU8jtTj7WpFAe3qYSFZfYuljAXf0.css?delta=0&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: button, input, optgroup, select, textarea
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_1jxw8wr9LSzHFCJwU8jtTj7WpFAe3qYSFZfYuljAXf0.css?delta=0&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: button, input
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_1jxw8wr9LSzHFCJwU8jtTj7WpFAe3qYSFZfYuljAXf0.css?delta=0&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: button, select
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_1jxw8wr9LSzHFCJwU8jtTj7WpFAe3qYSFZfYuljAXf0.css?delta=0&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: button
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

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
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-view-content__default__dark__page.png
- Candidate page screenshot: candidate-pages/structure-view-content__default__dark__page.png


- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-view-content__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-view-content__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/div[2]/div[1]/nav[1]/div[1]/ul[1]/li[2]/div[1]/button[1]`
   - Text sample: Extend Content
   - Related page screenshot: baseline-pages/structure-view-content__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-view-content__default__dark__page.png

```html
<button class="toolbar-icon toolbar-handle" style="opacity: 0;"><span class="action">Extend</span> <span class="label">Content</span></button>
```

2. XPath: `/html[1]/body[1]/div[1]/nav[1]/div[2]/div[1]/nav[1]/div[1]/ul[1]/li[2]/div[2]/button[1]`
   - Text sample: Extend Content
   - Related page screenshot: baseline-pages/structure-view-content__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-view-content__default__dark__page.png

```html
<button class="toolbar-icon toolbar-handle" style=""><span class="action">Extend</span> <span class="label">Content</span></button>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[1]/div[1]/button[1]`
   - Text sample: Collapse sidebar
   - Related page screenshot: candidate-pages/structure-view-content__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-view-content__default__dark__page.png

```html
<button data-drupal-selector="admin-toolbar-mobile-trigger" aria-expanded="true" aria-controls="admin-toolbar" type="button" data-component-id="navigation:toolbar-button" data-index-text="e" data-icon-text="Ex" class="toolbar-button toolbar-button--icon--burger toolbar-button--small-offset admin-toolbar-control-bar__burger" data-once="admin-toolbar-trigger"> <svg fill="none" viewBox="0 0 18 14" class="toolbar-button__icon" width="20" height="20" aria-hidden="true"> <path stroke="#55565B" stroke-width="2" d="M0 1h18M0 7h18M0 13h18"></path> </svg> <span class="toolbar-button__label" data-toolbar-text="">Collapse sidebar</span> </button>
```

2. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[1]/div[1]/button[1]`
   - Text sample: Back
   - Related page screenshot: candidate-pages/structure-view-content__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-view-content__default__dark__page.png

```html
<button data-toolbar-back-control="" tabindex="-1" data-component-id="navigation:toolbar-button" data-index-text="b" data-icon-text="Ba" class="toolbar-button toolbar-button--icon--arrow-left admin-toolbar__back-button"> <svg viewBox="0 0 16 16" class="toolbar-button__icon" width="20" height="20" aria-hidden="true"> <path d="M14.2501 7.99994c0 .19892-.079.38968-.2197.53033-.1406.14066-.3314.21967-.5303.21967H4.3126l3.22 3.21936c.1409.1409.22005.332.22005.5313 0 .1992-.07915.3903-.22005.5312-.14089.1409-.33199.2201-.53125.2201-.19925 0-.39035-.0792-.53125-.2201l-4.5-4.49998c-.06992-.06968-.12539-.15247-.16325-.24364-.03785-.09116-.05734-.1889-.05734-.28761 0-.09871.01949-.19645.05734-.28762.03786-.09116.09333-.17395.16325-.24363l4.5-4.5c.06977-.06977.15259-.12511.24374-.16286.09115-.03776.1
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
