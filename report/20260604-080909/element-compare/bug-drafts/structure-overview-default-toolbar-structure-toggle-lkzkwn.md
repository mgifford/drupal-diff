# Admin Theme (dark + light) Structure Overview - Toolbar Structure Toggle Button style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly smaller: 0.0px vs 14.0px (-100.0%).
- Component width is significantly narrower: 0.0px vs 239.0px (-100.0%).
- Component height is significantly shorter: 0.0px vs 38.0px (-100.0%).
- Vertical padding is significantly lower: 0.0px vs 18.0px (-100.0%).
- Horizontal padding is significantly lower: 0.0px vs 20.0px (-100.0%).
- Line height is significantly smaller: 0.0px vs 16.8px (-100.0%).
- Matched element count is different: 1 fewer element(s) (-100.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Toolbar Structure Toggle Button** on **Structure Overview** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure
2. Open candidate page: http://drupal-12.ddev.site/admin/structure
3. Inspect selector: button.toolbar-link.toolbar-link--system-admin-structure
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)

## Likely CSS Sources
- unknown

## Candidate Matched CSS Rules
- No matched rules captured

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

## Candidate Aggregate Libraries (decoded include= token)
- No aggregate library list decoded

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-overview__default__light__toolbar-structure-toggle.png
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-overview__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-overview__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-overview__default__light__toolbar-structure-toggle.png

- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-overview__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/structure-overview__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[4]/ul[1]/li[1]/button[1]`
   - Text sample: Extend Structure
   - Related element screenshot: baseline/structure-overview__default__light__toolbar-structure-toggle.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/structure-overview__default__light__toolbar-structure-toggle.png
   - Related page screenshot: baseline-pages/structure-overview__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/structure-overview__default__light__page.png

```html
<button class="toolbar-link toolbar-link--has-icon toolbar-link--system-admin-structure"> <span class="toolbar-link__action">Extend</span> <span class="toolbar-link__label">Structure</span> </button>
```

### Drupal 12 with Admin Theme
- No matching element captured

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
