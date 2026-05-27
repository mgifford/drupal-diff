# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/appearance.spec.ts >> appearance-list >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 378px by 3435px, received 375px by 3303px. 170008 pixels (ratio 0.14 of all image pixels) are different.

  Snapshot: appearance-list.png

Call log:
  - Expect "toHaveScreenshot(appearance-list.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 378px by 3435px, received 375px by 3303px. 170008 pixels (ratio 0.14 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 378px by 3435px, received 375px by 3303px. 170008 pixels (ratio 0.14 of all image pixels) are different.

```

# Page snapshot

```yaml
- generic [active] [ref=e1]:
  - link "Skip to main content" [ref=e2] [cursor=pointer]:
    - /url: "#main-content"
  - button "Expand sidebar" [ref=e5] [cursor=pointer]:
    - img [ref=e6]
    - generic [ref=e8]: Expand sidebar
  - main [ref=e10]:
    - generic [ref=e13]:
      - navigation "Breadcrumb" [ref=e16]:
        - heading "Breadcrumb" [level=2] [ref=e17]
        - list [ref=e18]:
          - listitem [ref=e19]:
            - link "Home" [ref=e20] [cursor=pointer]:
              - /url: /
          - listitem [ref=e21]:
            - link "Administration" [ref=e22] [cursor=pointer]:
              - /url: /admin
      - generic [ref=e23]:
        - heading "Appearance" [level=1] [ref=e25]
        - generic [ref=e26]:
          - heading "Primary tabs" [level=2] [ref=e27]
          - navigation "Primary tabs" [ref=e28]:
            - list [ref=e29]:
              - listitem [ref=e30]:
                - link "List" [ref=e31] [cursor=pointer]:
                  - /url: /admin/appearance
                - button "Tabs display toggle" [ref=e32]:
                  - img [ref=e34]
    - generic [ref=e37]:
      - contentinfo "Warning message" [ref=e41]:
        - heading "Warning message" [level=2] [ref=e43]
        - generic [ref=e44]:
          - text: There was a problem checking
          - link "available updates" [ref=e45] [cursor=pointer]:
            - /url: /admin/reports/updates
          - text: for Drupal.
      - complementary [ref=e48]:
        - paragraph [ref=e49]:
          - text: Set and configure the default theme for your website. Alternative
          - link "themes" [ref=e50] [cursor=pointer]:
            - /url: https://www.drupal.org/project/project_theme
          - text: are available.
        - paragraph [ref=e51]:
          - text: You can place blocks for each theme on the
          - link "block layout" [ref=e52] [cursor=pointer]:
            - /url: /admin/structure/block
          - text: page.
      - generic [ref=e54]:
        - generic [ref=e55]:
          - generic [ref=e56]:
            - heading "Installed themes" [level=2] [ref=e57]
            - generic [ref=e58]:
              - generic "Olivero 12.0-dev (default theme)" [ref=e59]:
                - img "Screenshot for Olivero theme" [ref=e61]
                - generic [ref=e62]:
                  - generic [ref=e63]:
                    - heading "Olivero 12.0-dev (default theme)" [level=3] [ref=e64]
                    - generic [ref=e65]: A clean, accessible, and flexible Drupal front-end theme.
                  - list [ref=e67]:
                    - listitem [ref=e68]:
                      - link "Settings" [ref=e69] [cursor=pointer]:
                        - /url: /admin/appearance/settings/olivero
              - generic "Claro 12.0-dev (administration theme)" [ref=e70]:
                - img "Screenshot for Claro theme" [ref=e72]
                - generic [ref=e73]:
                  - generic [ref=e74]:
                    - heading "Claro 12.0-dev (administration theme)" [level=3] [ref=e75]
                    - generic [ref=e76]: A clean, accessible, and powerful Drupal administration theme.
                  - list [ref=e78]:
                    - listitem [ref=e79]:
                      - link "Settings" [ref=e80] [cursor=pointer]:
                        - /url: /admin/appearance/settings/claro
                    - listitem [ref=e81]:
                      - link "Set as default" [ref=e82] [cursor=pointer]:
                        - /url: /admin/appearance/default?theme=claro&token=ScV_vgTtkEaBFHxdmseLnG193lpL8xas6_O4Z1iVW34
          - separator [ref=e83]
          - generic [ref=e84]:
            - heading "Uninstalled themes" [level=2] [ref=e85]
            - generic [ref=e86]:
              - generic "Default Admin 12.0-dev (experimental theme)" [ref=e87]:
                - img "Screenshot for Default Admin theme" [ref=e89]
                - generic [ref=e90]:
                  - generic [ref=e91]:
                    - heading "Default Admin 12.0-dev (experimental theme)" [level=3] [ref=e92]
                    - generic [ref=e93]: A clean, accessible and powerful Drupal administration theme with a strong focus on improving the editorial experience.
                  - list [ref=e95]:
                    - listitem [ref=e96]:
                      - link "Install" [ref=e97] [cursor=pointer]:
                        - /url: /admin/appearance/install?theme=default_admin&token=cMETfJTks-1kJa-Utbd8EU7OeOYBhav0MktljDaRSF4
                    - listitem [ref=e98]:
                      - link "Install and set as default" [ref=e99] [cursor=pointer]:
                        - /url: /admin/appearance/default?theme=default_admin&token=ScV_vgTtkEaBFHxdmseLnG193lpL8xas6_O4Z1iVW34
              - generic "Stark 12.0-dev" [ref=e100]:
                - img "Screenshot for Stark theme" [ref=e102]
                - generic [ref=e103]:
                  - generic [ref=e104]:
                    - heading "Stark 12.0-dev" [level=3] [ref=e105]
                    - generic [ref=e106]:
                      - text: An intentionally plain theme to demonstrate and test default HTML and CSS. Stark should not be used as a base theme. Instead, build a custom theme using the
                      - link "Theming Guide" [ref=e107] [cursor=pointer]:
                        - /url: https://www.drupal.org/docs/develop/theming-drupal
                      - text: as a reference.
                  - list [ref=e109]:
                    - listitem [ref=e110]:
                      - link "Install" [ref=e111] [cursor=pointer]:
                        - /url: /admin/appearance/install?theme=stark&token=cMETfJTks-1kJa-Utbd8EU7OeOYBhav0MktljDaRSF4
                    - listitem [ref=e112]:
                      - link "Install and set as default" [ref=e113] [cursor=pointer]:
                        - /url: /admin/appearance/default?theme=stark&token=ScV_vgTtkEaBFHxdmseLnG193lpL8xas6_O4Z1iVW34
        - group [ref=e115]:
          - button "Administration theme" [expanded] [ref=e116] [cursor=pointer]: Administration theme
          - generic [ref=e117]:
            - generic [ref=e118]:
              - generic [ref=e119] [cursor=pointer]: Administration theme
              - combobox "Administration theme" [ref=e120]:
                - option "Default theme"
                - option "Claro" [selected]
                - option "Olivero"
              - generic [ref=e121]: Choose "Default theme" to always use the same theme as the rest of the site.
            - generic [ref=e122]:
              - checkbox "Use the administration theme when editing or creating content" [checked] [ref=e123]
              - text: Use the administration theme when editing or creating content
              - generic [ref=e124]:
                - text: Control which roles can "View the administration theme" on the
                - link "Permissions page" [ref=e125] [cursor=pointer]:
                  - /url: /admin/people/permissions/module/system
                - text: .
            - button "Save configuration" [ref=e127] [cursor=pointer]
```

# Test source

```ts
  1  | // #ddev-generated
  2  | import { test, expect } from '@playwright/test';
  3  | import fs from 'fs';
  4  | import type { AdminPageDefinition } from '../../page-definitions/admin-pages.js';
  5  | 
  6  | export function generateVrtTests(pages: AdminPageDefinition[]) {
  7  |   for (const pageDef of pages) {
  8  |     test.describe(pageDef.id, () => {
  9  |       test('default state', async ({ page }, testInfo) => {
  10 |         if (pageDef.testTimeout) {
  11 |           test.setTimeout(pageDef.testTimeout);
  12 |         }
  13 | 
  14 |         await page.goto(pageDef.path);
  15 | 
  16 |         if (testInfo.project.name.startsWith('rtl-')) {
  17 |           await page.evaluate(() => {
  18 |             document.documentElement.dir = 'rtl';
  19 |           });
  20 |         }
  21 | 
  22 |         if (pageDef.waitFor) {
  23 |           await page.locator(pageDef.waitFor).waitFor();
  24 |         }
  25 | 
  26 |         await page.waitForLoadState('load');
  27 | 
  28 |         const mask = (pageDef.maskSelectors || []).map((s) => page.locator(s));
  29 | 
> 30 |         await expect(page).toHaveScreenshot(`${pageDef.id}.png`, {
     |                            ^ Error: expect(page).toHaveScreenshot(expected) failed
  31 |           fullPage: pageDef.fullPage ?? false,
  32 |           mask,
  33 |           ...(pageDef.timeout ? { timeout: pageDef.timeout } : {}),
  34 |         });
  35 |         const snapshotPath = testInfo.snapshotPath(`${pageDef.id}.png`);
  36 |         if (fs.existsSync(snapshotPath)) {
  37 |           await testInfo.attach('screenshot', { body: fs.readFileSync(snapshotPath), contentType: 'image/png' });
  38 |         }
  39 |       });
  40 | 
  41 |       if (pageDef.interactions) {
  42 |         for (const interaction of pageDef.interactions) {
  43 |           test(`interaction: ${interaction.label}`, async ({ page }, testInfo) => {
  44 |             if (pageDef.testTimeout) {
  45 |               test.setTimeout(pageDef.testTimeout);
  46 |             }
  47 | 
  48 |             await page.goto(pageDef.path);
  49 | 
  50 |             if (testInfo.project.name.startsWith('rtl-')) {
  51 |               await page.evaluate(() => {
  52 |                 document.documentElement.dir = 'rtl';
  53 |               });
  54 |             }
  55 | 
  56 |             if (pageDef.waitFor) {
  57 |               await page.locator(pageDef.waitFor).waitFor();
  58 |             }
  59 | 
  60 |             await page.waitForLoadState('load');
  61 |             await interaction.action(page);
  62 | 
  63 |             const mask = (pageDef.maskSelectors || []).map((s) => page.locator(s));
  64 | 
  65 |             await expect(page).toHaveScreenshot(
  66 |               `${pageDef.id}--${interaction.label}.png`,
  67 |               {
  68 |                 fullPage: pageDef.fullPage ?? false,
  69 |                 mask,
  70 |                 ...(pageDef.timeout ? { timeout: pageDef.timeout } : {}),
  71 |               }
  72 |             );
  73 |             const snapshotPath = testInfo.snapshotPath(`${pageDef.id}--${interaction.label}.png`);
  74 |             if (fs.existsSync(snapshotPath)) {
  75 |               await testInfo.attach('screenshot', { body: fs.readFileSync(snapshotPath), contentType: 'image/png' });
  76 |             }
  77 |           });
  78 |         }
  79 |       }
  80 |     });
  81 |   }
  82 | }
  83 | 
```