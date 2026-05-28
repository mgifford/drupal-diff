# Admin Theme (dark) Structure Article Display - Text Input style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly smaller: 0.0px vs 16.0px (-100.0%).
- Vertical padding is significantly lower: 0.0px vs 14.0px (-100.0%).
- Horizontal padding is significantly lower: 0.0px vs 24.0px (-100.0%).
- Line height is significantly smaller: 0.0px vs 24.0px (-100.0%).
- Matched element count is different: 5 fewer element(s) (-100.0%).

## Summary
Potential CSS regression in **Text Input** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/types/manage/article/display
3. Inspect selector: input[type="text"], input.form-text
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: -100.0%
- lineHeight: -100.0%
- paddingY: -100.0%
- paddingX: -100.0%
- count: -5 (-100.0%)

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
- Baseline element screenshot: 
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-content-type-article-display__default__dark__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-display__default__dark__page.png


- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-display__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article-display__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `//*[@id="edit-fields-field-image-weight"]`
   - Related page screenshot: baseline-pages/structure-content-type-article-display__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-display__default__dark__page.png

```html
<input class="field-weight form-text form-element form-element--type-text form-element--api-textfield" data-drupal-selector="edit-fields-field-image-weight" type="text" id="edit-fields-field-image-weight" name="fields[field_image][weight]" value="-1" size="3" maxlength="128" style="">
```

2. XPath: `//*[@id="edit-fields-body-weight"]`
   - Related page screenshot: baseline-pages/structure-content-type-article-display__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-display__default__dark__page.png

```html
<input class="field-weight form-text form-element form-element--type-text form-element--api-textfield" data-drupal-selector="edit-fields-body-weight" type="text" id="edit-fields-body-weight" name="fields[body][weight]" value="5" size="3" maxlength="128" style="">
```

### Drupal 12 with Admin Theme
- No matching element captured

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
