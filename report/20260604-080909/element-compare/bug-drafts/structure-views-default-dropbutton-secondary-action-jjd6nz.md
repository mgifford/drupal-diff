# Admin Theme (dark) Structure Views - Dropbutton Secondary Action Link style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly smaller: 0.0px vs 14.0px (-100.0%).
- Component width is significantly narrower: 0.0px vs 112.7px (-100.0%).
- Component height is significantly shorter: 0.0px vs 33.0px (-100.0%).
- Vertical padding is significantly lower: 0.0px vs 21.0px (-100.0%).
- Horizontal padding is significantly lower: 0.0px vs 28.0px (-100.0%).
- Line height is significantly smaller: 0.0px vs 12.0px (-100.0%).
- Matched element count is different: 3 fewer element(s) (-100.0%).

## Summary
Potential CSS regression in **Dropbutton Secondary Action Link** on **Structure Views** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark**

## Color Mode Coverage
- dark: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -3 (-100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/views
3. Inspect selector: .dropbutton-wrapper .dropbutton__items .dropbutton__item a
4. Compare typography, spacing, sizing, and marker presence in: dark.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: -100.0%
- lineHeight: -100.0%
- paddingY: -100.0%
- paddingX: -100.0%
- width: -100.0%
- height: -100.0%
- count: -3 (-100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_eeiIqDEXR8r5mCjEuYBuAc-nJ66z5lWihNYCyUZsn90.css?delta=0&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: a
- http://drupal-12.ddev.site/sites/default/files/css/css_fnsLV5Kexv7GLSa7XGetxdxyAwJM6rZOBGykQQ3qI8U.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: a, .link, button.link
- http://drupal-12.ddev.site/sites/default/files/css/css_fnsLV5Kexv7GLSa7XGetxdxyAwJM6rZOBGykQQ3qI8U.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_fnsLV5Kexv7GLSa7XGetxdxyAwJM6rZOBGykQQ3qI8U.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: a, .link
- http://drupal-12.ddev.site/sites/default/files/css/css_fnsLV5Kexv7GLSa7XGetxdxyAwJM6rZOBGykQQ3qI8U.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/elements.pcss.css (score: 2; selectors: .link, button.link)
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
- Baseline element screenshot: baseline/structure-views__default__dark__dropbutton-secondary-action.png
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-views__default__dark__page.png
- Candidate page screenshot: candidate-pages/structure-views__default__dark__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-views__default__dark__dropbutton-secondary-action.png

- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-views__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-views__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Duplicate
   - Related element screenshot: baseline/structure-views__default__dark__dropbutton-secondary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-views__default__dark__dropbutton-secondary-action.png
   - Related page screenshot: baseline-pages/structure-views__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-views__default__dark__page.png

```html
<a href="/admin/structure/views/view/block_content/duplicate" data-drupal-selector="views-listing-block_content">Duplicate</a>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[2]/a[1]`
   - Text sample: Disable
   - Related element screenshot: baseline/structure-views__default__dark__dropbutton-secondary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-views__default__dark__dropbutton-secondary-action.png
   - Related page screenshot: baseline-pages/structure-views__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-views__default__dark__page.png

```html
<a href="/admin/structure/views/view/block_content/disable?token=A7JrkM3iRdgLC0UJ32dFT-wJG9PhNOnZOkQOmS4n5tQ" class="use-ajax" data-drupal-selector="views-listing-block_content" data-once="ajax">Disable</a>
```

### Drupal 12 with Admin Theme
- No matching element captured

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
