# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-menus >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 375px by 812px, received 375px by 965px. 37043 pixels (ratio 0.11 of all image pixels) are different.

  Snapshot: structure-menus.png

Call log:
  - Expect "toHaveScreenshot(structure-menus.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 375px by 812px, received 375px by 965px. 37043 pixels (ratio 0.11 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 375px by 812px, received 375px by 965px. 37043 pixels (ratio 0.11 of all image pixels) are different.

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
      - heading "Menus" [level=1] [ref=e27]
    - generic [ref=e29]:
      - complementary [ref=e32]:
        - paragraph [ref=e33]:
          - text: Each menu has a corresponding block that is managed on the
          - link "Block layout page" [ref=e34] [cursor=pointer]:
            - /url: /admin/structure/block
          - text: .
      - generic [ref=e35]:
        - list [ref=e37]:
          - listitem [ref=e38]:
            - link "+Add menu" [ref=e39] [cursor=pointer]:
              - /url: /admin/structure/menu/add
        - generic [ref=e40]:
          - button "Show all columns" [ref=e42] [cursor=pointer]
          - table [ref=e43]:
            - rowgroup [ref=e44]:
              - row "Title Operations" [ref=e45]:
                - columnheader "Title" [ref=e46]
                - columnheader "Operations" [ref=e47]
            - rowgroup [ref=e48]:
              - row "Administration Edit Administration List additional actions" [ref=e49]:
                - cell "Administration" [ref=e50]
                - cell "Edit Administration List additional actions" [ref=e51]:
                  - list [ref=e54]:
                    - listitem [ref=e55]:
                      - link "Edit Administration" [ref=e56] [cursor=pointer]:
                        - /url: /admin/structure/menu/manage/admin
                        - text: Edit menu
                    - listitem:
                      - button "List additional actions" [ref=e57]:
                        - generic [ref=e58]: List additional actions
              - row "Content Edit Content List additional actions" [ref=e59]:
                - cell "Content" [ref=e60]
                - cell "Edit Content List additional actions" [ref=e61]:
                  - list [ref=e64]:
                    - listitem [ref=e65]:
                      - link "Edit Content" [ref=e66] [cursor=pointer]:
                        - /url: /admin/structure/menu/manage/content
                        - text: Edit menu
                    - listitem:
                      - button "List additional actions" [ref=e67]:
                        - generic [ref=e68]: List additional actions
              - row "Footer Edit Footer List additional actions" [ref=e69]:
                - cell "Footer" [ref=e70]
                - cell "Edit Footer List additional actions" [ref=e71]:
                  - list [ref=e74]:
                    - listitem [ref=e75]:
                      - link "Edit Footer" [ref=e76] [cursor=pointer]:
                        - /url: /admin/structure/menu/manage/footer
                        - text: Edit menu
                    - listitem:
                      - button "List additional actions" [ref=e77]:
                        - generic [ref=e78]: List additional actions
              - row "Main navigation Edit Main navigation List additional actions" [ref=e79]:
                - cell "Main navigation" [ref=e80]
                - cell "Edit Main navigation List additional actions" [ref=e81]:
                  - list [ref=e84]:
                    - listitem [ref=e85]:
                      - link "Edit Main navigation" [ref=e86] [cursor=pointer]:
                        - /url: /admin/structure/menu/manage/main
                        - text: Edit menu
                    - listitem:
                      - button "List additional actions" [ref=e87]:
                        - generic [ref=e88]: List additional actions
              - row "Navigation user links Edit Navigation user links List additional actions" [ref=e89]:
                - cell "Navigation user links" [ref=e90]
                - cell "Edit Navigation user links List additional actions" [ref=e91]:
                  - list [ref=e94]:
                    - listitem [ref=e95]:
                      - link "Edit Navigation user links" [ref=e96] [cursor=pointer]:
                        - /url: /admin/structure/menu/manage/navigation-user-links
                        - text: Edit menu
                    - listitem:
                      - button "List additional actions" [ref=e97]:
                        - generic [ref=e98]: List additional actions
              - row "Tools Edit Tools List additional actions" [ref=e99]:
                - cell "Tools" [ref=e100]
                - cell "Edit Tools List additional actions" [ref=e101]:
                  - list [ref=e104]:
                    - listitem [ref=e105]:
                      - link "Edit Tools" [ref=e106] [cursor=pointer]:
                        - /url: /admin/structure/menu/manage/tools
                        - text: Edit menu
                    - listitem:
                      - button "List additional actions" [ref=e107]:
                        - generic [ref=e108]: List additional actions
              - row "User account menu Edit User account menu List additional actions" [ref=e109]:
                - cell "User account menu" [ref=e110]
                - cell "Edit User account menu List additional actions" [ref=e111]:
                  - list [ref=e114]:
                    - listitem [ref=e115]:
                      - link "Edit User account menu" [ref=e116] [cursor=pointer]:
                        - /url: /admin/structure/menu/manage/account
                        - text: Edit menu
                    - listitem:
                      - button "List additional actions" [ref=e117]:
                        - generic [ref=e118]: List additional actions
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