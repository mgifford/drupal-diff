# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-menus >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid/vrt/structure.spec.ts/structure-menus.png, writing actual.
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
      - table [ref=e40]:
        - rowgroup [ref=e41]:
          - row "Title Description Operations" [ref=e42]:
            - columnheader "Title" [ref=e43]
            - columnheader "Description" [ref=e44]
            - columnheader "Operations" [ref=e45]
        - rowgroup [ref=e46]:
          - row "Administration Administrative task links Edit Administration List additional actions" [ref=e47]:
            - cell "Administration" [ref=e48]
            - cell "Administrative task links" [ref=e49]
            - cell "Edit Administration List additional actions" [ref=e50]:
              - list [ref=e53]:
                - listitem [ref=e54]:
                  - link "Edit Administration" [ref=e55] [cursor=pointer]:
                    - /url: /admin/structure/menu/manage/admin
                    - text: Edit menu
                - listitem:
                  - button "List additional actions" [ref=e56]:
                    - generic [ref=e57]: List additional actions
          - row "Content Content task links Edit Content List additional actions" [ref=e58]:
            - cell "Content" [ref=e59]
            - cell "Content task links" [ref=e60]
            - cell "Edit Content List additional actions" [ref=e61]:
              - list [ref=e64]:
                - listitem [ref=e65]:
                  - link "Edit Content" [ref=e66] [cursor=pointer]:
                    - /url: /admin/structure/menu/manage/content
                    - text: Edit menu
                - listitem:
                  - button "List additional actions" [ref=e67]:
                    - generic [ref=e68]: List additional actions
          - row "Footer Site information links Edit Footer List additional actions" [ref=e69]:
            - cell "Footer" [ref=e70]
            - cell "Site information links" [ref=e71]
            - cell "Edit Footer List additional actions" [ref=e72]:
              - list [ref=e75]:
                - listitem [ref=e76]:
                  - link "Edit Footer" [ref=e77] [cursor=pointer]:
                    - /url: /admin/structure/menu/manage/footer
                    - text: Edit menu
                - listitem:
                  - button "List additional actions" [ref=e78]:
                    - generic [ref=e79]: List additional actions
          - row "Main navigation Site section links Edit Main navigation List additional actions" [ref=e80]:
            - cell "Main navigation" [ref=e81]
            - cell "Site section links" [ref=e82]
            - cell "Edit Main navigation List additional actions" [ref=e83]:
              - list [ref=e86]:
                - listitem [ref=e87]:
                  - link "Edit Main navigation" [ref=e88] [cursor=pointer]:
                    - /url: /admin/structure/menu/manage/main
                    - text: Edit menu
                - listitem:
                  - button "List additional actions" [ref=e89]:
                    - generic [ref=e90]: List additional actions
          - row "Navigation user links User links to be used in Navigation Edit Navigation user links List additional actions" [ref=e91]:
            - cell "Navigation user links" [ref=e92]
            - cell "User links to be used in Navigation" [ref=e93]
            - cell "Edit Navigation user links List additional actions" [ref=e94]:
              - list [ref=e97]:
                - listitem [ref=e98]:
                  - link "Edit Navigation user links" [ref=e99] [cursor=pointer]:
                    - /url: /admin/structure/menu/manage/navigation-user-links
                    - text: Edit menu
                - listitem:
                  - button "List additional actions" [ref=e100]:
                    - generic [ref=e101]: List additional actions
          - row "Tools User tool links, often added by modules Edit Tools List additional actions" [ref=e102]:
            - cell "Tools" [ref=e103]
            - cell "User tool links, often added by modules" [ref=e104]
            - cell "Edit Tools List additional actions" [ref=e105]:
              - list [ref=e108]:
                - listitem [ref=e109]:
                  - link "Edit Tools" [ref=e110] [cursor=pointer]:
                    - /url: /admin/structure/menu/manage/tools
                    - text: Edit menu
                - listitem:
                  - button "List additional actions" [ref=e111]:
                    - generic [ref=e112]: List additional actions
          - row "User account menu Links related to the active user account Edit User account menu List additional actions" [ref=e113]:
            - cell "User account menu" [ref=e114]
            - cell "Links related to the active user account" [ref=e115]
            - cell "Edit User account menu List additional actions" [ref=e116]:
              - list [ref=e119]:
                - listitem [ref=e120]:
                  - link "Edit User account menu" [ref=e121] [cursor=pointer]:
                    - /url: /admin/structure/menu/manage/account
                    - text: Edit menu
                - listitem:
                  - button "List additional actions" [ref=e122]:
                    - generic [ref=e123]: List additional actions
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid/vrt/structure.spec.ts/structure-menus.png, writing actual.
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