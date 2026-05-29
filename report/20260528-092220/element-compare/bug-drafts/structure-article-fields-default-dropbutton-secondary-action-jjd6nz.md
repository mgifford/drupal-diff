# Admin Theme (dark + light) Structure Article Fields - Dropbutton Secondary Action Link style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component width is noticeably wider: 119.0px vs 95.0px (+25.3%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Dropbutton Secondary Action Link** on **Structure Article Fields** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: width: 25.3%
- dark: width: 25.3%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/types/manage/article/fields
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/types/manage/article/fields
3. Inspect selector: .dropbutton-wrapper .dropbutton__items .dropbutton__item a
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: width: 25.3%
- dark: width: 25.3%

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_8nHfkIb2xyQNQi3nPzEp2UHZ4f47tL3j3zoLj2C14I4.css?delta=0&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: a
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_f6fuyBUH2SSbpm2wD0SPOzHxK6pEYShMasfk3B9sue4.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: a, .link, button.link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_f6fuyBUH2SSbpm2wD0SPOzHxK6pEYShMasfk3B9sue4.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_f6fuyBUH2SSbpm2wD0SPOzHxK6pEYShMasfk3B9sue4.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: a, .link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_f6fuyBUH2SSbpm2wD0SPOzHxK6pEYShMasfk3B9sue4.css?delta=1&language=en&theme=default_admin&include=eJxlj9EOwjAIRX-oXT9pYS1biBSajhr1663RWTMfOZfcA1HF8GYNOKTaCvAUv8QzyWV3USuGqLmooNg-CVxpAyMV702VF6h-aWYq79VPT6pafrFozcD0QJdwhcY2Q8okYWNdumu3e9dtp3C4TsFLbFT-aJn7OW4l5DQ3Om45Zjf6AvU3q_RwsCfJammj :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/elements.pcss.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/print.css (score: 1; selectors: .link)
- core/themes/default_admin/css/base/print.pcss.css (score: 1; selectors: .link)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.dropbutton
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- field_ui/drupal.field_ui
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/structure-content-type-article-fields__default__light__dropbutton-secondary-action.png
- Candidate element screenshot: candidate/structure-content-type-article-fields__default__light__dropbutton-secondary-action.png
- Baseline page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
- Candidate page screenshot: candidate-pages/structure-content-type-article-fields__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-content-type-article-fields__default__light__dropbutton-secondary-action.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-fields__default__light__dropbutton-secondary-action.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article-fields__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[3]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Delete
   - Related element screenshot: baseline/structure-content-type-article-fields__default__light__dropbutton-secondary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/structure-content-type-article-fields__default__light__dropbutton-secondary-action.png
   - Related page screenshot: baseline-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/structure-content-type-article-fields__default__light__page.png

```html
<a href="/admin/structure/types/manage/article/fields/node.article.field_image/delete" title="Delete field." class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" data-once="ajax">Delete</a>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: Delete
   - Related element screenshot: candidate/structure-content-type-article-fields__default__light__dropbutton-secondary-action.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/structure-content-type-article-fields__default__light__dropbutton-secondary-action.png
   - Related page screenshot: candidate-pages/structure-content-type-article-fields__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/structure-content-type-article-fields__default__light__page.png

```html
<a href="/admin/structure/types/manage/article/fields/node.article.body/delete" title="Delete field." class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" data-once="ajax">Delete</a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
