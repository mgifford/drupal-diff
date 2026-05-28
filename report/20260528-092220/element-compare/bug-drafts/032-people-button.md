# Admin Theme (light) People - Button style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Button** on **People** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people
3. Inspect selector: button, input[type="submit"], .button
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- fontSize: 5.7%
- paddingY: 56.9%
- paddingX: 38.3%
- width: 138.5%
- height: 163.2%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VXGYFfzgLhgAI_x_aaiEDS39VwTBW5zhmbThW43RvU0.css
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VXGYFfzgLhgAI_x_aaiEDS39VwTBW5zhmbThW43RvU0.css?delta=0&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: button, input, optgroup, select, textarea
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VXGYFfzgLhgAI_x_aaiEDS39VwTBW5zhmbThW43RvU0.css?delta=0&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: button, input
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VXGYFfzgLhgAI_x_aaiEDS39VwTBW5zhmbThW43RvU0.css?delta=0&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: button, select
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_VXGYFfzgLhgAI_x_aaiEDS39VwTBW5zhmbThW43RvU0.css?delta=0&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: button, [type="button"], [type="reset"], [type="submit"]
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: button
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LSDC0mQSUYUe-MIxUavBq49SD8SI93myoZ4iAI6BEZk.css?delta=1&language=en&theme=default_admin&include=eJxtkEsSwiAMQC_UliM5AWInGhIGgr_Ti9qxVt1k8fJ9CSqGF2vALpaWgafwJiOTHOsQtKALmrIKitVJ4EQzGKmMo6myhzL6ZqbyKl3mwAEuGxAJWOctKpr_tJJh6surbaiBZ6zIGP5xLQsVLQmYbjhE3ENj20FMJG5m9d2p2rVrzV_J1ekr8RA0yj8077r2sLY56l8r0s_5GHUiPFf3jFPS2BjvqO2PIQ :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

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
Confidence: **medium**

```css
button, input, optgroup, select, textarea {
  font-size: 13.3px; /* current ~14px */
  padding-block: 12.8px; /* current ~20px */
  padding-inline: 16.6px; /* current ~23px */
}
```

## Evidence
- Baseline element screenshot: baseline/people__light__button.png
- Candidate element screenshot: candidate/people__light__button.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/baseline/people__light__button.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-092220/element-compare/candidate/people__light__button.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[1]/nav[1]/div[2]/div[1]/nav[1]/div[2]/div[1]/button[1]`
   - Text sample: Vertical orientation

```html
<button class="toolbar-icon toolbar-icon-toggle-vertical" type="button" value="vertical" title="Vertical orientation">Vertical orientation</button>
```

2. XPath: `/html[1]/body[1]/div[1]/nav[1]/div[3]/div[1]/nav[1]/div[1]/div[1]/button[1]`

```html
<button class="toolbar-icon toolbar-icon-toggle-vertical" type="button" title="Vertical orientation"></button>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[1]/div[1]/button[1]`
   - Text sample: Collapse sidebar

```html
<button data-drupal-selector="admin-toolbar-mobile-trigger" aria-expanded="true" aria-controls="admin-toolbar" type="button" data-component-id="navigation:toolbar-button" data-index-text="e" data-icon-text="Ex" class="toolbar-button toolbar-button--icon--burger toolbar-button--small-offset admin-toolbar-control-bar__burger" data-once="admin-toolbar-trigger"> <svg fill="none" viewBox="0 0 18 14" class="toolbar-button__icon" width="20" height="20" aria-hidden="true"> <path stroke="#55565B" stroke-width="2" d="M0 1h18M0 7h18M0 13h18"></path> </svg> <span class="toolbar-button__label" data-toolbar-text="">Collapse sidebar</span> </button>
```

2. XPath: `/html[1]/body[1]/aside[1]/nav[1]/div[1]/div[1]/button[1]`
   - Text sample: Back

```html
<button data-toolbar-back-control="" tabindex="-1" data-component-id="navigation:toolbar-button" data-index-text="b" data-icon-text="Ba" class="toolbar-button toolbar-button--icon--arrow-left admin-toolbar__back-button"> <svg viewBox="0 0 16 16" class="toolbar-button__icon" width="20" height="20" aria-hidden="true"> <path d="M14.2501 7.99994c0 .19892-.079.38968-.2197.53033-.1406.14066-.3314.21967-.5303.21967H4.3126l3.22 3.21936c.1409.1409.22005.332.22005.5313 0 .1992-.07915.3903-.22005.5312-.14089.1409-.33199.2201-.53125.2201-.19925 0-.39035-.0792-.53125-.2201l-4.5-4.49998c-.06992-.06968-.12539-.15247-.16325-.24364-.03785-.09116-.05734-.1889-.05734-.28761 0-.09871.01949-.19645.05734-.28762.03786-.09116.09333-.17395.16325-.24363l4.5-4.5c.06977-.06977.15259-.12511.24374-.16286.09115-.03776.1
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
