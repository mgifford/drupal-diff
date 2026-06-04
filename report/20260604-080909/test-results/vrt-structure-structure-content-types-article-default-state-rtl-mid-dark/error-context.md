# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-content-types-article >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid-dark/vrt/structure.spec.ts/structure-content-types-article.png, writing actual.
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
  - generic [ref=e19]:
    - banner [ref=e20]:
      - heading "Edit Article content type" [level=1] [ref=e24]:
        - text: Edit
        - emphasis [ref=e25]: Article
        - text: content type
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
    - main [ref=e44]:
      - generic [ref=e48]:
        - generic [ref=e49]:
          - generic [ref=e50] [cursor=pointer]: Name *
          - textbox "Name *" [ref=e51]: Article
          - generic [ref=e53]: "Machine name: article"
          - generic [ref=e54]:
            - text: The human-readable name for this content type, displayed on the
            - emphasis [ref=e55]: Content types
            - text: page.
        - text: "*"
        - generic [ref=e56]:
          - generic [ref=e57] [cursor=pointer]: Description
          - textbox "Description" [ref=e59]: Generated for visual regression seeding
          - generic [ref=e60]:
            - text: Displays on the
            - emphasis [ref=e61]: Content types
            - text: page.
        - generic [ref=e62]:
          - generic [ref=e63] [cursor=pointer]: Vertical Tabs
          - generic [ref=e64]:
            - list [ref=e65]:
              - listitem [ref=e66]:
                - link "Submission form settings Title (active tab)" [ref=e67] [cursor=pointer]:
                  - /url: "#edit-submission"
                  - generic [ref=e68]:
                    - strong [ref=e69]: Submission form settings
                    - generic [ref=e70]: Title
                  - generic [ref=e71]: (active tab)
              - listitem [ref=e72]:
                - link "Publishing options Published, Create new revision" [ref=e73] [cursor=pointer]:
                  - /url: "#edit-workflow"
                  - generic [ref=e74]:
                    - strong [ref=e75]: Publishing options
                    - generic [ref=e76]: Published, Create new revision
              - listitem [ref=e77]:
                - link "Display settings Display author and date information" [ref=e78] [cursor=pointer]:
                  - /url: "#edit-display"
                  - generic [ref=e79]:
                    - strong [ref=e80]: Display settings
                    - generic [ref=e81]: Display author and date information
              - listitem [ref=e82]:
                - link "Menu settings" [ref=e83] [cursor=pointer]:
                  - /url: "#edit-menu"
                  - strong [ref=e85]: Menu settings
            - group [ref=e87]:
              - generic [ref=e89]:
                - generic [ref=e90]:
                  - generic [ref=e91] [cursor=pointer]: Title field label *
                  - textbox "Title field label *" [ref=e92]: Title
                - group "Preview before submitting" [ref=e93]:
                  - generic [ref=e95]: Preview before submitting
                  - generic [ref=e97]:
                    - generic [ref=e98]:
                      - radio "Disabled" [ref=e99]
                      - text: Disabled
                    - generic [ref=e100]:
                      - radio "Optional" [checked] [ref=e101]
                      - text: Optional
                    - generic [ref=e102]:
                      - radio "Required" [ref=e103]
                      - text: Required
                - generic [ref=e104]:
                  - generic [ref=e105] [cursor=pointer]: Explanation or submission guidelines
                  - textbox "Explanation or submission guidelines" [ref=e107]
                  - generic [ref=e108]: This text will be displayed at the top of the page when creating or editing content of this type.
        - generic [ref=e109]:
          - button "Save" [ref=e110] [cursor=pointer]
          - link "Delete" [ref=e111] [cursor=pointer]:
            - /url: /admin/structure/types/manage/article/delete
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid-dark/vrt/structure.spec.ts/structure-content-types-article.png, writing actual.
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