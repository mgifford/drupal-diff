# Admin Theme (dark) Structure Views - Dropbutton Secondary Actions List style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Secondary Actions List** on **Structure Views** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/structure/views
3. Inspect selector: .dropbutton-wrapper .dropbutton__items
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- height: 94.9%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: ul
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_QpvbzsFrbV7TKL2CBrx2MGTLS5uTJ9WSrn5z5OZoHto.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.reset-appearance
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


- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Duplicate Disable Delete

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 524.609px;"> <li class="duplicate dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/comment/duplicate" data-drupal-selector="views-listing-comment">Duplicate</a></li> <li class="disable dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/comment/disable?token=RzLfFcRRwvywdWvFqL1j7OUb_a1SoJM3xm8Lt1HpbyA" class="use-ajax" data-drupal-selector="views-listing-comment" data-once="ajax">Disable</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/comment/delete?destination=/admin/structure/views" aria-label="Delete Comments" class="use-ajax" data
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Duplicate Disable Delete

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 435.609px;"> <li class="duplicate dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/content/duplicate" data-drupal-selector="views-listing-content">Duplicate</a></li> <li class="disable dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/content/disable?token=ysUuOicXxfOLKPFYjQRtZcZA32Uk9BxOtK1bXAS3UI0" class="use-ajax" data-drupal-selector="views-listing-content" data-once="ajax">Disable</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/content/delete?destination=/admin/structure/views" aria-label="Delete Content" class="use-ajax" data-
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Duplicate Disable Delete

```html
<ul class="dropbutton__items" style="position: fixed; left: auto; right: 76.0156px; top: 438.594px;"> <li class="duplicate dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/content/duplicate" data-drupal-selector="views-listing-content">Duplicate</a></li> <li class="disable dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/content/disable?token=iHdwWe7TdNhIo6mSWN_2DeOYvlMFYokYJ1O5tSdqj-4" class="use-ajax" data-drupal-selector="views-listing-content" data-once="ajax">Disable</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/content/delete?destination=/admin/structure/views" aria-label="Delete Content" class="use-ajax" data-dialog-type="modal" dat
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Duplicate Disable Delete

```html
<ul class="dropbutton__items" style="position: fixed; left: auto; right: 76.0156px; top: 503.594px;"> <li class="duplicate dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/block_content/duplicate" data-drupal-selector="views-listing-block_content">Duplicate</a></li> <li class="disable dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/block_content/disable?token=q5qwlWccImPx9lSBST7sE2D9k4buesvl3Jum-cQccu8" class="use-ajax" data-drupal-selector="views-listing-block_content" data-once="ajax">Disable</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/views/view/block_content/delete?destination=/admin/structure/views" aria-label="Delete Content blocks" class="u
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
