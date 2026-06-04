# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-menus >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow-dark/vrt/structure.spec.ts/structure-menus.png, writing actual.
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
    - list [ref=e19]:
      - listitem [ref=e20]:
        - link "+Add menu" [ref=e21] [cursor=pointer]:
          - /url: /admin/structure/menu/add
  - generic [ref=e22]:
    - banner [ref=e23]:
      - heading "Menus" [level=1] [ref=e27]
    - main [ref=e29]:
      - complementary [ref=e33]:
        - paragraph [ref=e34]:
          - text: Each menu has a corresponding block that is managed on the
          - link "Block layout page" [ref=e35] [cursor=pointer]:
            - /url: /admin/structure/block
          - text: .
      - generic [ref=e39]:
        - button "Show all columns" [ref=e41] [cursor=pointer]
        - table [ref=e42]:
          - rowgroup [ref=e43]:
            - row "Title Operations" [ref=e44]:
              - columnheader "Title" [ref=e45]
              - columnheader "Operations" [ref=e46]
          - rowgroup [ref=e47]:
            - row "Administration Edit Administration List additional actions" [ref=e48]:
              - cell "Administration" [ref=e49]
              - cell "Edit Administration List additional actions" [ref=e50]:
                - list [ref=e53]:
                  - listitem [ref=e54]:
                    - link "Edit Administration" [ref=e55] [cursor=pointer]:
                      - /url: /admin/structure/menu/manage/admin
                      - text: Edit menu
                  - listitem:
                    - button "List additional actions" [ref=e56]:
                      - generic [ref=e57]: List additional actions
            - row "Content Edit Content List additional actions" [ref=e58]:
              - cell "Content" [ref=e59]
              - cell "Edit Content List additional actions" [ref=e60]:
                - list [ref=e63]:
                  - listitem [ref=e64]:
                    - link "Edit Content" [ref=e65] [cursor=pointer]:
                      - /url: /admin/structure/menu/manage/content
                      - text: Edit menu
                  - listitem:
                    - button "List additional actions" [ref=e66]:
                      - generic [ref=e67]: List additional actions
            - row "Footer Edit Footer List additional actions" [ref=e68]:
              - cell "Footer" [ref=e69]
              - cell "Edit Footer List additional actions" [ref=e70]:
                - list [ref=e73]:
                  - listitem [ref=e74]:
                    - link "Edit Footer" [ref=e75] [cursor=pointer]:
                      - /url: /admin/structure/menu/manage/footer
                      - text: Edit menu
                  - listitem:
                    - button "List additional actions" [ref=e76]:
                      - generic [ref=e77]: List additional actions
            - row "Main navigation Edit Main navigation List additional actions" [ref=e78]:
              - cell "Main navigation" [ref=e79]
              - cell "Edit Main navigation List additional actions" [ref=e80]:
                - list [ref=e83]:
                  - listitem [ref=e84]:
                    - link "Edit Main navigation" [ref=e85] [cursor=pointer]:
                      - /url: /admin/structure/menu/manage/main
                      - text: Edit menu
                  - listitem:
                    - button "List additional actions" [ref=e86]:
                      - generic [ref=e87]: List additional actions
            - row "Navigation user links Edit Navigation user links List additional actions" [ref=e88]:
              - cell "Navigation user links" [ref=e89]
              - cell "Edit Navigation user links List additional actions" [ref=e90]:
                - list [ref=e93]:
                  - listitem [ref=e94]:
                    - link "Edit Navigation user links" [ref=e95] [cursor=pointer]:
                      - /url: /admin/structure/menu/manage/navigation-user-links
                      - text: Edit menu
                  - listitem:
                    - button "List additional actions" [ref=e96]:
                      - generic [ref=e97]: List additional actions
            - row "Tools Edit Tools List additional actions" [ref=e98]:
              - cell "Tools" [ref=e99]
              - cell "Edit Tools List additional actions" [ref=e100]:
                - list [ref=e103]:
                  - listitem [ref=e104]:
                    - link "Edit Tools" [ref=e105] [cursor=pointer]:
                      - /url: /admin/structure/menu/manage/tools
                      - text: Edit menu
                  - listitem:
                    - button "List additional actions" [ref=e106]:
                      - generic [ref=e107]: List additional actions
            - row "User account menu Edit User account menu List additional actions" [ref=e108]:
              - cell "User account menu" [ref=e109]
              - cell "Edit User account menu List additional actions" [ref=e110]:
                - list [ref=e113]:
                  - listitem [ref=e114]:
                    - link "Edit User account menu" [ref=e115] [cursor=pointer]:
                      - /url: /admin/structure/menu/manage/account
                      - text: Edit menu
                  - listitem:
                    - button "List additional actions" [ref=e116]:
                      - generic [ref=e117]: List additional actions
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow-dark/vrt/structure.spec.ts/structure-menus.png, writing actual.
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