# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-content-types-article-display >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 467px by 1631px, received 375px by 1204px. 40482 pixels (ratio 0.06 of all image pixels) are different.

  Snapshot: structure-content-types-article-display.png

Call log:
  - Expect "toHaveScreenshot(structure-content-types-article-display.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 467px by 1631px, received 375px by 1204px. 40482 pixels (ratio 0.06 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 467px by 1631px, received 375px by 1204px. 40482 pixels (ratio 0.06 of all image pixels) are different.

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
          - listitem [ref=e23]:
            - link "Structure" [ref=e24] [cursor=pointer]:
              - /url: /admin/structure
          - listitem [ref=e25]:
            - link "Content types" [ref=e26] [cursor=pointer]:
              - /url: /admin/structure/types
          - listitem [ref=e27]:
            - link "Article" [ref=e28] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article
      - generic [ref=e29]:
        - heading "Manage display" [level=1] [ref=e31]
        - generic [ref=e32]:
          - heading "Primary tabs" [level=2] [ref=e33]
          - navigation "Primary tabs" [ref=e34]:
            - list [ref=e35]:
              - listitem [ref=e36]:
                - link "Manage display" [ref=e37] [cursor=pointer]:
                  - /url: /admin/structure/types/manage/article/display
                - button "Tabs display toggle" [ref=e38]:
                  - img [ref=e40]
    - generic [ref=e42]:
      - generic [ref=e44]:
        - heading "Secondary tabs" [level=2] [ref=e45]
        - navigation "Secondary tabs" [ref=e46]:
          - list [ref=e47]:
            - listitem [ref=e48]:
              - link "Overview" [ref=e49] [cursor=pointer]:
                - /url: /admin/structure/types/manage/article/display
            - listitem [ref=e50]:
              - link "Default" [ref=e51] [cursor=pointer]:
                - /url: /admin/structure/types/manage/article/display/default
      - generic [ref=e52]:
        - complementary [ref=e55]:
          - paragraph [ref=e56]:
            - text: This page lists all available view modes for
            - emphasis [ref=e57]: Article
            - text: . Click
            - emphasis [ref=e58]: Manage
            - text: on any enabled view mode to configure which fields are shown and how they are displayed.
        - generic [ref=e60]:
          - generic [ref=e61]:
            - generic [ref=e62]:
              - heading "Enabled view modes" [level=2] [ref=e63]
              - link "Manage view modes" [ref=e64] [cursor=pointer]:
                - /url: /admin/structure/display-modes/view
            - table [ref=e65]:
              - rowgroup [ref=e66]:
                - row "View mode Description Operations" [ref=e67]:
                  - columnheader "View mode" [ref=e68]
                  - columnheader "Description" [ref=e69]
                  - columnheader "Operations" [ref=e70]
              - rowgroup [ref=e71]:
                - row "Default Manage (Default)" [ref=e72]:
                  - cell "Default" [ref=e73]
                  - cell [ref=e74]
                  - cell "Manage (Default)" [ref=e75]:
                    - list [ref=e78]:
                      - listitem [ref=e79]:
                        - link "Manage (Default)" [ref=e80] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/default
                          - text: Manage
                          - generic [ref=e81]: (Default)
          - generic [ref=e82]:
            - heading "Disabled view modes" [level=2] [ref=e83]
            - table [ref=e84]:
              - rowgroup [ref=e85]:
                - row "View mode Description Operations" [ref=e86]:
                  - columnheader "View mode" [ref=e87]
                  - columnheader "Description" [ref=e88]
                  - columnheader "Operations" [ref=e89]
              - rowgroup [ref=e90]:
                - row "Full content Enable (Full content)" [ref=e91]:
                  - cell "Full content" [ref=e92]
                  - cell [ref=e93]
                  - cell "Enable (Full content)" [ref=e94]:
                    - list [ref=e97]:
                      - listitem [ref=e98]:
                        - link "Enable (Full content)" [ref=e99] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/full/enable?token=wvvdvF2LaW1D0qgKMPhVw27l2sktlSNHNY2bXMYZJhU
                          - text: Enable
                          - generic [ref=e100]: (Full content)
                - row "RSS Enable (RSS)" [ref=e101]:
                  - cell "RSS" [ref=e102]
                  - cell [ref=e103]
                  - cell "Enable (RSS)" [ref=e104]:
                    - list [ref=e107]:
                      - listitem [ref=e108]:
                        - link "Enable (RSS)" [ref=e109] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/rss/enable?token=4AsjJ_Kd7cbPtON75KQd_cN30yADOgBoHYAchne7Jdg
                          - text: Enable
                          - generic [ref=e110]: (RSS)
                - row "Teaser Enable (Teaser)" [ref=e111]:
                  - cell "Teaser" [ref=e112]
                  - cell [ref=e113]
                  - cell "Enable (Teaser)" [ref=e114]:
                    - list [ref=e117]:
                      - listitem [ref=e118]:
                        - link "Enable (Teaser)" [ref=e119] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/teaser/enable?token=2tzZ3oFXTKw1EAmKsDRHwaER_L4krCb-XcxWv8U_3lw
                          - text: Enable
                          - generic [ref=e120]: (Teaser)
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