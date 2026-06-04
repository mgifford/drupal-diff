# Admin Theme (dark + light) Reports Updates - Table Body Cell style regression vs Drupal 11 Gin

## Human-Readable Change Summary
- Component height is noticeably taller: 254.4px vs 198.4px (+28.2%).
- Matched element count is different: 2 fewer element(s) (-66.7%).
- This same issue was also identified in dark mode.

## Summary
Potential CSS regression in **Table Body Cell** on **Reports Updates** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode coverage: **dark + light**

## Color Mode Coverage
- light: height: 28.2% | count: -2 (-66.7%)
- dark: height: 28.2% | count: -2 (-66.7%)

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/reports/updates
2. Open candidate page: http://drupal-12.ddev.site/admin/reports/updates
3. Inspect selector: table tbody td
4. Compare typography, spacing, sizing, and marker presence in: dark + light.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- light: height: 28.2% | count: -2 (-66.7%)
- dark: height: 28.2% | count: -2 (-66.7%)

## Likely CSS Sources
- core/themes/default_admin/css/components/navigation.css
- core/themes/default_admin/css/components/navigation.pcss.css

## Candidate Matched CSS Rules
- http://drupal-12.ddev.site/sites/default/files/css/css_PSSE2KlFQv-vv2eDewP06Fa1MwsUIa8V5F3WtntFJQ4.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: *
- http://drupal-12.ddev.site/sites/default/files/css/css_PSSE2KlFQv-vv2eDewP06Fa1MwsUIa8V5F3WtntFJQ4.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: td
- http://drupal-12.ddev.site/sites/default/files/css/css_PSSE2KlFQv-vv2eDewP06Fa1MwsUIa8V5F3WtntFJQ4.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/components/navigation.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))
- core/themes/default_admin/css/components/navigation.pcss.css (score: 2; selectors: :is(#extra-specificity-hack, [data-drupal-admin-styles]))

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation
- update/drupal.update.admin

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/reports-updates__default__light__table-cell.png
- Candidate element screenshot: candidate/reports-updates__default__light__table-cell.png
- Baseline page screenshot: baseline-pages/reports-updates__default__light__page.png
- Candidate page screenshot: candidate-pages/reports-updates__default__light__page.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/reports-updates__default__light__table-cell.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/reports-updates__default__light__table-cell.png
- Baseline page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/reports-updates__default__light__page.png
- Candidate page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/reports-updates__default__light__page.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: Update available Drupal core 11.3.10 Recommended version: 11.3.11 (2026-May-28) 
   - Related element screenshot: baseline/reports-updates__default__light__table-cell.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/reports-updates__default__light__table-cell.png
   - Related page screenshot: baseline-pages/reports-updates__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/reports-updates__default__light__page.png

```html
<td><div class="project-update__status project-update__status--not-current gin-status gin-status--warning"> <span class="gin-status-icon"> <img src="/core/misc/icons/e29700/warning.svg" width="18" height="18" alt="Warning" title="Warning" loading="lazy"> </span><span>Update available</span></div> <div class="project-update__title"><a href="https://www.drupal.org/project/drupal">Drupal core</a> 11.3.10 </div> <div class="project-update__version--recommended project-update__version--recommended-strong project-update__version"> <div class="layout-row clearfix"> <div class="project-update__version-title layout-column layout-column--quarter">Recommended version:</div> <div class="project-update__version-details layout-column layout-column--quarter"> <a href="https://www.drupal.org/project/drupa
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: Update available Gin Admin Theme 5.0.13 Recommended version: 5.0.15 (2026-Jun-03
   - Related element screenshot: baseline/reports-updates__default__light__table-cell.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline/reports-updates__default__light__table-cell.png
   - Related page screenshot: baseline-pages/reports-updates__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/baseline-pages/reports-updates__default__light__page.png

```html
<td><div class="project-update__status project-update__status--not-current gin-status gin-status--warning"> <span class="gin-status-icon"> <img src="/core/misc/icons/e29700/warning.svg" width="18" height="18" alt="Warning" title="Warning" loading="lazy"> </span><span>Update available</span></div> <div class="project-update__title"><a href="https://www.drupal.org/project/gin">Gin Admin Theme</a> 5.0.13 </div> <div class="project-update__version--recommended project-update__version"> <div class="layout-row clearfix"> <div class="project-update__version-title layout-column layout-column--quarter">Recommended version:</div> <div class="project-update__version-details layout-column layout-column--quarter"> <a href="https://www.drupal.org/project/gin/releases/5.0.15">5.0.15</a> <span class="proj
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: Not supported! Drupal core 12.0-dev Includes: Enabled: Announcements, Automated 
   - Related element screenshot: candidate/reports-updates__default__light__table-cell.png
   - Related element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate/reports-updates__default__light__table-cell.png
   - Related page screenshot: candidate-pages/reports-updates__default__light__page.png
   - Related page screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260604-080909/element-compare/candidate-pages/reports-updates__default__light__page.png

```html
<td><div class="project-update__status project-update__status--not-supported gin-status gin-status--danger"> <span class="gin-status-icon"> <img src="/core/misc/icons/e32700/error.svg" width="18" height="18" alt="Error" title="Error" loading="lazy"> </span><span>Not supported!</span></div> <div class="project-update__title"><a href="https://www.drupal.org/project/drupal">Drupal core</a> 12.0-dev </div> <div class="project-update__details"> Includes: <ul> <li> Enabled: <em class="placeholder">Announcements, Automated Cron, BigPipe, Block, Block Content, Breakpoint, CKEditor 5, Comment, Configuration Manager, Contextual Links, Custom Menu Links, Database Logging, Datetime, Field, Field UI, File, Filter, Help, Image, Internal Dynamic Page Cache, Internal Page Cache, Layout Builder, Layout Dis
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
