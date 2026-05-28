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

  Expected an image 378px by 3447px, received 375px by 3351px. 108223 pixels (ratio 0.09 of all image pixels) are different.

  Snapshot: appearance-list.png

Call log:
  - Expect "toHaveScreenshot(appearance-list.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 378px by 3447px, received 375px by 3351px. 108223 pixels (ratio 0.09 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 378px by 3447px, received 375px by 3351px. 108223 pixels (ratio 0.09 of all image pixels) are different.

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
      - contentinfo "Error message" [ref=e41]:
        - alert [ref=e42]:
          - heading "Error message" [level=2] [ref=e44]
          - generic [ref=e45]:
            - text: Your version of Drupal is no longer supported. Upgrading is strongly recommended! See the
            - link "available updates" [ref=e46] [cursor=pointer]:
              - /url: /admin/reports/updates
            - text: page for more information.
      - complementary [ref=e49]:
        - paragraph [ref=e50]:
          - text: Set and configure the default theme for your website. Alternative
          - link "themes" [ref=e51] [cursor=pointer]:
            - /url: https://www.drupal.org/project/project_theme
          - text: are available.
        - paragraph [ref=e52]:
          - text: You can place blocks for each theme on the
          - link "block layout" [ref=e53] [cursor=pointer]:
            - /url: /admin/structure/block
          - text: page.
      - generic [ref=e55]:
        - generic [ref=e56]:
          - generic [ref=e57]:
            - heading "Installed themes" [level=2] [ref=e58]
            - generic [ref=e59]:
              - generic "Olivero 12.0-dev (default theme)" [ref=e60]:
                - img "Screenshot for Olivero theme" [ref=e62]
                - generic [ref=e63]:
                  - generic [ref=e64]:
                    - heading "Olivero 12.0-dev (default theme)" [level=3] [ref=e65]
                    - generic [ref=e66]: A clean, accessible, and flexible Drupal front-end theme.
                  - list [ref=e68]:
                    - listitem [ref=e69]:
                      - link "Settings" [ref=e70] [cursor=pointer]:
                        - /url: /admin/appearance/settings/olivero
              - generic "Claro 12.0-dev (administration theme)" [ref=e71]:
                - img "Screenshot for Claro theme" [ref=e73]
                - generic [ref=e74]:
                  - generic [ref=e75]:
                    - heading "Claro 12.0-dev (administration theme)" [level=3] [ref=e76]
                    - generic [ref=e77]: A clean, accessible, and powerful Drupal administration theme.
                  - list [ref=e79]:
                    - listitem [ref=e80]:
                      - link "Settings" [ref=e81] [cursor=pointer]:
                        - /url: /admin/appearance/settings/claro
                    - listitem [ref=e82]:
                      - link "Set as default" [ref=e83] [cursor=pointer]:
                        - /url: /admin/appearance/default?theme=claro&token=sC0yRBquB78VctMyTFknb5LQACsRLygKNMBnl_LB0uQ
          - separator [ref=e84]
          - generic [ref=e85]:
            - heading "Uninstalled themes" [level=2] [ref=e86]
            - generic [ref=e87]:
              - generic "Default Admin 12.0-dev (experimental theme)" [ref=e88]:
                - img "Screenshot for Default Admin theme" [ref=e90]
                - generic [ref=e91]:
                  - generic [ref=e92]:
                    - heading "Default Admin 12.0-dev (experimental theme)" [level=3] [ref=e93]
                    - generic [ref=e94]: A clean, accessible and powerful Drupal administration theme with a strong focus on improving the editorial experience.
                  - list [ref=e96]:
                    - listitem [ref=e97]:
                      - link "Install" [ref=e98] [cursor=pointer]:
                        - /url: /admin/appearance/install?theme=default_admin&token=vQWBaQj_WTZ5gq8P-F7EFNNGqSU1lD8QI3RAwcDMoI0
                    - listitem [ref=e99]:
                      - link "Install and set as default" [ref=e100] [cursor=pointer]:
                        - /url: /admin/appearance/default?theme=default_admin&token=sC0yRBquB78VctMyTFknb5LQACsRLygKNMBnl_LB0uQ
              - generic "Stark 12.0-dev" [ref=e101]:
                - img "Screenshot for Stark theme" [ref=e103]
                - generic [ref=e104]:
                  - generic [ref=e105]:
                    - heading "Stark 12.0-dev" [level=3] [ref=e106]
                    - generic [ref=e107]:
                      - text: An intentionally plain theme to demonstrate and test default HTML and CSS. Stark should not be used as a base theme. Instead, build a custom theme using the
                      - link "Theming Guide" [ref=e108] [cursor=pointer]:
                        - /url: https://www.drupal.org/docs/develop/theming-drupal
                      - text: as a reference.
                  - list [ref=e110]:
                    - listitem [ref=e111]:
                      - link "Install" [ref=e112] [cursor=pointer]:
                        - /url: /admin/appearance/install?theme=stark&token=vQWBaQj_WTZ5gq8P-F7EFNNGqSU1lD8QI3RAwcDMoI0
                    - listitem [ref=e113]:
                      - link "Install and set as default" [ref=e114] [cursor=pointer]:
                        - /url: /admin/appearance/default?theme=stark&token=sC0yRBquB78VctMyTFknb5LQACsRLygKNMBnl_LB0uQ
        - group [ref=e116]:
          - button "Administration theme" [expanded] [ref=e117] [cursor=pointer]: Administration theme
          - generic [ref=e118]:
            - generic [ref=e119]:
              - generic [ref=e120] [cursor=pointer]: Administration theme
              - combobox "Administration theme" [ref=e121]:
                - option "Default theme"
                - option "Claro" [selected]
                - option "Olivero"
              - generic [ref=e122]: Choose "Default theme" to always use the same theme as the rest of the site.
            - generic [ref=e123]:
              - checkbox "Use the administration theme when editing or creating content" [checked] [ref=e124]
              - text: Use the administration theme when editing or creating content
              - generic [ref=e125]:
                - text: Control which roles can "View the administration theme" on the
                - link "Permissions page" [ref=e126] [cursor=pointer]:
                  - /url: /admin/people/permissions/module/system
                - text: .
            - button "Save configuration" [ref=e128] [cursor=pointer]
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
  14 |         if (testInfo.project.name.includes('dark')) {
  15 |           await page.emulateMedia({ colorScheme: 'dark' });
  16 |         }
  17 |         else {
  18 |           await page.emulateMedia({ colorScheme: 'light' });
  19 |         }
  20 | 
  21 |         await page.goto(pageDef.path);
  22 | 
  23 |         if (testInfo.project.name.startsWith('rtl-')) {
  24 |           await page.evaluate(() => {
  25 |             document.documentElement.dir = 'rtl';
  26 |           });
  27 |         }
  28 | 
  29 |         if (pageDef.waitFor) {
  30 |           await page.locator(pageDef.waitFor).waitFor();
  31 |         }
  32 | 
  33 |         await page.waitForLoadState('load');
  34 | 
  35 |         const mask = (pageDef.maskSelectors || []).map((s) => page.locator(s));
  36 | 
> 37 |         await expect(page).toHaveScreenshot(`${pageDef.id}.png`, {
     |                            ^ Error: expect(page).toHaveScreenshot(expected) failed
  38 |           fullPage: pageDef.fullPage ?? false,
  39 |           mask,
  40 |           ...(pageDef.timeout ? { timeout: pageDef.timeout } : {}),
  41 |         });
  42 |         const snapshotPath = testInfo.snapshotPath(`${pageDef.id}.png`);
  43 |         if (fs.existsSync(snapshotPath)) {
  44 |           await testInfo.attach('screenshot', { body: fs.readFileSync(snapshotPath), contentType: 'image/png' });
  45 |         }
  46 |       });
  47 | 
  48 |       if (pageDef.interactions) {
  49 |         for (const interaction of pageDef.interactions) {
  50 |           test(`interaction: ${interaction.label}`, async ({ page }, testInfo) => {
  51 |             if (pageDef.testTimeout) {
  52 |               test.setTimeout(pageDef.testTimeout);
  53 |             }
  54 | 
  55 |             if (testInfo.project.name.includes('dark')) {
  56 |               await page.emulateMedia({ colorScheme: 'dark' });
  57 |             }
  58 |             else {
  59 |               await page.emulateMedia({ colorScheme: 'light' });
  60 |             }
  61 | 
  62 |             await page.goto(pageDef.path);
  63 | 
  64 |             if (testInfo.project.name.startsWith('rtl-')) {
  65 |               await page.evaluate(() => {
  66 |                 document.documentElement.dir = 'rtl';
  67 |               });
  68 |             }
  69 | 
  70 |             if (pageDef.waitFor) {
  71 |               await page.locator(pageDef.waitFor).waitFor();
  72 |             }
  73 | 
  74 |             await page.waitForLoadState('load');
  75 |             await interaction.action(page);
  76 | 
  77 |             const mask = (pageDef.maskSelectors || []).map((s) => page.locator(s));
  78 | 
  79 |             await expect(page).toHaveScreenshot(
  80 |               `${pageDef.id}--${interaction.label}.png`,
  81 |               {
  82 |                 fullPage: pageDef.fullPage ?? false,
  83 |                 mask,
  84 |                 ...(pageDef.timeout ? { timeout: pageDef.timeout } : {}),
  85 |               }
  86 |             );
  87 |             const snapshotPath = testInfo.snapshotPath(`${pageDef.id}--${interaction.label}.png`);
  88 |             if (fs.existsSync(snapshotPath)) {
  89 |               await testInfo.attach('screenshot', { body: fs.readFileSync(snapshotPath), contentType: 'image/png' });
  90 |             }
  91 |           });
  92 |         }
  93 |       }
  94 |     });
  95 |   }
  96 | }
  97 | 
```