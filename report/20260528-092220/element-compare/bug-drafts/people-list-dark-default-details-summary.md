# Admin Theme (dark) People List - Details Summary style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Details Summary** on **People List** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people
3. Inspect selector: details > summary
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: -100.0%
- lineHeight: -100.0%
- paddingY: -100.0%
- paddingX: -100.0%
- width: -100.0%
- height: -100.0%
- count: -1 (-100.0%)

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
- Baseline element screenshot: baseline/people-list__default__dark__details-summary.png
- Candidate element screenshot: 
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people-list__default__dark__details-summary.png

- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[2]/div[2]/div[1]/div[1]/div[2]/details[1]/summary[1]`
   - Text sample: Deprecated function: Using null as an array offset is deprecated, use an empty s

```html
<summary><em class="placeholder">Deprecated function</em>: Using null as an array offset is deprecated, use an empty string instead in <em class="placeholder">Drupal\Core\Entity\ContentEntityBase-&gt;hasTranslation()</em> (line <em class="placeholder">984</em> of <em class="placeholder">core/lib/Drupal/Core/Entity/ContentEntityBase.php</em>).</summary>
```

### Drupal 12 with Admin Theme
- No matching element captured

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
