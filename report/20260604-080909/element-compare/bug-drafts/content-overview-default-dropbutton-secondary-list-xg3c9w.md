# Admin Theme (dark + light) Content Overview - Dropbutton Secondary Actions List style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 16.0px vs 0.0px (+100.0%).
- Component width is significantly wider: 136.0px vs 0.0px (+100.0%).
- Component height is significantly taller: 82.0px vs 0.0px (+100.0%).
- Vertical padding is significantly higher: 16.0px vs 0.0px (+100.0%).
- Horizontal padding is significantly higher: 16.0px vs 0.0px (+100.0%).
- Line height is significantly larger: 24.0px vs 0.0px (+100.0%).
- Matched element count is different: 1 more element(s) (+100.0%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Secondary Actions List** on **Content Overview** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +1 (100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/content
2. Open candidate page: http://drupal-12.ddev.site/admin/content
3. Inspect selector: .dropbutton-wrapper .dropbutton__items
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: fontSize: 100.0% | lineHeight: 100.0% | paddingY: 100.0% | paddingX: 100.0% | width: 100.0% | height: 100.0% | count: +1 (100.0%)
- dark: fontSize: -100.0% | lineHeight: -100.0% | paddingY: -100.0% | paddingX: -100.0% | width: -100.0% | height: -100.0% | count: -1 (-100.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: ul
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_pAKFZI_mEcLB-Qjp8oX4x00FmxJ2WNm-jWwT87Jx6D8.css?delta=1&language=en&theme=default_admin&include=eJxtkF0SgjAMhC8E9EhMaCMTDUmnTfHn9FZlRJCXPHzJ7uzGqxjerAC7kEoE7vyXtExyyY3XhM7rFFVQLHcCM41gpNK2psoDpHYoZiqf08UHznDbgEDAOm5R0nggNRgYMzJ6O-CaFiqaJmB6YBPwBIWthzCRuJF1qOmz3WuBcbdc0-8WrypG8Y_GvhZsVpmj-p8kNc6P1Ux4ze49u0lDYXwC8JuGzw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.tableselect
- core/drupal.tablesort
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- views/views.module

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: candidate/content-overview__default__light__dropbutton-secondary-list.png
- Baseline page screenshot: baseline-pages/content-overview__default__light__page.png
- Candidate page screenshot: candidate-pages/content-overview__default__light__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-overview__default__light__dropbutton-secondary-list.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/content-overview__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-overview__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
- No matching element captured

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[3]/td[7]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Delete View
   - Related element screenshot: candidate/content-overview__default__light__dropbutton-secondary-list.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/content-overview__default__light__dropbutton-secondary-list.png
   - Related page screenshot: candidate-pages/content-overview__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/content-overview__default__light__page.png

```html
<ul class="dropbutton__items" style="position: fixed; left: auto; right: 75px; top: 541.203px;"> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/node/18/delete?destination=/admin/content" aria-label="Delete Dummy Article 18" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" hreflang="en" data-once="ajax">Delete</a></li> <li class="view dropbutton__item dropbutton-action secondary-action"><a href="/node/18?destination=/admin/content" aria-label="View Dummy Article 18" hreflang="en">View</a></li> </ul>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
