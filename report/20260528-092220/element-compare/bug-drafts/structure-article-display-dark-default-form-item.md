# Admin Theme (dark) Structure Article Display - Form Item Wrapper style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Item Wrapper** on **Structure Article Display** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/display
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/types/manage/article/display
3. Inspect selector: .form-item
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: -100.0%
- lineHeight: -100.0%
- width: -100.0%
- height: -100.0%
- count: -8 (-100.0%)

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


- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[3]/div[1]`
   - Text sample: Weight for Image

```html
<div class="js-form-item form-item js-form-type-textfield form-type--textfield js-form-item-fields-field-image-weight form-item--fields-field-image-weight form-item--no-label"> <label for="edit-fields-field-image-weight" class="form-item__label visually-hidden">Weight for Image</label> <input class="field-weight form-text form-element form-element--type-text form-element--api-textfield" data-drupal-selector="edit-fields-field-image-weight" type="text" id="edit-fields-field-image-weight" name="fields[field_image][weight]" value="-1" size="3" maxlength="128"> </div>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[4]/div[1]`
   - Text sample: Label display for Image - None - content hidden

```html
<div class="js-form-item form-item js-form-type-select form-type--select js-form-item-fields-field-image-parent form-item--fields-field-image-parent form-item--no-label"> <label for="edit-fields-field-image-parent" class="form-item__label visually-hidden">Label display for Image</label> <select class="js-field-parent field-parent form-select form-element form-element--type-select" data-drupal-selector="edit-fields-field-image-parent" id="edit-fields-field-image-parent" name="fields[field_image][parent]"> <option value="" selected="selected">- None -</option> <option value="content">content</option> <option value="hidden">hidden</option> </select> </div>
```

### Drupal 12 with Admin Theme
- No matching element captured

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
