# Admin Theme (dark) Structure Block Layout - Dropbutton Secondary Actions List style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Dropbutton Secondary Actions List** on **Structure Block Layout** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/structure/block
2. Open candidate page: http://drupal-12-git.ddev.site:8080/admin/structure/block
3. Inspect selector: .dropbutton-wrapper .dropbutton__items
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- height: 54.9%

## Likely CSS Sources
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: ul
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_SmEorym3UCGdaTpJg-JftpEuk3Z8NI0if_H2qH5C0O4.css?delta=1&language=en&theme=default_admin&include=eJxljmsOwjAMgy_Urkea0gcoWppUWYoQp6eDoSL4mc-O7UiStpC1N6AlHscCuSK7JGzlbh3oo07iCXnbh0VLSFKbcGHbF4YbXsFQ2HsToQjqYzcTflvPnKzSvjGLViB8FJfLBTrZ-loQZtyPcGQbtj_a1tHo5lvAMVh5VE72BB0SXh4 :: :where(*), :is(#extra-specificity-hack, [data-drupal-admin-styles])

## Candidate Theme Source Matches (default_admin)
- No direct selector match found under core/themes/default_admin/css

## Candidate Aggregate Libraries (decoded include= token)
- block/drupal.block.admin
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.dropbutton
- core/normalize
- default_admin/navigation
- default_admin/tooltip
- default_admin/top_bar
- navigation/internal.navigation

## Suggested CSS Patch (Confidence-Gated)
Confidence: **medium**

```css
ul {
  min-height: 58.3px; /* current ~90.3px */
}
```

## Evidence
- Baseline element screenshot: 
- Candidate element screenshot: 


- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Disable Remove

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: 100%; bottom: auto; max-height: 465.297px;"> <li class="disable dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block/manage/olivero_site_branding/disable?destination=/admin/structure/block&amp;token=2GCVzalycKD8AaxZBdcU_kMi3-YKBpAFho4uTiM0mFc">Disable</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block/manage/olivero_site_branding/delete?destination=/admin/structure/block" aria-label="Delete Site branding" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" data-once="ajax">Remove</a></li> </ul>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[6]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Disable Remove

```html
<ul class="dropbutton__items" style="position: absolute; overflow-y: auto; top: auto; bottom: 100%; max-height: 421.5px;"> <li class="disable dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block/manage/olivero_search_form_narrow/disable?destination=/admin/structure/block&amp;token=j_kUcR1ik7uczf6hjkv8n_G2dDEkWbFLC0lPf0MbZYE">Disable</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block/manage/olivero_search_form_narrow/delete?destination=/admin/structure/block" aria-label="Delete Search form (narrow)" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" data-once="ajax">Remove</a></li> </ul>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[3]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Disable Remove

```html
<ul class="dropbutton__items" style="position: fixed; left: 1145.38px; right: auto; top: 552.203px;"> <li class="disable dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block/manage/olivero_site_branding/disable?destination=/admin/structure/block&amp;token=lyc8zpBWpDZ3eyHCiBSn19U0AzX1pDZBvhadBGF9kBM">Disable</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block/manage/olivero_site_branding/delete?destination=/admin/structure/block" aria-label="Delete Site branding" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" data-once="ajax">Remove</a></li> </ul>
```

2. XPath: `/html[1]/body[1]/div[4]/div[2]/main[1]/div[4]/div[1]/form[1]/div[1]/div[2]/table[1]/tbody[1]/tr[6]/td[5]/div[1]/div[1]/ul[1]/li[3]/ul[1]`
   - Text sample: Disable Edit menu Remove

```html
<ul class="dropbutton__items" style="position: fixed; left: 1145.38px; right: auto; top: 735.203px;"> <li class="disable dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block/manage/olivero_main_menu/disable?destination=/admin/structure/block&amp;token=r-PtzBe42pgreSSWR1xOzBSvHYrhyFMix7gqK3nOjwc">Disable</a></li> <li class="menu-edit dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/menu/manage/main">Edit menu</a></li> <li class="delete dropbutton__item dropbutton-action secondary-action"><a href="/admin/structure/block/manage/olivero_main_menu/delete?destination=/admin/structure/block" aria-label="Delete Main navigation" class="use-ajax" data-dialog-type="modal" data-dialog-options="{&quot;width&quot;:880}" data-once="ajax">Remov
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
