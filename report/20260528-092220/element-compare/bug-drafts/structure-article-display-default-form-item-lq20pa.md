# Admin Theme (dark + light) Structure Article Display - Form Item Wrapper style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly smaller: 0.0px vs 16.0px (-100.0%).
- Component width is significantly narrower: 0.0px vs 215.4px (-100.0%).
- Component height is significantly shorter: 0.0px vs 40.0px (-100.0%).
- Line height is significantly smaller: 0.0px vs 24.0px (-100.0%).
- Matched element count is different: 8 fewer element(s) (-100.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Form Item Wrapper** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -8 (-100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -8 (-100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/types/manage/article/display
3. Inspect selector: .form-item
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -8 (-100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | width: -100.0% | height: -100.0% | count: -8 (-100.0%)

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
- Baseline element screenshot: baseline/structure-content-type-article-display__default__light__form-item.png
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/structure-content-type-article-display__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-display__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-content-type-article-display__default__light__form-item.png

- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-display__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article-display__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[6]/div[1]`
   - Text sample: Label display for Image Above Inline - Hidden - - Visually Hidden -
   - Related element screenshot: baseline/structure-content-type-article-display__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-content-type-article-display__default__light__form-item.png
   - Related page screenshot: baseline-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-display__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-fields-field-image-label form-item--fields-field-image-label form-item--no-label"> <label for="edit-fields-field-image-label" class="form-item__label visually-hidden">Label display for Image</label> <select data-drupal-selector="edit-fields-field-image-label" id="edit-fields-field-image-label" name="fields[field_image][label]" class="form-select form-element form-element--type-select"> <option value="above">Above</option> <option value="inline">Inline</option> <option value="hidden" selected="selected">- Hidden -</option> <option value="visually_hidden">- Visually Hidden -</option> </select> </div>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[7]/div[1]`
   - Text sample: Plugin for Image Image URL to image
   - Related element screenshot: baseline/structure-content-type-article-display__default__light__form-item.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-content-type-article-display__default__light__form-item.png
   - Related page screenshot: baseline-pages/structure-content-type-article-display__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-display__default__light__page.png

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-fields-field-image-type form-item--fields-field-image-type form-item--no-label"> <label for="edit-fields-field-image-type" class="form-item__label visually-hidden">Plugin for Image</label> <select class="field-plugin-type form-select form-element form-element--type-select" data-drupal-selector="edit-fields-field-image-type" id="edit-fields-field-image-type" name="fields[field_image][type]"> <option value="image" selected="selected">Image</option> <option value="image_url">URL to image</option> </select> </div>
```

### Drupal 12 with Admin Theme
- No matching element captured

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
