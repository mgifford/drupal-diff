# Admin Theme (dark) Structure Content Type Article - Textarea style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Textarea** on **Structure Content Type Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/types/manage/article
3. Inspect selector: textarea
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: -25.6%

## Likely CSS Sources
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_CS7swrzbGj6MjwwsFRJvupOoasd-z8apUEfZc0XNtu4.css?delta=0&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: button, input, optgroup, select, textarea
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_CS7swrzbGj6MjwwsFRJvupOoasd-z8apUEfZc0XNtu4.css?delta=0&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: textarea
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_CS7swrzbGj6MjwwsFRJvupOoasd-z8apUEfZc0XNtu4.css?delta=0&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: .resize-vertical
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: input.form-autocomplete, input.form-text, input.form-tel, input.form-email, input.form-url, input.form-search, input.form-number, input.form-color, input.form-file, textarea.form-textarea, select.form-select
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: .form-element
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/print.css (score: 11; selectors: input.form-autocomplete, input.form-text, input.form-tel, input.form-email)
- core/themes/default_admin/css/base/print.pcss.css (score: 11; selectors: input.form-autocomplete, input.form-text, input.form-tel, input.form-email)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.reset-appearance
- core/drupal.textarea-resize
- core/drupal.vertical-tabs
- core/normalize
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-content-type-article__default__dark__textarea.png
- Candidate element screenshot: candidate/structure-content-type-article__default__dark__textarea.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-content-type-article__default__dark__textarea.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article__default__dark__textarea.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `//*[@id="edit-description"]`
   - Text sample: Use <em>articles</em> for time-sensitive content like news, press releases or bl

```html
<textarea data-drupal-selector="edit-description" aria-describedby="edit-description--description" id="edit-description" name="description" rows="5" cols="60" class="form-textarea resize-vertical form-element form-element--type-textarea form-element--api-textarea" style="">Use &lt;em&gt;articles&lt;/em&gt; for time-sensitive content like news, press releases or blog posts.</textarea>
```

2. XPath: `//*[@id="edit-help"]`

```html
<textarea data-drupal-selector="edit-help" aria-describedby="edit-help--description" id="edit-help" name="help" rows="5" cols="60" class="form-textarea resize-vertical form-element form-element--type-textarea form-element--api-textarea" style=""></textarea>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="edit-description"]`
   - Text sample: Generated for visual regression seeding

```html
<textarea data-drupal-selector="edit-description" aria-describedby="edit-description--description" id="edit-description" name="description" rows="5" cols="60" class="form-textarea resize-vertical form-element form-element--type-textarea form-element--api-textarea" style="">Generated for visual regression seeding</textarea>
```

2. XPath: `//*[@id="edit-help"]`

```html
<textarea data-drupal-selector="edit-help" aria-describedby="edit-help--description" id="edit-help" name="help" rows="5" cols="60" class="form-textarea resize-vertical form-element form-element--type-textarea form-element--api-textarea" style=""></textarea>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
