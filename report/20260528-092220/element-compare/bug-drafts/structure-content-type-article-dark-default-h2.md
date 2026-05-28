# Admin Theme (dark) Structure Content Type Article - H2 Heading style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **H2 Heading** on **Structure Content Type Article** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/types/manage/article
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 38.0%
- lineHeight: 38.0%
- paddingX: -100.0%
- width: -86.3%
- height: 16.7%
- count: -4 (-57.1%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_CS7swrzbGj6MjwwsFRJvupOoasd-z8apUEfZc0XNtu4.css?delta=0&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_j3pohmfn-A9Z1xJM6L40NPTKkSDSQXztO5AeIWT4_48.css?delta=1&language=en&theme=default_admin&include=eJxlkNEOgjAMRX-IySeRy1ZJdbRL6Qjx6x2RSNDXc-_W00YVp80rcp-sFuRb_JKQWZ5LF9WojzoXFRJfboKVJzirhOCqeYSFsbqrfKrHP3hgu4DEyDpdkNFCHlAKwSCRLuFuASOE1uLXNVvJnGNTdIyHoajNyHsx0R01-4A0s_Sn7k-wuzuXP1qGtlF3Puu5HcSkTT3ZG6oKeRk :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

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
- Baseline element screenshot: 
- Candidate element screenshot: candidate/structure-content-type-article__default__dark__h2.png
- Baseline page screenshot: baseline-pages/structure-content-type-article__default__dark__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article__default__dark__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article__default__dark__h2.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/h2[1]`
   - Text sample: Toolbar items
   - Related page screenshot: baseline-pages/structure-content-type-article__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article__default__dark__page.png

```html
<h2 class="visually-hidden">Toolbar items</h2>
```

2. XPath: `//*[@id="menu--create"]`
   - Text sample: Create Navigation
   - Related page screenshot: baseline-pages/structure-content-type-article__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article__default__dark__page.png

```html
<h2 id="menu--create" class="toolbar-block__title visually-hidden focusable">Create Navigation</h2>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-1205794849"]`
   - Text sample: Administrative sidebar
   - Related element screenshot: candidate/structure-content-type-article__default__dark__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article__default__dark__h2.png
   - Related page screenshot: candidate-pages/structure-content-type-article__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article__default__dark__page.png

```html
<h2 id="admin-toolbar__scroll-wrapper-1205794849" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb
   - Related element screenshot: candidate/structure-content-type-article__default__dark__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article__default__dark__h2.png
   - Related page screenshot: candidate-pages/structure-content-type-article__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article__default__dark__page.png

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
