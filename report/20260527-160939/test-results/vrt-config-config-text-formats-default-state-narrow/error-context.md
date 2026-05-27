# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-text-formats >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 509px by 1129px, received 562px by 1208px. 57009 pixels (ratio 0.09 of all image pixels) are different.

  Snapshot: config-text-formats.png

Call log:
  - Expect "toHaveScreenshot(config-text-formats.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 509px by 1129px, received 562px by 1208px. 57009 pixels (ratio 0.09 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 509px by 1129px, received 562px by 1208px. 57009 pixels (ratio 0.09 of all image pixels) are different.

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
            - link "Configuration" [ref=e24] [cursor=pointer]:
              - /url: /admin/config
          - listitem [ref=e25]:
            - link "Content authoring" [ref=e26] [cursor=pointer]:
              - /url: /admin/config/content
      - heading "Text formats and editors" [level=1] [ref=e29]
    - generic [ref=e31]:
      - complementary [ref=e34]:
        - paragraph [ref=e35]:
          - text: Text formats define how text is filtered for output and how HTML tags and other text is displayed, replaced, or removed.
          - strong [ref=e36]: Improper text format configuration is a security risk.
          - text: Learn more on the
          - link "Filter module help page" [ref=e37] [cursor=pointer]:
            - /url: /admin/help/filter
          - text: .
        - paragraph [ref=e38]: Text formats are presented on content editing pages in the order defined on this page. The first format available to a user will be selected by default.
      - generic [ref=e39]:
        - list [ref=e41]:
          - listitem [ref=e42]:
            - link "+Add text format" [ref=e43] [cursor=pointer]:
              - /url: /admin/config/content/formats/add
        - generic [ref=e45]:
          - button "Show row weights" [ref=e47] [cursor=pointer]:
            - generic [ref=e48]: Show row weights
          - table [ref=e49]:
            - rowgroup [ref=e50]:
              - row "Name Text editor Roles Status Operations" [ref=e51]:
                - columnheader "Name" [ref=e52]
                - columnheader "Text editor" [ref=e53]
                - columnheader "Roles" [ref=e54]
                - columnheader "Status" [ref=e55]
                - columnheader "Operations" [ref=e56]
            - rowgroup [ref=e57]:
              - row "Basic HTML CKEditor 5 Authenticated user, Administrator Enabled Edit Basic HTML List additional actions" [ref=e58]:
                - cell "Basic HTML" [ref=e59]:
                  - generic [ref=e60]:
                    - link "Change order" [ref=e61]:
                      - /url: "#"
                    - generic [ref=e62]: Basic HTML
                - cell "CKEditor 5" [ref=e63]
                - cell "Authenticated user, Administrator" [ref=e64]:
                  - list [ref=e66]:
                    - listitem [ref=e67]: Authenticated user,
                    - listitem [ref=e68]: Administrator
                - cell "Enabled" [ref=e69]
                - cell "Edit Basic HTML List additional actions" [ref=e70]:
                  - list [ref=e73]:
                    - listitem [ref=e74]:
                      - link "Edit Basic HTML" [ref=e75] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/basic_html?destination=/admin/config/content/formats
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e76]:
                        - generic [ref=e77]: List additional actions
              - row "Restricted HTML — Anonymous user, Administrator Enabled Edit Restricted HTML List additional actions" [ref=e78]:
                - cell "Restricted HTML" [ref=e79]:
                  - generic [ref=e80]:
                    - link "Change order" [ref=e81]:
                      - /url: "#"
                    - generic [ref=e82]: Restricted HTML
                - cell "—" [ref=e83]
                - cell "Anonymous user, Administrator" [ref=e84]:
                  - list [ref=e86]:
                    - listitem [ref=e87]: Anonymous user,
                    - listitem [ref=e88]: Administrator
                - cell "Enabled" [ref=e89]
                - cell "Edit Restricted HTML List additional actions" [ref=e90]:
                  - list [ref=e93]:
                    - listitem [ref=e94]:
                      - link "Edit Restricted HTML" [ref=e95] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/restricted_html?destination=/admin/config/content/formats
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e96]:
                        - generic [ref=e97]: List additional actions
              - row "Full HTML CKEditor 5 Administrator Enabled Edit Full HTML List additional actions" [ref=e98]:
                - cell "Full HTML" [ref=e99]:
                  - generic [ref=e100]:
                    - link "Change order" [ref=e101]:
                      - /url: "#"
                    - generic [ref=e102]: Full HTML
                - cell "CKEditor 5" [ref=e103]
                - cell "Administrator" [ref=e104]:
                  - list [ref=e106]:
                    - listitem [ref=e107]: Administrator
                - cell "Enabled" [ref=e108]
                - cell "Edit Full HTML List additional actions" [ref=e109]:
                  - list [ref=e112]:
                    - listitem [ref=e113]:
                      - link "Edit Full HTML" [ref=e114] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/full_html?destination=/admin/config/content/formats
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e115]:
                        - generic [ref=e116]: List additional actions
              - row "Plain text — This format is shown when no other formats are available Enabled Edit Plain text" [ref=e117]:
                - cell "Plain text" [ref=e118]:
                  - generic [ref=e119]:
                    - link "Change order" [ref=e120]:
                      - /url: "#"
                    - generic [ref=e121]: Plain text
                - cell "—" [ref=e122]
                - cell "This format is shown when no other formats are available" [ref=e123]:
                  - emphasis [ref=e124]: This format is shown when no other formats are available
                - cell "Enabled" [ref=e125]
                - cell "Edit Plain text" [ref=e126]:
                  - list [ref=e129]:
                    - listitem [ref=e130]:
                      - link "Edit Plain text" [ref=e131] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/plain_text?destination=/admin/config/content/formats
                        - text: Configure
          - button "Save" [ref=e133] [cursor=pointer]
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