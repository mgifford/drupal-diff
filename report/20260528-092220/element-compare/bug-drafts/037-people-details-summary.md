# Admin Theme (dark) People - Details Summary style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Details Summary** on **People** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people
3. Inspect selector: details > summary
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- count: +1 (100.0%)

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_nPckB4DV-RFbxCpBvH64vRhNH8eHAMk_bPZn679lykQ.css
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_nPckB4DV-RFbxCpBvH64vRhNH8eHAMk_bPZn679lykQ.css?delta=0&language=en&theme=default_admin&include=eJxtkFFywzAIRC9kWUfKYIl4aBFoEErTnr5Km0lixz98vGWBJak4Xr0Dx2y9As_pQQKTfLYpqWFMWqoKirdZ4EIrOKmE4Kq8gIWlu6v8t97nwAdcNyATsK5bZFoPrORYxvLmG2rY0APUimAgCTeiw8JDZ0x-wNXuVNQKMP3glPEMnf0EuZDElXUZgZt_j8zrTnwG3gm39E71jdbT-Mn0tEUaLzUZ57yMuhB-tfhX56K5M_4CUTqaOw :: summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFFywzAIRC9kWUfKYIl4aBFoEErTnr5Km0lixz98vGWBJak4Xr0Dx2y9As_pQQKTfLYpqWFMWqoKirdZ4EIrOKmE4Kq8gIWlu6v8t97nwAdcNyATsK5bZFoPrORYxvLmG2rY0APUimAgCTeiw8JDZ0x-wNXuVNQKMP3glPEMnf0EuZDElXUZgZt_j8zrTnwG3gm39E71jdbT-Mn0tEUaLzUZ57yMuhB-tfhX56K5M_4CUTqaOw :: summary
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFFywzAIRC9kWUfKYIl4aBFoEErTnr5Km0lixz98vGWBJak4Xr0Dx2y9As_pQQKTfLYpqWFMWqoKirdZ4EIrOKmE4Kq8gIWlu6v8t97nwAdcNyATsK5bZFoPrORYxvLmG2rY0APUimAgCTeiw8JDZ0x-wNXuVNQKMP3glPEMnf0EuZDElXUZgZt_j8zrTnwG3gm39E71jdbT-Mn0tEUaLzUZ57yMuhB-tfhX56K5M_4CUTqaOw :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkFFywzAIRC9kWUfKYIl4aBFoEErTnr5Km0lixz98vGWBJak4Xr0Dx2y9As_pQQKTfLYpqWFMWqoKirdZ4EIrOKmE4Kq8gIWlu6v8t97nwAdcNyATsK5bZFoPrORYxvLmG2rY0APUimAgCTeiw8JDZ0x-wNXuVNQKMP3glPEMnf0EuZDElXUZgZt_j8zrTnwG3gm39E71jdbT-Mn0tEUaLzUZ57yMuhB-tfhX56K5M_4CUTqaOw :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.item-list
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
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/people__dark__details-summary.png
- Candidate element screenshot: candidate/people__dark__details-summary.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people__dark__details-summary.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people__dark__details-summary.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[2]/div[2]/div[1]/div[1]/div[2]/details[1]/summary[1]`
   - Text sample: Deprecated function: Using null as an array offset is deprecated, use an empty s

```html
<summary><em class="placeholder">Deprecated function</em>: Using null as an array offset is deprecated, use an empty string instead in <em class="placeholder">Drupal\Core\Entity\ContentEntityBase-&gt;hasTranslation()</em> (line <em class="placeholder">984</em> of <em class="placeholder">core/lib/Drupal/Core/Entity/ContentEntityBase.php</em>).</summary>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[2]/div[2]/div[1]/div[1]/div[2]/ul[1]/li[1]/details[1]/summary[1]`
   - Text sample: Deprecated function: Using null as an array offset is deprecated, use an empty s

```html
<summary><em class="placeholder">Deprecated function</em>: Using null as an array offset is deprecated, use an empty string instead in <em class="placeholder">Drupal\Core\Entity\ContentEntityBase-&gt;hasTranslation()</em> (line <em class="placeholder">984</em> of <em class="placeholder">core/lib/Drupal/Core/Entity/ContentEntityBase.php</em>).</summary>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[2]/div[2]/div[1]/div[1]/div[2]/ul[1]/li[2]/details[1]/summary[1]`
   - Text sample: Deprecated function: Using null as an array offset is deprecated, use an empty s

```html
<summary><em class="placeholder">Deprecated function</em>: Using null as an array offset is deprecated, use an empty string instead in <em class="placeholder">Drupal\Core\Entity\ContentEntityBase-&gt;hasTranslation()</em> (line <em class="placeholder">984</em> of <em class="placeholder">core/lib/Drupal/Core/Entity/ContentEntityBase.php</em>).</summary>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
