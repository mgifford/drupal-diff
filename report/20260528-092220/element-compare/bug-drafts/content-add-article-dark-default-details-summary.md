# Admin Theme (dark) Content Add Article - Details Summary style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Details Summary** on **Content Add Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/node/add/article
2. Open candidate page: http://drupal-12-git.ddev.site:8080/node/add/article
3. Inspect selector: details > summary
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- lineHeight: 5.9%
- width: -12.5%
- height: 11.9%
- count: -3 (-50.0%)

## Likely CSS Sources
- core/themes/default_admin/css/components/details.css
- core/themes/default_admin/css/components/details.pcss.css
- core/themes/default_admin/css/components/tabs.css
- core/themes/default_admin/css/components/tabs.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LPhhND5v_oznqKgrvBJp_Z6LHOkAKdPL9_Tg83kCvo8.css?delta=0&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: .gin-details__summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: .gin-details__summary--accordion, .gin-details__summary--accordion-item, .gin-details__summary--vertical-tabs-item
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: .gin-details__summary--accordion-item
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: .tabs__link, .gin-details__summary, .horizontal-tabs ul.horizontal-tabs-list li.horizontal-tab-button a

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/details.css (score: 2; selectors: .gin-details__summary--accordion-item, .gin-details__summary--vertical-tabs-item)
- core/themes/default_admin/css/components/details.pcss.css (score: 2; selectors: .gin-details__summary--accordion-item, .gin-details__summary--vertical-tabs-item)
- core/themes/default_admin/css/components/tabs.css (score: 1; selectors: .tabs__link)
- core/themes/default_admin/css/components/tabs.pcss.css (score: 1; selectors: .tabs__link)

## Candidate Aggregate Libraries (decoded include= token)
- ckeditor5/internal.drupal.ckeditor5
- ckeditor5/internal.drupal.ckeditor5.image
- ckeditor5/internal.drupal.ckeditor5.table
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.autocomplete
- core/drupal.textarea-resize
- core/normalize
- default_admin/edit_form
- default_admin/form-two-columns
- default_admin/global-styling
- default_admin/navigation
- default_admin/sidebar
- default_admin/tooltip
- default_admin/top_bar
- filter/drupal.filter
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/content-add-article__default__dark__details-summary.png
- Candidate element screenshot: candidate/content-add-article__default__dark__details-summary.png
- Baseline page screenshot: baseline-pages/content-add-article__default__dark__page.png
- Candidate page screenshot: candidate-pages/content-add-article__default__dark__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/content-add-article__default__dark__details-summary.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/content-add-article__default__dark__details-summary.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/content-add-article__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/content-add-article__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[1]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[3]/div[1]/details[1]/summary[1]`
   - Text sample: Image
   - Related element screenshot: baseline/content-add-article__default__dark__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/content-add-article__default__dark__details-summary.png
   - Related page screenshot: baseline-pages/content-add-article__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/content-add-article__default__dark__page.png

```html
<summary role="button" aria-expanded="true" class="claro-details__summary">Image<span class="required-mark"></span> <span class="claro-details__summary-summary"></span></summary>
```

2. XPath: `/html[1]/body[1]/div[2]/div[1]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/details[1]/summary[1]`
   - Text sample: Menu settings Not in menu
   - Related element screenshot: baseline/content-add-article__default__dark__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/content-add-article__default__dark__details-summary.png
   - Related page screenshot: baseline-pages/content-add-article__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/content-add-article__default__dark__page.png

```html
<summary role="button" aria-controls="edit-menu" aria-expanded="false" class="claro-details__summary claro-details__summary--accordion-item">Menu settings<span class="required-mark"></span> <span class="claro-details__summary-summary">Not in menu</span></summary>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/details[1]/summary[1]`
   - Text sample: Menu settings Not in menu
   - Related element screenshot: candidate/content-add-article__default__dark__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/content-add-article__default__dark__details-summary.png
   - Related page screenshot: candidate-pages/content-add-article__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/content-add-article__default__dark__page.png

```html
<summary role="button" aria-controls="edit-menu" aria-expanded="false" class="gin-details__summary gin-details__summary--accordion-item">Menu settings<span class="required-mark"></span> <span class="gin-details__summary-summary">Not in menu</span></summary>
```

2. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/details[2]/summary[1]`
   - Text sample: URL alias No alias
   - Related element screenshot: candidate/content-add-article__default__dark__details-summary.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/content-add-article__default__dark__details-summary.png
   - Related page screenshot: candidate-pages/content-add-article__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/content-add-article__default__dark__page.png

```html
<summary role="button" aria-controls="edit-path-0" aria-expanded="false" class="gin-details__summary gin-details__summary--accordion-item">URL alias<span class="required-mark"></span> <span class="gin-details__summary-summary">No alias</span></summary>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
