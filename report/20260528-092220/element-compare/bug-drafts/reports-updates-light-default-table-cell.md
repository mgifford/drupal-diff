# Admin Theme (light) Reports Updates - Table Body Cell style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Table Body Cell** on **Reports Updates** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/reports/updates
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/reports/updates
3. Inspect selector: table tbody td
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- height: 35.5%
- count: -2 (-66.7%)

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_rHge8RKVx8Vh0Fqvv4tkMxUPT5OBnlMFrAlyqdzDMKA.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_rHge8RKVx8Vh0Fqvv4tkMxUPT5OBnlMFrAlyqdzDMKA.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_rHge8RKVx8Vh0Fqvv4tkMxUPT5OBnlMFrAlyqdzDMKA.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: td
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_rHge8RKVx8Vh0Fqvv4tkMxUPT5OBnlMFrAlyqdzDMKA.css?delta=1&language=en&theme=default_admin&include=eJxlj2sOAiEMhC8Ey5E25SFpLC2BYtTTi27WNevPzrTfdIKwprsOIBfbqEBL-CqWkK_dBGnJBSlVOLH2heGGGRSFrVUR8tCsH6rC2ypLK0D4TCamCwzSFWJBdpnET2jXx-Tmk3lAT8Y7QbH-qXWdueY4czjfbjwL_KBGjaBpb7ZNy4fwAnjLYVM :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

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
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/reports-updates__default__light__table-cell.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/reports-updates__default__light__table-cell.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: Update available Drupal core 11.3.10 Recommended version: 11.3.11 (2026-May-28) 

```html
<td><div class="project-update__status project-update__status--not-current gin-status gin-status--warning"> <span class="gin-status-icon"> <img src="/core/misc/icons/e29700/warning.svg" width="18" height="18" alt="Warning" title="Warning" loading="lazy"> </span><span>Update available</span></div> <div class="project-update__title"><a href="https://www.drupal.org/project/drupal">Drupal core</a> 11.3.10 </div> <div class="project-update__version--recommended project-update__version"> <div class="layout-row clearfix"> <div class="project-update__version-title layout-column layout-column--quarter">Recommended version:</div> <div class="project-update__version-details layout-column layout-column--quarter"> <a href="https://www.drupal.org/project/drupal/releases/11.3.11">11.3.11</a> <span class=
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: Update available Gin Admin Theme 5.0.13 Recommended version: 5.0.14 (2026-May-27

```html
<td><div class="project-update__status project-update__status--not-current gin-status gin-status--warning"> <span class="gin-status-icon"> <img src="/core/misc/icons/e29700/warning.svg" width="18" height="18" alt="Warning" title="Warning" loading="lazy"> </span><span>Update available</span></div> <div class="project-update__title"><a href="https://www.drupal.org/project/gin">Gin Admin Theme</a> 5.0.13 </div> <div class="project-update__version--recommended project-update__version"> <div class="layout-row clearfix"> <div class="project-update__version-title layout-column layout-column--quarter">Recommended version:</div> <div class="project-update__version-details layout-column layout-column--quarter"> <a href="https://www.drupal.org/project/gin/releases/5.0.14">5.0.14</a> <span class="proj
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]`
   - Text sample: Not supported! Drupal core 12.0-dev Includes: Enabled: Announcements, Automated 

```html
<td><div class="project-update__status project-update__status--not-supported gin-status gin-status--danger"> <span class="gin-status-icon"> <img src="/core/misc/icons/e32700/error.svg" width="18" height="18" alt="Error" title="Error" loading="lazy"> </span><span>Not supported!</span></div> <div class="project-update__title"><a href="https://www.drupal.org/project/drupal">Drupal core</a> 12.0-dev </div> <div class="project-update__details"> Includes: <ul> <li> Enabled: <em class="placeholder">Announcements, Automated Cron, BigPipe, Block, Block Content, Breakpoint, CKEditor 5, Configuration Manager, Contextual Links, Custom Menu Links, Database Logging, Datetime, Field, Field UI, File, Filter, Help, Image, Internal Dynamic Page Cache, Internal Page Cache, Layout Builder, Layout Discovery, L
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
