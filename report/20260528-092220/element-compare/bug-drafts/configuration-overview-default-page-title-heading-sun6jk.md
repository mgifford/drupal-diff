# Admin Theme (dark) Configuration Overview - Page Title Heading (h1) style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is significantly larger: 34.0px vs 24.0px (+41.6%).
- Component width is significantly wider: 208.4px vs 148.4px (+40.4%).
- Component height is significantly taller: 41.0px vs 29.0px (+41.4%).
- Horizontal padding is significantly higher: 8.5px vs 6.0px (+41.6%).

## Summary
Potential CSS regression in **Page Title Heading (h1)** on **Configuration Overview** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark**

## Color Mode Coverage
- dark: fontSize: 41.6% | paddingX: 41.6% | width: 40.4% | height: 41.4%

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/config
3. Inspect selector: h1.page-title, .page-title h1, .page-title
4. Compare typography, spacing, sizing, and marker presence in: dark.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 41.6%
- paddingX: 41.6%
- width: 40.4%
- height: 41.4%

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/page-title.css
- core/themes/default_admin/css/components/page-title.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: h1
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: h1, .heading-a
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: .page-title
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
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
- Baseline element screenshot: baseline/config-overview__default__dark__page-title-heading.png
- Candidate element screenshot: candidate/config-overview__default__dark__page-title-heading.png
- Baseline page screenshot: baseline-pages/config-overview__default__dark__page.png
- Candidate page screenshot: candidate-pages/config-overview__default__dark__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/config-overview__default__dark__page-title-heading.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-overview__default__dark__page-title-heading.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/config-overview__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/config-overview__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Configuration
   - Related element screenshot: baseline/config-overview__default__dark__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/config-overview__default__dark__page-title-heading.png
   - Related page screenshot: baseline-pages/config-overview__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/config-overview__default__dark__page.png

```html
<h1 class="page-title">Configuration</h1>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/header[1]/div[1]/div[1]/div[1]/h1[1]`
   - Text sample: Configuration
   - Related element screenshot: candidate/config-overview__default__dark__page-title-heading.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-overview__default__dark__page-title-heading.png
   - Related page screenshot: candidate-pages/config-overview__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/config-overview__default__dark__page.png

```html
<h1 class="page-title">Configuration</h1>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
