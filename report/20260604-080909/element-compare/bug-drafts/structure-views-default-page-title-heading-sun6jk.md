# Admin Theme (dark) Structure Views - Page Title Heading (h1) style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly smaller: 0.0px vs 34.0px (-100.0%).
- Component width is significantly narrower: 0.0px vs 100.0px (-100.0%).
- Component height is significantly shorter: 0.0px vs 41.0px (-100.0%).
- Horizontal padding is significantly lower: 0.0px vs 8.5px (-100.0%).
- Matched element count is different: 1 fewer element(s) (-100.0%).

## Summary
Potential CSS regression in **Page Title Heading (h1)** on **Structure Views** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark**

## Color Mode Coverage
- dark: fontSize: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/views
2. Open candidate page: http://drupal-12.ddev.site/admin/structure/views
3. Inspect selector: h1.page-title, .page-title h1, .page-title
4. Compare typography, spacing, sizing, and marker presence in: dark.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: -100.0%
- paddingX: -100.0%
- width: -100.0%
- height: -100.0%
- count: -1 (-100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/page-title.css
- core/themes/default_admin/css/components/page-title.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_eeiIqDEXR8r5mCjEuYBuAc-nJ66z5lWihNYCyUZsn90.css?delta=0&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: h1
- http://drupal-12.ddev.site/sites/default/files/css/css_fnsLV5Kexv7GLSa7XGetxdxyAwJM6rZOBGykQQ3qI8U.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: h1, .heading-a
- http://drupal-12.ddev.site/sites/default/files/css/css_fnsLV5Kexv7GLSa7XGetxdxyAwJM6rZOBGykQQ3qI8U.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_fnsLV5Kexv7GLSa7XGetxdxyAwJM6rZOBGykQQ3qI8U.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: .page-title
- http://drupal-12.ddev.site/sites/default/files/css/css_fnsLV5Kexv7GLSa7XGetxdxyAwJM6rZOBGykQQ3qI8U.css?delta=1&language=en&theme=default_admin&include=eJxtkGsSwiAMhC9UypE6KUQmShMGQn2cXrQda6t_d7ObL3HCijetEK3PNUHs3UcxkfhSOicZrZMpCSNr6RlmCqAkbIyKxBGyGauq8DK69sAZbjvBE0QJeylL-hPNWFANpISQgR0uJkueINIDO48nqFEH8BOxDVHGBlv03njDwdxgD8aLXCn9qGlo93RbzFJ7R-ZG9VU1E17LUMm-U_26-gk0IoG5 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-a)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-a)
- core/themes/default_admin/css/components/page-title.css (score: 1; selectors: .page-title)
- core/themes/default_admin/css/components/page-title.pcss.css (score: 1; selectors: .page-title)

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
- Baseline element screenshot: baseline/structure-views__default__dark__page-title-heading.png
- Candidate element screenshot: candidate/structure-views__default__dark__page-title-heading.png
- Baseline page screenshot: baseline-pages/structure-views__default__dark__page.png
- Candidate page screenshot: candidate-pages/structure-views__default__dark__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-views__default__dark__page-title-heading.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/structure-views__default__dark__page-title-heading.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-views__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-views__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Views
   - Related element screenshot: baseline/structure-views__default__dark__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-views__default__dark__page-title-heading.png
   - Related page screenshot: baseline-pages/structure-views__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-views__default__dark__page.png

```html
<h1 class="page-title">Views</h1>
```

### Drupal 12 with Admin Theme
- No matching element captured

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
