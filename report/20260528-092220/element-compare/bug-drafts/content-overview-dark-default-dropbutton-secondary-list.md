# Admin Theme (dark) Content Overview - Dropbutton Secondary Actions List style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component height is significantly taller: 82.0px vs 54.0px (+51.9%).

## Summary
Potential CSS regression in **Dropbutton Secondary Actions List** on **Content Overview** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/content
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/content
3. Inspect selector: .dropbutton-wrapper .dropbutton__items
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- height: 51.9%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFsSwjAIRTfUNEtyaIIdlEKGEF-rNz5GrfrDx7nAcEgqjidvwDFbK8BjepHAJPs6JDWMSZeiguJ1FDjQDE4qIbgqT2Bhau4qj9bnHtjBaQUyAeu8Rqblz6hhRQ9QCoKBJFyFDhP3nDH5H672pKK2ANMFh4xbaOwbyAtJnFmnrlb93O3mr_Ct9hXcPJ3KDy2bbj-8xyL155n0cz5WHQiPNd7ruGhujFenj5Hp :: ul
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFsSwjAIRTfUNEtyaIIdlEKGEF-rNz5GrfrDx7nAcEgqjidvwDFbK8BjepHAJPs6JDWMSZeiguJ1FDjQDE4qIbgqT2Bhau4qj9bnHtjBaQUyAeu8Rqblz6hhRQ9QCoKBJFyFDhP3nDH5H672pKK2ANMFh4xbaOwbyAtJnFmnrlb93O3mr_Ct9hXcPJ3KDy2bbj-8xyL155n0cz5WHQiPNd7ruGhujFenj5Hp :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFsSwjAIRTfUNEtyaIIdlEKGEF-rNz5GrfrDx7nAcEgqjidvwDFbK8BjepHAJPs6JDWMSZeiguJ1FDjQDE4qIbgqT2Bhau4qj9bnHtjBaQUyAeu8Rqblz6hhRQ9QCoKBJFyFDhP3nDH5H672pKK2ANMFh4xbaOwbyAtJnFmnrlb93O3mr_Ct9hXcPJ3KDy2bbj-8xyL155n0cz5WHQiPNd7ruGhujFenj5Hp :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.reset-appearance
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
Confidence: **medium**

```css
ul {
  min-height: 54px; /* current ~82px */
}
```

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: 
- Baseline page screenshot: baseline-pages/content-overview__default__dark__page.png
- Candidate page screenshot: candidate-pages/content-overview__default__dark__page.png


- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/content-overview__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/content-overview__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Delete View
   - Related page screenshot: baseline-pages/content-overview__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/content-overview__default__dark__page.png

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 568px;"> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/node/50/delete?destination=/admin/content" aria-label="Delete Dummy Page 20" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" hreflang="en" data-once="ajax">Delete</a></li> <li class="view dropbutton__item dropbutton-action secondary-action"><a href="/node/50?destination=/admin/content" aria-label="View Dummy Page 20" hreflang="en">View</a></li> </ul>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[2]/td[7]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Delete View
   - Related page screenshot: baseline-pages/content-overview__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/content-overview__default__dark__page.png

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 507px;"> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/node/36/delete?destination=/admin/content" aria-label="Delete Dummy Page 6" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" hreflang="en" data-once="ajax">Delete</a></li> <li class="view dropbutton__item dropbutton-action secondary-action"><a href="/node/36?destination=/admin/content" aria-label="View Dummy Page 6" hreflang="en">View</a></li> </ul>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Delete View
   - Related page screenshot: candidate-pages/content-overview__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/content-overview__default__dark__page.png

```html
<ul class="dropbutton__items" style="position: fixed; left: auto; right: 75px; top: 419.203px;"> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/node/52/delete?destination=/admin/content" aria-label="Delete red" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" hreflang="en" data-once="ajax">Delete</a></li> <li class="view dropbutton__item dropbutton-action secondary-action"><a href="/node/52?destination=/admin/content" aria-label="View red" hreflang="en">View</a></li> </ul>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[2]/td[7]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Delete View
   - Related page screenshot: candidate-pages/content-overview__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/content-overview__default__dark__page.png

```html
<ul class="dropbutton__items" style="position: fixed; left: auto; right: 75px; top: 480.203px;"> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/node/51/delete?destination=/admin/content" aria-label="Delete test" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" hreflang="en" data-once="ajax">Delete</a></li> <li class="view dropbutton__item dropbutton-action secondary-action"><a href="/node/51?destination=/admin/content" aria-label="View test" hreflang="en">View</a></li> </ul>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
