# Admin Theme (light) People Roles - Dropbutton Secondary Actions List style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Secondary Actions List** on **People Roles** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **light**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people/roles
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people/roles
3. Inspect selector: .dropbutton-wrapper .dropbutton__items
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- width: -13.0%
- height: 13.9%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkNEOwjAIRX9oXT9pYS02VQYNpWb69da4uGz6ei6XcAjChqs1IB-1FaAxfImjzLc6BFH0QZYijGx1ZLjnBJaFnTMRmkHd3MyEP6PbHrjCegAxA0k6IpXyp6pY0RyUgqDAAQ-hwUwYFbZNLLoA5ScOES_QyCaIS2afSOauUO3RLdIp3BVOwdvHcvmhZeqWw17zuT9JuZ-zsxeJl4ES :: ul
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkNEOwjAIRX9oXT9pYS02VQYNpWb69da4uGz6ei6XcAjChqs1IB-1FaAxfImjzLc6BFH0QZYijGx1ZLjnBJaFnTMRmkHd3MyEP6PbHrjCegAxA0k6IpXyp6pY0RyUgqDAAQ-hwUwYFbZNLLoA5ScOES_QyCaIS2afSOauUO3RLdIp3BVOwdvHcvmhZeqWw17zuT9JuZ-zsxeJl4ES :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_LxgsxtyChIdi0pZuIoZxdfReWzQuwQSWNhF3N54e2KQ.css?delta=1&language=en&theme=default_admin&include=eJxtkNEOwjAIRX9oXT9pYS02VQYNpWb69da4uGz6ei6XcAjChqs1IB-1FaAxfImjzLc6BFH0QZYijGx1ZLjnBJaFnTMRmkHd3MyEP6PbHrjCegAxA0k6IpXyp6pY0RyUgqDAAQ-hwUwYFbZNLLoA5ScOES_QyCaIS2afSOauUO3RLdIp3BVOwdvHcvmhZeqWw17zuT9JuZ-zsxeJl4ES :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

## Candidate Aggregate Libraries (decoded include= token)
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.reset-appearance
- core/drupal.tabledrag
- core/normalize
- default_admin/global-styling
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
Confidence: **medium**

```css
ul {
  min-height: 57.5px; /* current ~65.5px */
}
```

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: 


- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Edit permissions

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 552.5px;"> <li class="permissions dropbutton__item dropbutton-action secondary-action"><a href="/admin/people/permissions/anonymous">Edit permissions</a></li> </ul>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Edit permissions

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 470.5px;"> <li class="permissions dropbutton__item dropbutton-action secondary-action"><a href="/admin/people/permissions/authenticated">Edit permissions</a></li> </ul>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Edit permissions

```html
<ul class="dropbutton__items" style="position: fixed; left: 1053.22px; right: auto; top: 440.203px;"> <li class="permissions dropbutton__item dropbutton-action secondary-action"><a href="/admin/people/permissions/anonymous">Edit permissions</a></li> </ul>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[2]/td[3]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Edit permissions

```html
<ul class="dropbutton__items" style="position: fixed; left: 1053.22px; right: auto; top: 517.203px;"> <li class="permissions dropbutton__item dropbutton-action secondary-action"><a href="/admin/people/permissions/authenticated">Edit permissions</a></li> </ul>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
