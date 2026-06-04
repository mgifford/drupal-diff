# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-text-formats >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow/vrt/config.spec.ts/config-text-formats.png, writing actual.
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
          - link "Configuration" [ref=e17] [cursor=pointer]:
            - /url: /admin/config
        - listitem:
          - text: /
          - link "Content authoring" [ref=e18] [cursor=pointer]:
            - /url: /admin/config/content
    - list [ref=e20]:
      - listitem [ref=e21]:
        - link "+Add text format" [ref=e22] [cursor=pointer]:
          - /url: /admin/config/content/formats/add
  - generic [ref=e23]:
    - banner [ref=e24]:
      - heading "Text formats and editors" [level=1] [ref=e28]
    - main [ref=e30]:
      - complementary [ref=e34]:
        - paragraph [ref=e35]:
          - text: Text formats define how text is filtered for output and how HTML tags and other text is displayed, replaced, or removed.
          - strong [ref=e36]: Improper text format configuration is a security risk.
          - text: Learn more on the
          - link "Filter module help page" [ref=e37] [cursor=pointer]:
            - /url: /admin/help/filter
          - text: .
        - paragraph [ref=e38]: Text formats are presented on content editing pages in the order defined on this page. The first format available to a user will be selected by default.
      - generic [ref=e41]:
        - generic [ref=e42]:
          - button "Show row weights" [ref=e44] [cursor=pointer]:
            - generic [ref=e45]: Show row weights
          - table [ref=e47]:
            - rowgroup [ref=e48]:
              - row "Name Text editor Roles Status Operations" [ref=e49]:
                - columnheader "Name" [ref=e50]
                - columnheader "Text editor" [ref=e51]
                - columnheader "Roles" [ref=e52]
                - columnheader "Status" [ref=e53]
                - columnheader "Operations" [ref=e54]
            - rowgroup [ref=e55]:
              - row "Basic HTML CKEditor 5 Authenticated user, Administrator Enabled Edit Basic HTML List additional actions" [ref=e56]:
                - cell "Basic HTML" [ref=e57]:
                  - generic [ref=e58]:
                    - link "Change order" [ref=e59]:
                      - /url: "#"
                    - generic [ref=e60]: Basic HTML
                - cell "CKEditor 5" [ref=e61]
                - cell "Authenticated user, Administrator" [ref=e62]:
                  - list [ref=e63]:
                    - listitem [ref=e64]: Authenticated user,
                    - listitem [ref=e65]: Administrator
                - cell "Enabled" [ref=e66]
                - cell "Edit Basic HTML List additional actions" [ref=e67]:
                  - list [ref=e70]:
                    - listitem [ref=e71]:
                      - link "Edit Basic HTML" [ref=e72] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/basic_html?destination=/admin/config/content/formats
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e73]:
                        - generic [ref=e74]: List additional actions
              - row "Restricted HTML — Anonymous user, Administrator Enabled Edit Restricted HTML List additional actions" [ref=e75]:
                - cell "Restricted HTML" [ref=e76]:
                  - generic [ref=e77]:
                    - link "Change order" [ref=e78]:
                      - /url: "#"
                    - generic [ref=e79]: Restricted HTML
                - cell "—" [ref=e80]
                - cell "Anonymous user, Administrator" [ref=e81]:
                  - list [ref=e82]:
                    - listitem [ref=e83]: Anonymous user,
                    - listitem [ref=e84]: Administrator
                - cell "Enabled" [ref=e85]
                - cell "Edit Restricted HTML List additional actions" [ref=e86]:
                  - list [ref=e89]:
                    - listitem [ref=e90]:
                      - link "Edit Restricted HTML" [ref=e91] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/restricted_html?destination=/admin/config/content/formats
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e92]:
                        - generic [ref=e93]: List additional actions
              - row "Full HTML CKEditor 5 Administrator Enabled Edit Full HTML List additional actions" [ref=e94]:
                - cell "Full HTML" [ref=e95]:
                  - generic [ref=e96]:
                    - link "Change order" [ref=e97]:
                      - /url: "#"
                    - generic [ref=e98]: Full HTML
                - cell "CKEditor 5" [ref=e99]
                - cell "Administrator" [ref=e100]:
                  - list [ref=e101]:
                    - listitem [ref=e102]: Administrator
                - cell "Enabled" [ref=e103]
                - cell "Edit Full HTML List additional actions" [ref=e104]:
                  - list [ref=e107]:
                    - listitem [ref=e108]:
                      - link "Edit Full HTML" [ref=e109] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/full_html?destination=/admin/config/content/formats
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e110]:
                        - generic [ref=e111]: List additional actions
              - row "Plain text — This format is shown when no other formats are available Enabled Edit Plain text" [ref=e112]:
                - cell "Plain text" [ref=e113]:
                  - generic [ref=e114]:
                    - link "Change order" [ref=e115]:
                      - /url: "#"
                    - generic [ref=e116]: Plain text
                - cell "—" [ref=e117]
                - cell "This format is shown when no other formats are available" [ref=e118]:
                  - emphasis [ref=e119]: This format is shown when no other formats are available
                - cell "Enabled" [ref=e120]
                - cell "Edit Plain text" [ref=e121]:
                  - list [ref=e124]:
                    - listitem [ref=e125]:
                      - link "Edit Plain text" [ref=e126] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/plain_text?destination=/admin/config/content/formats
                        - text: Configure
        - button "Save" [ref=e128] [cursor=pointer]
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow/vrt/config.spec.ts/config-text-formats.png, writing actual.
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