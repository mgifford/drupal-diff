# Admin Theme (dark) Structure Content View - Dropbutton Secondary Actions List style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Secondary Actions List** on **Structure Content View** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views/view/content
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/views/view/content
3. Inspect selector: .dropbutton-wrapper .dropbutton__items
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- height: 48.2%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: ul
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VyRURFsk5A_J2fvwxi3WuCHV6qALxNseigFoMiH1GzY.css?delta=1&language=en&theme=default_admin&include=eJxtkFESwiAMRC9UypE6oSATTRMGQq2eXtSOtdXf3ezmJaOwhkUrkPW5JqB-_CiGkC-lGyUHO8qUhANr6RlmjKAobIyKkINsXFUVfo-uPXCGZSd4BJK4l7KkP1EFR8FnWIdZ8gSE99D5cIJKOoCfkG0kcY2y6K2BxoO5UR6MJ7Ji-lHT0A7ptpjF9ofMDeerasZwLUNF-0r16-oHtAR-_w :: *
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
Confidence: **medium**

```css
ul {
  min-height: 49.8px; /* current ~73.8px */
}
```

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
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Analyze view Duplicate view Reorder displays Delete view
   - Related page screenshot: baseline-pages/structure-view-content__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-view-content__default__dark__page.png

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 691.781px;"> <li class="analyze dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/nojs/analyze/content/page_1" class="views-ajax-link" data-once="views-ajax">Analyze view</a></li> <li class="duplicate dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/content/duplicate">Duplicate view</a></li> <li class="reorder dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/nojs/reorder-displays/content/page_1" class="views-ajax-link" data-once="views-ajax">Reorder displays</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/v
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Rearrange fields
   - Related page screenshot: baseline-pages/structure-view-content__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-view-content__default__dark__page.png

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: auto; bottom: 100%; max-height: 451.547px;"> <li class="rearrange dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/nojs/rearrange/content/page_1/field" class="compact rearrange views-ajax-link" id="views-rearrange-field" data-once="views-ajax">Rearrange <span class="visually-hidden">fields</span></a></li> </ul>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Analyze view Duplicate view Reorder displays Delete view
   - Related page screenshot: candidate-pages/structure-view-content__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-view-content__default__dark__page.png

```html
<ul class="dropbutton__items" style="position: fixed; left: auto; right: 126px; top: 275.219px;"> <li class="analyze dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/nojs/analyze/content/page_1" class="views-ajax-link" data-once="views-ajax">Analyze view</a></li> <li class="duplicate dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/content/duplicate">Duplicate view</a></li> <li class="reorder dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/nojs/reorder-displays/content/page_1" class="views-ajax-link" data-once="views-ajax">Reorder displays</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/content/delete">Delete 
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/form[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Rearrange fields
   - Related page screenshot: candidate-pages/structure-view-content__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-view-content__default__dark__page.png

```html
<ul class="dropbutton__items" style="position: fixed; left: 562px; right: auto; top: -1051.45px;"> <li class="rearrange dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/nojs/rearrange/content/page_1/field" class="compact rearrange views-ajax-link" id="views-rearrange-field" data-once="views-ajax">Rearrange <span class="visually-hidden">fields</span></a></li> </ul>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
