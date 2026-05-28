# Admin Theme (dark) Configuration Overview - H2 Heading style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Text size is noticeably larger: 24.0px vs 19.0px (+26.3%).
- Component width is significantly wider: 37.6px vs 8.3px (+351.2%).
- Component height is significantly taller: 7.6px vs 0.8px (+811.9%).
- Horizontal padding is significantly lower: 0.0px vs 7.5px (-100.0%).
- Line height is noticeably larger: 31.2px vs 24.7px (+26.3%).
- Matched element count is different: 3 fewer element(s) (-50.0%).

## Summary
Potential CSS regression in **H2 Heading** on **Configuration Overview** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/config
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/config
3. Inspect selector: h2
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 26.3%
- lineHeight: 26.3%
- paddingX: -100.0%
- width: 351.2%
- height: 811.9%
- count: -3 (-50.0%)

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_KLhKWkd-10fItBI0yB5zU1NVxtsUcnqp3mnSsic0sXw.css?delta=0&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: h2, .heading-b
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: .visually-hidden
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: p, h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: h2, h3
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_K3Pg-LHuUFEv7TIJIA-i3Ryvra2mm7HR2eK_YVACwPA.css?delta=1&language=en&theme=default_admin&include=eJxlj-0OwyAIRV9I6yM1-DFDhmAUm25PP5clNen-ngvnQhDWdOoAcrGNCrSFi1hCfnYTpCUXpFThxNo3hgMzKApbqyLkoVk_VIV_oyytAOE7mZgeMEh3iAXZZRI_pV1f05tv4ZLegm-DYv2jdZ-9Zq05nGc3ng8s9gG8AlcF :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 1; selectors: .heading-b)
- core/themes/default_admin/css/base/elements.pcss.css (score: 1; selectors: .heading-b)

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
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: candidate/config-overview__default__dark__h2.png
- Baseline page screenshot: baseline-pages/config-overview__default__dark__page.png
- Candidate page screenshot: candidate-pages/config-overview__default__dark__page.png

- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-overview__default__dark__h2.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/config-overview__default__dark__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/config-overview__default__dark__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/h2[1]`
   - Text sample: Toolbar items
   - Related page screenshot: baseline-pages/config-overview__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/config-overview__default__dark__page.png

```html
<h2 class="visually-hidden">Toolbar items</h2>
```

2. XPath: `//*[@id="menu--create"]`
   - Text sample: Create Navigation
   - Related page screenshot: baseline-pages/config-overview__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline-pages/config-overview__default__dark__page.png

```html
<h2 id="menu--create" class="toolbar-block__title visually-hidden focusable">Create Navigation</h2>
```

### Drupal 12 with Admin Theme
1. XPath: `//*[@id="admin-toolbar__scroll-wrapper-349167739"]`
   - Text sample: Administrative sidebar
   - Related element screenshot: candidate/config-overview__default__dark__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-overview__default__dark__h2.png
   - Related page screenshot: candidate-pages/config-overview__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/config-overview__default__dark__page.png

```html
<h2 id="admin-toolbar__scroll-wrapper-349167739" class="visually-hidden">Administrative sidebar</h2>
```

2. XPath: `//*[@id="system-breadcrumb"]`
   - Text sample: Breadcrumb
   - Related element screenshot: candidate/config-overview__default__dark__h2.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/config-overview__default__dark__h2.png
   - Related page screenshot: candidate-pages/config-overview__default__dark__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate-pages/config-overview__default__dark__page.png

```html
<h2 id="system-breadcrumb" class="visually-hidden">Breadcrumb</h2>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
