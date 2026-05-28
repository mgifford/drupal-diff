# Admin Theme (light) Content Add Article - Details Summary style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Details Summary** on **Content Add Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/node/add/article
2. Open candidate page: http://drupal-12-git.ddev.site:8080/node/add/article
3. Inspect selector: details > summary
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 5.6%
- paddingY: -11.4%
- paddingX: -29.8%
- width: -12.8%
- height: 151.8%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LPhhND5v_oznqKgrvBJp_Z6LHOkAKdPL9_Tg83kCvo8.css
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LPhhND5v_oznqKgrvBJp_Z6LHOkAKdPL9_Tg83kCvo8.css?delta=0&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_uTbkhno8Nr3mFyIvvqWZqKZcoQ0leV2s4BJCc-KGi_8.css?delta=1&language=en&theme=default_admin&include=eJyNkctuxCAMRX9oSFb9nsgBJ7LG2BGYvr6-RjNpVLpoV4h7Do8L8Y6JTMvLTGJYBHhKpR0-xJPc4t_ORBl2_JdpsLKb6sK7NeD5NL6TwCT36krBOWo-VFCsTgKvtIORSgimyiuUsDYzlYf63AeaaV_FaPgD9N2hIISClT6fTLRk4D5NuEFjWyBlkrnfdtkcDnmPgr1piMotSx3wzrp6gWof3mEf4FVgAJUSepsh7R2Njl_psXR3I_YXPrs9ZrfrhOsDruwLIRe_MA :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

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
Confidence: **medium**

```css
summary {
  font-size: 14.3px; /* current ~15.1px */
  padding-block: 40px; /* current ~35.4px */
  padding-inline: 70px; /* current ~49.1px */
}
```

## Evidence
- Baseline element screenshot: baseline/content-add-article__default__light__details-summary.png
- Candidate element screenshot: candidate/content-add-article__default__light__details-summary.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/content-add-article__default__light__details-summary.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/content-add-article__default__light__details-summary.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[1]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[1]/div[3]/div[1]/details[1]/summary[1]`
   - Text sample: Image

```html
<summary role="button" aria-expanded="true" class="claro-details__summary">Image<span class="required-mark"></span> <span class="claro-details__summary-summary"></span></summary>
```

2. XPath: `/html[1]/body[1]/div[2]/div[1]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/details[1]/summary[1]`
   - Text sample: Menu settings Not in menu

```html
<summary role="button" aria-controls="edit-menu" aria-expanded="false" class="claro-details__summary claro-details__summary--accordion-item">Menu settings<span class="required-mark"></span> <span class="claro-details__summary-summary">Not in menu</span></summary>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[2]/div[1]/div[1]/div[1]/div[2]/details[1]/summary[1]`
   - Text sample: User warning: The following theme is missing from the file system: gin in Drupal

```html
<summary><em class="placeholder">User warning</em>: The following theme is missing from the file system: gin in <em class="placeholder">Drupal\Core\Extension\ExtensionPathResolver-&gt;getPathname()</em> (line <em class="placeholder">54</em> of <em class="placeholder">core/lib/Drupal/Core/Extension/ExtensionPathResolver.php</em>).<span class="gin-details__summary-summary"></span></summary>
```

2. XPath: `/html[1]/body[1]/div[4]/div[1]/div[2]/main[1]/div[2]/div[1]/div[1]/div[2]/div[2]/details[1]/summary[1]`
   - Text sample: Deprecated function: dirname(): Passing null to parameter #1 ($path) of type str

```html
<summary><em class="placeholder">Deprecated function</em>: dirname(): Passing null to parameter #1 ($path) of type string is deprecated in <em class="placeholder">Drupal\Core\Extension\ExtensionPathResolver-&gt;getPath()</em> (line <em class="placeholder">76</em> of <em class="placeholder">core/lib/Drupal/Core/Extension/ExtensionPathResolver.php</em>).<span class="gin-details__summary-summary"></span></summary>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
