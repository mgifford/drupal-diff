# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-content-types-article-display >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid-dark/vrt/structure.spec.ts/structure-content-types-article-display.png, writing actual.
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
            - link "Edit" [ref=e34] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article
          - listitem [ref=e35]:
            - link "Manage fields" [ref=e36] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article/fields
          - listitem [ref=e37]:
            - link "Manage form display" [ref=e38] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article/form-display
          - listitem [ref=e39]:
            - link "Manage display" [ref=e40] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article/display
          - listitem [ref=e41]:
            - link "Manage permissions" [ref=e42] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article/permissions
    - generic [ref=e43]:
      - generic [ref=e45]:
        - heading "Secondary tabs" [level=2] [ref=e46]
        - navigation "Secondary tabs" [ref=e47]:
          - list [ref=e48]:
            - listitem [ref=e49]:
              - link "Overview" [ref=e50] [cursor=pointer]:
                - /url: /admin/structure/types/manage/article/display
            - listitem [ref=e51]:
              - link "Default" [ref=e52] [cursor=pointer]:
                - /url: /admin/structure/types/manage/article/display/default
      - main [ref=e53]:
        - complementary [ref=e57]:
          - paragraph [ref=e58]:
            - text: This page lists all available view modes for
            - emphasis [ref=e59]: Article
            - text: . Click
            - emphasis [ref=e60]: Manage
            - text: on any enabled view mode to configure which fields are shown and how they are displayed.
        - generic [ref=e62]:
          - generic [ref=e63]:
            - generic [ref=e64]:
              - heading "Enabled view modes" [level=2] [ref=e65]
              - link "Manage view modes" [ref=e66] [cursor=pointer]:
                - /url: /admin/structure/display-modes/view
            - table [ref=e69]:
              - rowgroup [ref=e70]:
                - row "View mode Description Operations" [ref=e71]:
                  - columnheader "View mode" [ref=e72]
                  - columnheader "Description" [ref=e73]
                  - columnheader "Operations" [ref=e74]
              - rowgroup [ref=e75]:
                - row "Default Manage (Default)" [ref=e76]:
                  - cell "Default" [ref=e77]
                  - cell [ref=e78]
                  - cell "Manage (Default)" [ref=e79]:
                    - list [ref=e82]:
                      - listitem [ref=e83]:
                        - link "Manage (Default)" [ref=e84] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/default
                          - text: Manage
                          - generic [ref=e85]: (Default)
          - generic [ref=e86]:
            - heading "Disabled view modes" [level=2] [ref=e87]
            - table [ref=e90]:
              - rowgroup [ref=e91]:
                - row "View mode Description Operations" [ref=e92]:
                  - columnheader "View mode" [ref=e93]
                  - columnheader "Description" [ref=e94]
                  - columnheader "Operations" [ref=e95]
              - rowgroup [ref=e96]:
                - row "Full content Enable (Full content)" [ref=e97]:
                  - cell "Full content" [ref=e98]
                  - cell [ref=e99]
                  - cell "Enable (Full content)" [ref=e100]:
                    - list [ref=e103]:
                      - listitem [ref=e104]:
                        - link "Enable (Full content)" [ref=e105] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/full/enable?token=Amt1jtg3HiaL2Cm2mYWkdlYGE1uGVeFM6iKXnkfGm8I
                          - text: Enable
                          - generic [ref=e106]: (Full content)
                - row "RSS Enable (RSS)" [ref=e107]:
                  - cell "RSS" [ref=e108]
                  - cell [ref=e109]
                  - cell "Enable (RSS)" [ref=e110]:
                    - list [ref=e113]:
                      - listitem [ref=e114]:
                        - link "Enable (RSS)" [ref=e115] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/rss/enable?token=LyuVV7jUnyRPqYQahUQEru6fWSf7No1LArC-_yr7lwU
                          - text: Enable
                          - generic [ref=e116]: (RSS)
                - row "Teaser Enable (Teaser)" [ref=e117]:
                  - cell "Teaser" [ref=e118]
                  - cell [ref=e119]
                  - cell "Enable (Teaser)" [ref=e120]:
                    - list [ref=e123]:
                      - listitem [ref=e124]:
                        - link "Enable (Teaser)" [ref=e125] [cursor=pointer]:
                          - /url: /admin/structure/types/manage/article/display/teaser/enable?token=-BuVDIcuShIIBysVHlFRae3SfIO9O3ubJlHOcJPMFNI
                          - text: Enable
                          - generic [ref=e126]: (Teaser)
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid-dark/vrt/structure.spec.ts/structure-content-types-article-display.png, writing actual.
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