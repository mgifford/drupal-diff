# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-content-types-article-fields >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid/vrt/structure.spec.ts/structure-content-types-article-fields.png, writing actual.
```

# Page snapshot

```yaml
- generic [active] [ref=e1]:
  - link "Skip to main content" [ref=e2] [cursor=pointer]:
    - /url: "#main-content"
  - button "Expand sidebar" [ref=e5] [cursor=pointer]:
    - img [ref=e6]
    - generic [ref=e8]: Expand sidebar
  - generic [ref=e10]:
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
    - list [ref=e21]:
      - listitem [ref=e22]:
        - link "+Create a new field" [ref=e23] [cursor=pointer]:
          - /url: /admin/structure/types/manage/article/fields/add-field
  - generic [ref=e24]:
    - banner [ref=e25]:
      - heading "Manage fields" [level=1] [ref=e29]
    - generic [ref=e33]:
      - heading "Primary tabs" [level=2] [ref=e34]
      - navigation "Primary tabs" [ref=e35]:
        - list [ref=e36]:
          - listitem [ref=e37]:
            - link "Edit" [ref=e38] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article
          - listitem [ref=e39]:
            - link "Manage fields" [ref=e40] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article/fields
          - listitem [ref=e41]:
            - link "Manage form display" [ref=e42] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article/form-display
          - listitem [ref=e43]:
            - link "Manage display" [ref=e44] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article/display
          - listitem [ref=e45]:
            - link "Manage permissions" [ref=e46] [cursor=pointer]:
              - /url: /admin/structure/types/manage/article/permissions
    - main [ref=e48]:
      - table [ref=e54]:
        - rowgroup [ref=e55]:
          - row "Field Field type Operations" [ref=e56]:
            - columnheader "Field" [ref=e57]
            - columnheader "Field type" [ref=e58]
            - columnheader "Operations" [ref=e59]
        - rowgroup [ref=e60]:
          - row "Body body Single Long text with summary Edit List additional actions" [ref=e61]:
            - cell "Body body Single" [ref=e62]:
              - generic [ref=e63]:
                - generic [ref=e64]: Body body
                - generic [ref=e66]: Single
            - cell "Long text with summary" [ref=e67]:
              - generic [ref=e69]: Long text with summary
            - cell "Edit List additional actions" [ref=e70]:
              - list [ref=e73]:
                - listitem [ref=e74]:
                  - link "Edit" [ref=e75] [cursor=pointer]:
                    - /url: /admin/structure/types/manage/article/fields/node.article.body
                - listitem:
                  - button "List additional actions" [ref=e76]:
                    - generic [ref=e77]: List additional actions
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid/vrt/structure.spec.ts/structure-content-types-article-fields.png, writing actual.
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