# Admin Theme (dark) Structure Article Fields - Dropbutton Wrapper style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Wrapper** on **Structure Article Fields** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/fields
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure/types/manage/article/fields
3. Inspect selector: .dropbutton-wrapper.dropbutton-multiple, .dropbutton-wrapper
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: -22.0%
- count: -3 (-75.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_f6fuyBUH2SSbpm2wD0SPOzHxK6pEYShMasfk3B9sue4.css?delta=1&language=en&theme=default_admin&include=eJxtkFEOwjAIQC-0rkdaWMsWIoOGUqOe3hqdS6afvEfIC0nF8eYNOGZrBXhMXxKY5FKHpIYx6VZUULyOAldawUklBFflGSzMzV3lvfq5k03LH2xY0QOUgmAgCd9S1DZgeuCQcYHGPkHeSOLKOveQ6vfesp7kEXISryqn8kPL1FuHhZDz1Ggv2ufhuBep_8Cky4M9ATu5dL0 :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_f6fuyBUH2SSbpm2wD0SPOzHxK6pEYShMasfk3B9sue4.css?delta=1&language=en&theme=default_admin&include=eJxtkFEOwjAIQC-0rkdaWMsWIoOGUqOe3hqdS6afvEfIC0nF8eYNOGZrBXhMXxKY5FKHpIYx6VZUULyOAldawUklBFflGSzMzV3lvfq5k03LH2xY0QOUgmAgCd9S1DZgeuCQcYHGPkHeSOLKOveQ6vfesp7kEXISryqn8kPL1FuHhZDz1Ggv2ufhuBep_8Cky4M9ATu5dL0 :: .dropbutton-wrapper
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_f6fuyBUH2SSbpm2wD0SPOzHxK6pEYShMasfk3B9sue4.css?delta=1&language=en&theme=default_admin&include=eJxtkFEOwjAIQC-0rkdaWMsWIoOGUqOe3hqdS6afvEfIC0nF8eYNOGZrBXhMXxKY5FKHpIYx6VZUULyOAldawUklBFflGSzMzV3lvfq5k03LH2xY0QOUgmAgCd9S1DZgeuCQcYHGPkHeSOLKOveQ6vfesp7kEXISryqn8kPL1FuHhZDz1Ggv2ufhuBep_8Cky4M9ATu5dL0 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/dropbutton.css (score: 1; selectors: .dropbutton-wrapper)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 1; selectors: .dropbutton-wrapper)
- core/themes/default_admin/css/components/views-ui.css (score: 1; selectors: .dropbutton-wrapper)
- core/themes/default_admin/css/components/views-ui.pcss.css (score: 1; selectors: .dropbutton-wrapper)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.dropbutton
- core/drupal.reset-appearance
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- field_ui/drupal.field_ui
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-content-type-article-fields__default__dark__dropbutton-wrapper.png
- Candidate element screenshot: candidate/structure-content-type-article-fields__default__dark__dropbutton-wrapper.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-content-type-article-fields__default__dark__dropbutton-wrapper.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-fields__default__dark__dropbutton-wrapper.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]`
   - Text sample: EditList additional actions Delete

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/types/manage/article/fields/node.article.body" title="Edit field settings." class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:1100}" data-once="ajax">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: absolute; overflow-y: auto
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[3]/div[1]`
   - Text sample: EditList additional actions Delete

```html
<div class="dropbutton-wrapper dropbutton-multiple" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/types/manage/article/fields/node.article.comment" title="Edit field settings." class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:1100}" data-once="ajax">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: absolute; overflow-y: a
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]`
   - Text sample: EditList additional actions Delete

```html
<div class="dropbutton-wrapper dropbutton-multiple open" data-drupal-ajax-container="" data-once="dropbutton ginDropbutton"> <div class="dropbutton-widget"><ul class="dropbutton dropbutton--extrasmall dropbutton--multiple dropbutton--gin"> <li class="edit dropbutton__item dropbutton-action"><a href="/admin/structure/types/manage/article/fields/node.article.body" title="Edit field settings." class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:1100}" data-once="ajax">Edit</a></li><li class="dropbutton-toggle"><button type="button" class="dropbutton__toggle"><span class="visually-hidden">List additional actions</span></button></li> <li class="dropbutton__item dropbutton-action secondary-action"> <ul class="dropbutton__items" style="position: fixed; left: 1127.36p
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
