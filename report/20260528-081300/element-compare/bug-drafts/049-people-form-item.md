# [Admin Theme][dark] People - Form Item Wrapper style regression vs Drupal 11 Gin

## Summary
Potential CSS regression in **Form Item Wrapper** on **People** when comparing Drupal 11 with Gin to Drupal 12 with Admin Theme.
Color mode: **dark**

## Steps To Reproduce
1. Open baseline page: http://drupal-11.3.10.ddev.site/admin/people
2. Open candidate page: http://drupal-git.ddev.site:8080/admin/people
3. Inspect selector: .form-item
4. Compare typography, spacing, sizing, and marker presence.

## Expected Result
Drupal 12 with Admin Theme should align with Drupal 11 with Gin for this component unless intentional and documented.

## Actual Result
- height: 11.2%

## Likely CSS Sources
- core/themes/default_admin/css/base/accents.css
- core/themes/default_admin/css/base/accents.pcss.css
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/base/font.css
- core/themes/default_admin/css/base/font.pcss.css
- core/themes/default_admin/css/base/icons.css
- core/themes/default_admin/css/base/icons.pcss.css
- core/themes/default_admin/css/base/media-queries.css
- core/themes/default_admin/css/base/media-queries.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css
- core/themes/default_admin/css/base/typography.css
- core/themes/default_admin/css/base/typography.pcss.css
- core/themes/default_admin/css/base/variables.css
- core/themes/default_admin/css/base/variables.pcss.css
- core/themes/default_admin/css/components/accordion.css
- core/themes/default_admin/css/components/accordion.pcss.css
- core/themes/default_admin/css/components/action-link.css
- core/themes/default_admin/css/components/action-link.pcss.css
- core/themes/default_admin/css/components/ajax-progress.module.css
- core/themes/default_admin/css/components/ajax-progress.module.pcss.css
- core/themes/default_admin/css/components/autocomplete-loading.module.css
- core/themes/default_admin/css/components/autocomplete-loading.module.pcss.css
- core/themes/default_admin/css/components/batch.css
- core/themes/default_admin/css/components/batch.pcss.css
- core/themes/default_admin/css/components/blocks.css
- core/themes/default_admin/css/components/blocks.pcss.css
- core/themes/default_admin/css/components/breadcrumb.css
- core/themes/default_admin/css/components/breadcrumb.pcss.css
- core/themes/default_admin/css/components/button.css
- core/themes/default_admin/css/components/button.pcss.css
- core/themes/default_admin/css/components/card.css
- core/themes/default_admin/css/components/card.pcss.css
- core/themes/default_admin/css/components/ckeditor5.css
- core/themes/default_admin/css/components/container-inline.css
- core/themes/default_admin/css/components/container-inline.module.css
- core/themes/default_admin/css/components/container-inline.module.pcss.css
- core/themes/default_admin/css/components/container-inline.pcss.css
- core/themes/default_admin/css/components/content-header.css
- core/themes/default_admin/css/components/content-header.pcss.css
- core/themes/default_admin/css/components/dblog.css
- core/themes/default_admin/css/components/dblog.pcss.css
- core/themes/default_admin/css/components/details.css
- core/themes/default_admin/css/components/details.pcss.css
- core/themes/default_admin/css/components/dialog.css
- core/themes/default_admin/css/components/dialog.pcss.css
- core/themes/default_admin/css/components/divider.css
- core/themes/default_admin/css/components/divider.pcss.css
- core/themes/default_admin/css/components/dropbutton-noscript.css
- core/themes/default_admin/css/components/dropbutton-noscript.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/entity-meta.css
- core/themes/default_admin/css/components/entity-meta.pcss.css
- core/themes/default_admin/css/components/fieldset.css
- core/themes/default_admin/css/components/fieldset.pcss.css
- core/themes/default_admin/css/components/file.css
- core/themes/default_admin/css/components/file.pcss.css
- core/themes/default_admin/css/components/form--checkbox-radio.css
- core/themes/default_admin/css/components/form--checkbox-radio.pcss.css
- core/themes/default_admin/css/components/form--checkbox-toggle.css
- core/themes/default_admin/css/components/form--checkbox-toggle.pcss.css
- core/themes/default_admin/css/components/form--field-multiple.css
- core/themes/default_admin/css/components/form--field-multiple.pcss.css
- core/themes/default_admin/css/components/form--managed-file.css
- core/themes/default_admin/css/components/form--managed-file.pcss.css
- core/themes/default_admin/css/components/form--password-confirm.css
- core/themes/default_admin/css/components/form--password-confirm.pcss.css
- core/themes/default_admin/css/components/form--select.css
- core/themes/default_admin/css/components/form--select.pcss.css
- core/themes/default_admin/css/components/form--text.css
- core/themes/default_admin/css/components/form--text.pcss.css
- core/themes/default_admin/css/components/form-inline.css
- core/themes/default_admin/css/components/form-inline.pcss.css
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/help.css
- core/themes/default_admin/css/components/help.pcss.css
- core/themes/default_admin/css/components/icon-link.css
- core/themes/default_admin/css/components/icon-link.pcss.css
- core/themes/default_admin/css/components/image-preview.css
- core/themes/default_admin/css/components/image-preview.pcss.css
- core/themes/default_admin/css/components/image.admin.css
- core/themes/default_admin/css/components/image.admin.pcss.css
- core/themes/default_admin/css/components/jquery.ui/theme.css
- core/themes/default_admin/css/components/jquery.ui/theme.pcss.css
- core/themes/default_admin/css/components/layers.css
- core/themes/default_admin/css/components/layers.pcss.css
- core/themes/default_admin/css/components/local-actions.css
- core/themes/default_admin/css/components/local-actions.pcss.css
- core/themes/default_admin/css/components/media-library.ui.css
- core/themes/default_admin/css/components/media-library.ui.pcss.css
- core/themes/default_admin/css/components/media.css
- core/themes/default_admin/css/components/menus-and-lists.css
- core/themes/default_admin/css/components/menus-and-lists.pcss.css
- core/themes/default_admin/css/components/messages.css
- core/themes/default_admin/css/components/messages.pcss.css
- core/themes/default_admin/css/components/modules-page.css
- core/themes/default_admin/css/components/modules-page.pcss.css
- core/themes/default_admin/css/components/node-preview.css
- core/themes/default_admin/css/components/node.css
- core/themes/default_admin/css/components/page-title.css
- core/themes/default_admin/css/components/page-title.pcss.css
- core/themes/default_admin/css/components/pager.css
- core/themes/default_admin/css/components/pager.pcss.css
- core/themes/default_admin/css/components/performance.css
- core/themes/default_admin/css/components/performance.pcss.css
- core/themes/default_admin/css/components/progress.css
- core/themes/default_admin/css/components/progress.pcss.css
- core/themes/default_admin/css/components/search-admin-settings.css
- core/themes/default_admin/css/components/search-admin-settings.pcss.css
- core/themes/default_admin/css/components/shortcut.css
- core/themes/default_admin/css/components/shortcut.pcss.css
- core/themes/default_admin/css/components/skip-link.css
- core/themes/default_admin/css/components/skip-link.pcss.css
- core/themes/default_admin/css/components/system-admin--admin-list.css
- core/themes/default_admin/css/components/system-admin--admin-list.pcss.css
- core/themes/default_admin/css/components/system-admin--links.css
- core/themes/default_admin/css/components/system-admin--links.pcss.css
- core/themes/default_admin/css/components/system-admin--modules.css
- core/themes/default_admin/css/components/system-admin--modules.pcss.css
- core/themes/default_admin/css/components/system-admin--panel.css
- core/themes/default_admin/css/components/system-admin--panel.pcss.css
- core/themes/default_admin/css/components/system-status-counter.css
- core/themes/default_admin/css/components/system-status-counter.pcss.css
- core/themes/default_admin/css/components/system-status-report-counters.css
- core/themes/default_admin/css/components/system-status-report-counters.pcss.css
- core/themes/default_admin/css/components/system-status-report-general-info.css
- core/themes/default_admin/css/components/system-status-report-general-info.pcss.css
- core/themes/default_admin/css/components/system-status-report.css
- core/themes/default_admin/css/components/system-status-report.pcss.css
- core/themes/default_admin/css/components/system-themes.css
- core/themes/default_admin/css/components/table--file-multiple-widget.css
- core/themes/default_admin/css/components/table--file-multiple-widget.pcss.css
- core/themes/default_admin/css/components/tabledrag.css
- core/themes/default_admin/css/components/tabledrag.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css
- core/themes/default_admin/css/components/tableselect.css
- core/themes/default_admin/css/components/tableselect.pcss.css
- core/themes/default_admin/css/components/tablesort-indicator.css
- core/themes/default_admin/css/components/tablesort-indicator.pcss.css
- core/themes/default_admin/css/components/tabs.css
- core/themes/default_admin/css/components/tabs.pcss.css
- core/themes/default_admin/css/components/toolbar.module.css
- core/themes/default_admin/css/components/toolbar.module.pcss.css
- core/themes/default_admin/css/components/update.css
- core/themes/default_admin/css/components/update.pcss.css
- core/themes/default_admin/css/components/user.admin.css
- core/themes/default_admin/css/components/user.admin.pcss.css
- core/themes/default_admin/css/components/vertical-tabs.css
- core/themes/default_admin/css/components/vertical-tabs.pcss.css
- core/themes/default_admin/css/components/views-exposed-form.css
- core/themes/default_admin/css/components/views-exposed-form.pcss.css
- core/themes/default_admin/css/components/views-ui-noscript.css
- core/themes/default_admin/css/components/views-ui-noscript.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css
- core/themes/default_admin/css/layout/breadcrumb.css
- core/themes/default_admin/css/layout/breadcrumb.pcss.css
- core/themes/default_admin/css/layout/card-list.css
- core/themes/default_admin/css/layout/card-list.pcss.css
- core/themes/default_admin/css/layout/form-two-columns.css
- core/themes/default_admin/css/layout/form-two-columns.pcss.css
- core/themes/default_admin/css/layout/layout.css
- core/themes/default_admin/css/layout/layout.pcss.css
- core/themes/default_admin/css/layout/system-admin--layout.css
- core/themes/default_admin/css/layout/system-admin--layout.pcss.css
- core/themes/default_admin/css/state/toolbar.menu.css
- core/themes/default_admin/css/state/toolbar.menu.pcss.css
- core/themes/default_admin/css/theme/accent.css
- core/themes/default_admin/css/theme/accent.pcss.css
- core/themes/default_admin/css/theme/colors.css
- core/themes/default_admin/css/theme/colors.pcss.css
- core/themes/default_admin/css/theme/field-ui.admin.css
- core/themes/default_admin/css/theme/field-ui.admin.pcss.css
- core/themes/default_admin/css/theme/filter.theme.css
- core/themes/default_admin/css/theme/filter.theme.pcss.css
- core/themes/default_admin/css/theme/install-page.css
- core/themes/default_admin/css/theme/install-page.pcss.css
- core/themes/default_admin/css/theme/maintenance-page.css
- core/themes/default_admin/css/theme/maintenance-page.pcss.css
- core/themes/default_admin/css/theme/media-library.css
- core/themes/default_admin/css/theme/media-library.pcss.css
- core/themes/default_admin/css/theme/toolbar.icons.theme.css
- core/themes/default_admin/css/theme/toolbar.icons.theme.pcss.css
- core/themes/default_admin/css/theme/toolbar.theme.css
- core/themes/default_admin/css/theme/toolbar.theme.pcss.css

## Candidate Matched CSS Rules
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: *
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: .form-item
- http://drupal-git.ddev.site:8080/sites/default/files/css/css_pQRgX_EV-XMy29dV1bnHvAzBBjIF2ApNw3NTqxRXjkM.css?delta=1&language=en&theme=claro&include=eJxtj0kOwzAIRS8Ux2fCDrJoCVgYp8Ppa7WRIkvdsHi8z5AZTGNhTcCh-YtJypJVHJ_egeNmvQKvFwnDuLehGMase1VB8bYKHFTASSUEV-UEFlJ3V_mp5xy4wXMCGwFrmZFp_RMlx30sbz5Rw4YeoFYEA8k4NR0SY1M7I6K2A9Mbl-vaSOMxkyFfbDkIHy1-67rr1hk_PsNyow :: .views-exposed-form__item

## Candidate Theme Source Matches (default_admin)
- core/themes/default_admin/css/base/accents.css
- core/themes/default_admin/css/base/accents.pcss.css
- core/themes/default_admin/css/base/elements.css
- core/themes/default_admin/css/base/elements.pcss.css
- core/themes/default_admin/css/base/font.css
- core/themes/default_admin/css/base/font.pcss.css
- core/themes/default_admin/css/base/icons.css
- core/themes/default_admin/css/base/icons.pcss.css
- core/themes/default_admin/css/base/media-queries.css
- core/themes/default_admin/css/base/media-queries.pcss.css
- core/themes/default_admin/css/base/print.css
- core/themes/default_admin/css/base/print.pcss.css
- core/themes/default_admin/css/base/typography.css
- core/themes/default_admin/css/base/typography.pcss.css
- core/themes/default_admin/css/base/variables.css
- core/themes/default_admin/css/base/variables.pcss.css
- core/themes/default_admin/css/components/accordion.css
- core/themes/default_admin/css/components/accordion.pcss.css
- core/themes/default_admin/css/components/action-link.css
- core/themes/default_admin/css/components/action-link.pcss.css
- core/themes/default_admin/css/components/ajax-progress.module.css
- core/themes/default_admin/css/components/ajax-progress.module.pcss.css
- core/themes/default_admin/css/components/autocomplete-loading.module.css
- core/themes/default_admin/css/components/autocomplete-loading.module.pcss.css
- core/themes/default_admin/css/components/batch.css
- core/themes/default_admin/css/components/batch.pcss.css
- core/themes/default_admin/css/components/blocks.css
- core/themes/default_admin/css/components/blocks.pcss.css
- core/themes/default_admin/css/components/breadcrumb.css
- core/themes/default_admin/css/components/breadcrumb.pcss.css
- core/themes/default_admin/css/components/button.css
- core/themes/default_admin/css/components/button.pcss.css
- core/themes/default_admin/css/components/card.css
- core/themes/default_admin/css/components/card.pcss.css
- core/themes/default_admin/css/components/ckeditor5.css
- core/themes/default_admin/css/components/container-inline.css
- core/themes/default_admin/css/components/container-inline.module.css
- core/themes/default_admin/css/components/container-inline.module.pcss.css
- core/themes/default_admin/css/components/container-inline.pcss.css
- core/themes/default_admin/css/components/content-header.css
- core/themes/default_admin/css/components/content-header.pcss.css
- core/themes/default_admin/css/components/dblog.css
- core/themes/default_admin/css/components/dblog.pcss.css
- core/themes/default_admin/css/components/details.css
- core/themes/default_admin/css/components/details.pcss.css
- core/themes/default_admin/css/components/dialog.css
- core/themes/default_admin/css/components/dialog.pcss.css
- core/themes/default_admin/css/components/divider.css
- core/themes/default_admin/css/components/divider.pcss.css
- core/themes/default_admin/css/components/dropbutton-noscript.css
- core/themes/default_admin/css/components/dropbutton-noscript.pcss.css
- core/themes/default_admin/css/components/dropbutton.css
- core/themes/default_admin/css/components/dropbutton.pcss.css
- core/themes/default_admin/css/components/entity-meta.css
- core/themes/default_admin/css/components/entity-meta.pcss.css
- core/themes/default_admin/css/components/fieldset.css
- core/themes/default_admin/css/components/fieldset.pcss.css
- core/themes/default_admin/css/components/file.css
- core/themes/default_admin/css/components/file.pcss.css
- core/themes/default_admin/css/components/form--checkbox-radio.css
- core/themes/default_admin/css/components/form--checkbox-radio.pcss.css
- core/themes/default_admin/css/components/form--checkbox-toggle.css
- core/themes/default_admin/css/components/form--checkbox-toggle.pcss.css
- core/themes/default_admin/css/components/form--field-multiple.css
- core/themes/default_admin/css/components/form--field-multiple.pcss.css
- core/themes/default_admin/css/components/form--managed-file.css
- core/themes/default_admin/css/components/form--managed-file.pcss.css
- core/themes/default_admin/css/components/form--password-confirm.css
- core/themes/default_admin/css/components/form--password-confirm.pcss.css
- core/themes/default_admin/css/components/form--select.css
- core/themes/default_admin/css/components/form--select.pcss.css
- core/themes/default_admin/css/components/form--text.css
- core/themes/default_admin/css/components/form--text.pcss.css
- core/themes/default_admin/css/components/form-inline.css
- core/themes/default_admin/css/components/form-inline.pcss.css
- core/themes/default_admin/css/components/form.css
- core/themes/default_admin/css/components/form.pcss.css
- core/themes/default_admin/css/components/help.css
- core/themes/default_admin/css/components/help.pcss.css
- core/themes/default_admin/css/components/icon-link.css
- core/themes/default_admin/css/components/icon-link.pcss.css
- core/themes/default_admin/css/components/image-preview.css
- core/themes/default_admin/css/components/image-preview.pcss.css
- core/themes/default_admin/css/components/image.admin.css
- core/themes/default_admin/css/components/image.admin.pcss.css
- core/themes/default_admin/css/components/jquery.ui/theme.css
- core/themes/default_admin/css/components/jquery.ui/theme.pcss.css
- core/themes/default_admin/css/components/layers.css
- core/themes/default_admin/css/components/layers.pcss.css
- core/themes/default_admin/css/components/local-actions.css
- core/themes/default_admin/css/components/local-actions.pcss.css
- core/themes/default_admin/css/components/media-library.ui.css
- core/themes/default_admin/css/components/media-library.ui.pcss.css
- core/themes/default_admin/css/components/media.css
- core/themes/default_admin/css/components/menus-and-lists.css
- core/themes/default_admin/css/components/menus-and-lists.pcss.css
- core/themes/default_admin/css/components/messages.css
- core/themes/default_admin/css/components/messages.pcss.css
- core/themes/default_admin/css/components/modules-page.css
- core/themes/default_admin/css/components/modules-page.pcss.css
- core/themes/default_admin/css/components/node-preview.css
- core/themes/default_admin/css/components/node.css
- core/themes/default_admin/css/components/page-title.css
- core/themes/default_admin/css/components/page-title.pcss.css
- core/themes/default_admin/css/components/pager.css
- core/themes/default_admin/css/components/pager.pcss.css
- core/themes/default_admin/css/components/performance.css
- core/themes/default_admin/css/components/performance.pcss.css
- core/themes/default_admin/css/components/progress.css
- core/themes/default_admin/css/components/progress.pcss.css
- core/themes/default_admin/css/components/search-admin-settings.css
- core/themes/default_admin/css/components/search-admin-settings.pcss.css
- core/themes/default_admin/css/components/shortcut.css
- core/themes/default_admin/css/components/shortcut.pcss.css
- core/themes/default_admin/css/components/skip-link.css
- core/themes/default_admin/css/components/skip-link.pcss.css
- core/themes/default_admin/css/components/system-admin--admin-list.css
- core/themes/default_admin/css/components/system-admin--admin-list.pcss.css
- core/themes/default_admin/css/components/system-admin--links.css
- core/themes/default_admin/css/components/system-admin--links.pcss.css
- core/themes/default_admin/css/components/system-admin--modules.css
- core/themes/default_admin/css/components/system-admin--modules.pcss.css
- core/themes/default_admin/css/components/system-admin--panel.css
- core/themes/default_admin/css/components/system-admin--panel.pcss.css
- core/themes/default_admin/css/components/system-status-counter.css
- core/themes/default_admin/css/components/system-status-counter.pcss.css
- core/themes/default_admin/css/components/system-status-report-counters.css
- core/themes/default_admin/css/components/system-status-report-counters.pcss.css
- core/themes/default_admin/css/components/system-status-report-general-info.css
- core/themes/default_admin/css/components/system-status-report-general-info.pcss.css
- core/themes/default_admin/css/components/system-status-report.css
- core/themes/default_admin/css/components/system-status-report.pcss.css
- core/themes/default_admin/css/components/system-themes.css
- core/themes/default_admin/css/components/table--file-multiple-widget.css
- core/themes/default_admin/css/components/table--file-multiple-widget.pcss.css
- core/themes/default_admin/css/components/tabledrag.css
- core/themes/default_admin/css/components/tabledrag.pcss.css
- core/themes/default_admin/css/components/tables.css
- core/themes/default_admin/css/components/tables.pcss.css
- core/themes/default_admin/css/components/tableselect.css
- core/themes/default_admin/css/components/tableselect.pcss.css
- core/themes/default_admin/css/components/tablesort-indicator.css
- core/themes/default_admin/css/components/tablesort-indicator.pcss.css
- core/themes/default_admin/css/components/tabs.css
- core/themes/default_admin/css/components/tabs.pcss.css
- core/themes/default_admin/css/components/toolbar.module.css
- core/themes/default_admin/css/components/toolbar.module.pcss.css
- core/themes/default_admin/css/components/update.css
- core/themes/default_admin/css/components/update.pcss.css
- core/themes/default_admin/css/components/user.admin.css
- core/themes/default_admin/css/components/user.admin.pcss.css
- core/themes/default_admin/css/components/vertical-tabs.css
- core/themes/default_admin/css/components/vertical-tabs.pcss.css
- core/themes/default_admin/css/components/views-exposed-form.css
- core/themes/default_admin/css/components/views-exposed-form.pcss.css
- core/themes/default_admin/css/components/views-ui-noscript.css
- core/themes/default_admin/css/components/views-ui-noscript.pcss.css
- core/themes/default_admin/css/components/views-ui.css
- core/themes/default_admin/css/components/views-ui.pcss.css
- core/themes/default_admin/css/layout/breadcrumb.css
- core/themes/default_admin/css/layout/breadcrumb.pcss.css
- core/themes/default_admin/css/layout/card-list.css
- core/themes/default_admin/css/layout/card-list.pcss.css
- core/themes/default_admin/css/layout/form-two-columns.css
- core/themes/default_admin/css/layout/form-two-columns.pcss.css
- core/themes/default_admin/css/layout/layout.css
- core/themes/default_admin/css/layout/layout.pcss.css
- core/themes/default_admin/css/layout/system-admin--layout.css
- core/themes/default_admin/css/layout/system-admin--layout.pcss.css
- core/themes/default_admin/css/state/toolbar.menu.css
- core/themes/default_admin/css/state/toolbar.menu.pcss.css
- core/themes/default_admin/css/theme/accent.css
- core/themes/default_admin/css/theme/accent.pcss.css
- core/themes/default_admin/css/theme/colors.css
- core/themes/default_admin/css/theme/colors.pcss.css
- core/themes/default_admin/css/theme/field-ui.admin.css
- core/themes/default_admin/css/theme/field-ui.admin.pcss.css
- core/themes/default_admin/css/theme/filter.theme.css
- core/themes/default_admin/css/theme/filter.theme.pcss.css
- core/themes/default_admin/css/theme/install-page.css
- core/themes/default_admin/css/theme/install-page.pcss.css
- core/themes/default_admin/css/theme/maintenance-page.css
- core/themes/default_admin/css/theme/maintenance-page.pcss.css
- core/themes/default_admin/css/theme/media-library.css
- core/themes/default_admin/css/theme/media-library.pcss.css
- core/themes/default_admin/css/theme/toolbar.icons.theme.css
- core/themes/default_admin/css/theme/toolbar.icons.theme.pcss.css
- core/themes/default_admin/css/theme/toolbar.theme.css
- core/themes/default_admin/css/theme/toolbar.theme.pcss.css

## Candidate Aggregate Libraries (decoded include= token)
- claro/global-styling
- contextual/drupal.contextual-links
- core/components.navigation--toolbar-button
- core/drupal.ajax
- core/drupal.dialog
- core/drupal.dropbutton
- core/drupal.item-list
- core/drupal.reset-appearance
- core/drupal.tablesort
- core/normalize
- navigation/internal.navigation
- views/views.module

## Suggested CSS Patch (Confidence-Gated)
No high-confidence automatic patch suggestion for this diff.

## Evidence
- Baseline element screenshot: baseline/people__dark__form-item.png
- Candidate element screenshot: candidate/people__dark__form-item.png
- Baseline element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-081300/element-compare/baseline/people__dark__form-item.png
- Candidate element screenshot (GitHub): https://github.com/mgifford/drupal-diff/blob/main/report/20260528-081300/element-compare/candidate/people__dark__form-item.png
- Dashboard: ../element-compare-dashboard.html

## DOM Evidence (XPath + HTML Snippets)
### Drupal 11 with Gin
1. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]`
   - Text sample: Name or email contains

```html
<div class="views-exposed-form__item js-form-item form-item js-form-type-textfield form-type--textfield js-form-item-user form-item--user"> <label for="edit-user" class="form-item__label">Name or email contains</label> <input data-drupal-selector="edit-user" type="text" id="edit-user" name="user" value="" size="30" maxlength="128" class="form-text form-element form-element--type-text form-element--api-textfield" style=""> </div>
```

2. XPath: `/html[1]/body[1]/div[2]/div[5]/main[1]/div[4]/div[1]/div[1]/div[1]/div[1]/form[1]/div[2]`
   - Text sample: Status - Any - Active Blocked

```html
<div class="views-exposed-form__item js-form-item form-item js-form-type-select form-type--select js-form-item-status form-item--status"> <label for="edit-status" class="form-item__label">Status</label> <select data-drupal-selector="edit-status" id="edit-status" name="status" class="form-select form-element form-element--type-select"> <option value="All" selected="selected">- Any -</option> <option value="1">Active</option> <option value="2">Blocked</option> </select> </div>
```

### Drupal 12 with Admin Theme
1. XPath: `/html[1]/body[1]/div[3]/main[1]/div[2]/div[2]/div[3]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]`
   - Text sample: Name or email contains

```html
<div class="views-exposed-form__item js-form-item form-item js-form-type-textfield form-type--textfield js-form-item-user form-item--user"> <label for="edit-user" class="form-item__label">Name or email contains</label> <input data-drupal-selector="edit-user" type="text" id="edit-user" name="user" value="" size="30" maxlength="128" class="form-text form-element form-element--type-text form-element--api-textfield" style=""> </div>
```

2. XPath: `/html[1]/body[1]/div[3]/main[1]/div[2]/div[2]/div[3]/div[2]/div[1]/div[1]/div[1]/form[1]/div[2]`
   - Text sample: Status - Any - Active Blocked

```html
<div class="views-exposed-form__item js-form-item form-item js-form-type-select form-type--select js-form-item-status form-item--status"> <label for="edit-status" class="form-item__label">Status</label> <select data-drupal-selector="edit-status" id="edit-status" name="status" class="form-select form-element form-element--type-select"> <option value="All" selected="selected">- Any -</option> <option value="1">Active</option> <option value="2">Blocked</option> </select> </div>
```

## Notes
- Validate whether this is planned design change or unplanned regression.
- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.
