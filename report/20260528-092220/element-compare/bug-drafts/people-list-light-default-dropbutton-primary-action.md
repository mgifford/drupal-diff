# Admin Theme (light) People List - Dropbutton Primary Action Link style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Primary Action Link** on **People List** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/people
3. Inspect selector: .dropbutton-wrapper .dropbutton__item.dropbutton-action > a
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- paddingX: -10.3%

## Likely CSS Sources
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VXGYFfzgLhgAI_x_aaiEDS39VwTBW5zhmbThW43RvU0.css?delta=0&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: a
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: a, .link, button.link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: a, .link
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/elements.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/base/elements.pcss.css (score: 2; selectors: .link, button.link)
- core/themes/default_admin/css/components/dropbutton.css (score: 2; selectors: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button)
- core/themes/default_admin/css/components/dropbutton.pcss.css (score: 2; selectors: .dropbutton > .dropbutton__item > a, .dropbutton > .dropbutton__item > .button)
- core/themes/default_admin/css/base/print.css (score: 1; selectors: .link)
- core/themes/default_admin/css/base/print.pcss.css (score: 1; selectors: .link)

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.item-list
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
- Baseline element screenshot: baseline/people-list__default__light__dropbutton-primary-action.png
- Candidate element screenshot: candidate/people-list__default__light__dropbutton-primary-action.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people-list__default__light__dropbutton-primary-action.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people-list__default__light__dropbutton-primary-action.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit

```html
<a href="/user/2/edit?destination=/admin/people" aria-label="Edit editor1" hreflang="en">Edit</a>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: View

```html
<a href="/user/2?destination=/admin/people" aria-label="View editor1" hreflang="en">View</a>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]/div[1]/ul[1]/li[1]/a[1]`
   - Text sample: Edit

```html
<a href="/user/2/edit?destination=/admin/people" aria-label="Edit editor1" hreflang="en">Edit</a>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/table[1]/tbody[1]/tr[1]/td[7]/div[1]/div[1]/ul[1]/li[3]/ul[1]/li[1]/a[1]`
   - Text sample: View

```html
<a href="/user/2?destination=/admin/people" aria-label="View editor1" hreflang="en">View</a>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
