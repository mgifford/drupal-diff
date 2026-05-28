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

  Expected an image 467px by 1631px, received 375px by 1322px. 40026 pixels (ratio 0.06 of all image pixels) are different.

  Snapshot: structure-content-types-article-display.png

Call log:
  - Expect "toHaveScreenshot(structure-content-types-article-display.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 467px by 1631px, received 375px by 1322px. 40026 pixels (ratio 0.06 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 467px by 1631px, received 375px by 1322px. 40026 pixels (ratio 0.06 of all image pixels) are different.

```

# Page snapshot

```yaml
- generic [active] [ref=e1]:
  - link "Skip to main content" [ref=e2] [cursor=pointer]:
    - /url: "#main-content"
  - button "Expand sidebar" [ref=e5] [cursor=pointer]:
    - img [ref=e6]
    - generic [ref=e8]: Expand sidebar
  - navigation "Breadcrumb" [ref=e12]:
    - heading "Breadcrumb" [level=2] [ref=e13]
    - list [ref=e14]:
      - listitem:
        - link "Back to site" [ref=e15] [cursor=pointer]:
          - /url: /
      - listitem:
        - link "Administration" [ref=e16] [cursor=pointer]:
          - /url: /admin
      - listitem:
        - text: /
        - link "Structure" [ref=e17] [cursor=pointer]:
          - /url: /admin/structure
      - listitem:
        - text: /
        - link "Content types" [ref=e18] [cursor=pointer]:
          - /url: /admin/structure/types
      - listitem:
        - text: /
        - link "Article" [ref=e19] [cursor=pointer]:
          - /url: /admin/structure/types/manage/article
  - generic [ref=e20]:
    - banner [ref=e21]:
      - heading "Manage display" [level=1] [ref=e25]
    - generic [ref=e29]:
      - heading "Primary tabs" [level=2] [ref=e30]
      - navigation "Primary tabs" [ref=e31]:
        - list [ref=e32]:
          - listitem [ref=e33]:
            - link "Manage display" [ref=e34] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article/display
            - button "Tabs display toggle" [ref=e35]:
              - img [ref=e36]
    - generic [ref=e38]:
      - generic [ref=e40]:
        - heading "Secondary tabs" [level=2] [ref=e41]
        - navigation "Secondary tabs" [ref=e42]:
          - list [ref=e43]:
            - listitem [ref=e44]:
              - link "Overview" [ref=e45] [cursor=pointer]:
                - /url: /admin/structure/types/manage/article/display
            - listitem [ref=e46]:
              - link "Default" [ref=e47] [cursor=pointer]:
                - /url: /admin/structure/types/manage/article/display/default
      - main [ref=e48]:
        - complementary [ref=e52]:
          - paragraph [ref=e53]:
            - text: This page lists all available view modes for
            - emphasis [ref=e54]: Article
            - text: . Click
            - emphasis [ref=e55]: Manage
            - text: on any enabled view mode to configure which fields are shown and how they are displayed.
        - generic [ref=e57]:
          - generic [ref=e58]:
            - generic [ref=e59]:
              - heading "Enabled view modes" [level=2] [ref=e60]
              - link "Manage view modes" [ref=e61] [cursor=pointer]:
                - /url: /admin/structure/display-modes/view
            - table [ref=e64]:
              - rowgroup [ref=e65]:
                - row "View mode Description Operations" [ref=e66]:
                  - columnheader "View mode" [ref=e67]
                  - columnheader "Description" [ref=e68]
                  - columnheader "Operations" [ref=e69]
              - rowgroup [ref=e70]:
                - row "Default Manage (Default)" [ref=e71]:
                  - cell "Default" [ref=e72]
                  - cell [ref=e73]
                  - cell "Manage (Default)" [ref=e74]:
                    - list [ref=e77]:
                      - listitem [ref=e78]:
                        - link "Manage (Default)" [ref=e79] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/default
                          - text: Manage
                          - generic [ref=e80]: (Default)
          - generic [ref=e81]:
            - heading "Disabled view modes" [level=2] [ref=e82]
            - table [ref=e85]:
              - rowgroup [ref=e86]:
                - row "View mode Description Operations" [ref=e87]:
                  - columnheader "View mode" [ref=e88]
                  - columnheader "Description" [ref=e89]
                  - columnheader "Operations" [ref=e90]
              - rowgroup [ref=e91]:
                - row "Full content Enable (Full content)" [ref=e92]:
                  - cell "Full content" [ref=e93]
                  - cell [ref=e94]
                  - cell "Enable (Full content)" [ref=e95]:
                    - list [ref=e98]:
                      - listitem [ref=e99]:
                        - link "Enable (Full content)" [ref=e100] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/full/enable?token=0cJNYgTXNYyJKdDk5g7dk9cXwgehKMnM0iyqUEA31Rs
                          - text: Enable
                          - generic [ref=e101]: (Full content)
                - row "RSS Enable (RSS)" [ref=e102]:
                  - cell "RSS" [ref=e103]
                  - cell [ref=e104]
                  - cell "Enable (RSS)" [ref=e105]:
                    - list [ref=e108]:
                      - listitem [ref=e109]:
                        - link "Enable (RSS)" [ref=e110] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/rss/enable?token=zuygZLIiIUf-aQbGUa_ZvCQ1NghncHyN9qyKv4WklDQ
                          - text: Enable
                          - generic [ref=e111]: (RSS)
                - row "Teaser Enable (Teaser)" [ref=e112]:
                  - cell "Teaser" [ref=e113]
                  - cell [ref=e114]
                  - cell "Enable (Teaser)" [ref=e115]:
                    - list [ref=e118]:
                      - listitem [ref=e119]:
                        - link "Enable (Teaser)" [ref=e120] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/teaser/enable?token=CN87O2WP0cyowZU78ZZbAie9alatQfLsVSyhzOUH4MM
                          - text: Enable
                          - generic [ref=e121]: (Teaser)
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