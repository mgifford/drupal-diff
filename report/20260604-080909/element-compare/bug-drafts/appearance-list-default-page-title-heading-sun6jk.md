# Admin Theme (light) Appearance List - Page Title Heading (h1) style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 34.0px vs 24.0px (+41.7%).
- Component width is significantly wider: 188.5px vs 136.0px (+38.6%).
- Component height is significantly taller: 41.0px vs 29.0px (+41.4%).
- Horizontal padding is significantly higher: 8.5px vs 6.0px (+41.7%).

## Summary
Potential CSS regression in **Page Title Heading (h1)** on **Appearance List** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **light**

## Color Mode Coverage
- light: fontSize: 41.7% | paddingX: 41.7% | width: 38.6% | height: 41.4%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/appearance
2. Open candidate page: http://drupal-12.ddev.site/admin/appearance
3. Inspect selector: h1.page-title, .page-title h1, .page-title
4. Compare typography, spacing, sizing, and marker presence in: light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 41.7%
- paddingX: 41.7%
- width: 38.6%
- height: 41.4%

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/page-title.css
- core/themes/default_admin/css/components/page-title.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_NB-6_r2gy5jJxsyRovkHjwrk6u9sC0pXUFxdNfBTNxw.css?delta=0&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: h1
- http://drupal-12.ddev.site/sites/default/files/css/css_2kTXaBrg2jkKLFPVae0Vq0mMbVA-eLNYsOcvEsO57xY.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: h1, .heading-a
- http://drupal-12.ddev.site/sites/default/files/css/css_2kTXaBrg2jkKLFPVae0Vq0mMbVA-eLNYsOcvEsO57xY.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_2kTXaBrg2jkKLFPVae0Vq0mMbVA-eLNYsOcvEsO57xY.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: .page-title
- http://drupal-12.ddev.site/sites/default/files/css/css_2kTXaBrg2jkKLFPVae0Vq0mMbVA-eLNYsOcvEsO57xY.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-a)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-a)
- core/themes/default_admin/css/components/page-title.css (score: 1; selectors: .page-title)
- core/themes/default_admin/css/components/page-title.pcss.css (score: 1; selectors: .page-title)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
Confidence: **medium**

```css
h1 {
  font-size: 24px; /* current ~34px */
  padding-inline: 6px; /* current ~8.5px */
  min-height: 29px; /* current ~41px */
}
```

## Evidence
- Baseline element screenshot: baseline/appearance-list__default__light__page-title-heading.png
- Candidate element screenshot: candidate/appearance-list__default__light__page-title-heading.png
- Baseline page screenshot: baseline-pages/appearance-list__default__light__page.png
- Candidate page screenshot: candidate-pages/appearance-list__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/appearance-list__default__light__page-title-heading.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/appearance-list__default__light__page-title-heading.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/appearance-list__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/appearance-list__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Appearance
   - Related element screenshot: baseline/appearance-list__default__light__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/appearance-list__default__light__page-title-heading.png
   - Related page screenshot: baseline-pages/appearance-list__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/appearance-list__default__light__page.png

```html
<h1 class="page-title">Appearance</h1>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Appearance
   - Related element screenshot: candidate/appearance-list__default__light__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/appearance-list__default__light__page-title-heading.png
   - Related page screenshot: candidate-pages/appearance-list__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/appearance-list__default__light__page.png

```html
<h1 class="page-title">Appearance</h1>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
