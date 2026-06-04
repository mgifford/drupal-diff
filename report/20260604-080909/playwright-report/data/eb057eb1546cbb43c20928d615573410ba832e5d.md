# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-content-types-article >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow/vrt/structure.spec.ts/structure-content-types-article.png, writing actual.
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
            - button "Tabs display toggle" [ref=e35]:
              - img [ref=e36]
    - main [ref=e39]:
      - generic [ref=e43]:
        - generic [ref=e44]:
          - generic [ref=e45] [cursor=pointer]: Name *
          - textbox "Name *" [ref=e46]: Article
          - generic [ref=e48]: "Machine name: article"
          - generic [ref=e49]:
            - text: The human-readable name for this content type, displayed on the
            - emphasis [ref=e50]: Content types
            - text: page.
        - text: "*"
        - generic [ref=e51]:
          - generic [ref=e52] [cursor=pointer]: Description
          - textbox "Description" [ref=e54]: Generated for visual regression seeding
          - generic [ref=e55]:
            - text: Displays on the
            - emphasis [ref=e56]: Content types
            - text: page.
        - generic [ref=e57]:
          - generic [ref=e58] [cursor=pointer]: Vertical Tabs
          - generic [ref=e59]:
            - group [ref=e60]:
              - button "Submission form settings Title" [expanded] [ref=e61] [cursor=pointer]:
                - text: Submission form settings
                - generic [ref=e62]: Title
              - generic [ref=e64]:
                - generic [ref=e65]:
                  - generic [ref=e66] [cursor=pointer]: Title field label *
                  - textbox "Title field label *" [ref=e67]: Title
                - group "Preview before submitting" [ref=e68]:
                  - generic [ref=e70]: Preview before submitting
                  - generic [ref=e72]:
                    - generic [ref=e73]:
                      - radio "Disabled" [ref=e74]
                      - text: Disabled
                    - generic [ref=e75]:
                      - radio "Optional" [checked] [ref=e76]
                      - text: Optional
                    - generic [ref=e77]:
                      - radio "Required" [ref=e78]
                      - text: Required
                - generic [ref=e79]:
                  - generic [ref=e80] [cursor=pointer]: Explanation or submission guidelines
                  - textbox "Explanation or submission guidelines" [ref=e82]
                  - generic [ref=e83]: This text will be displayed at the top of the page when creating or editing content of this type.
            - group [ref=e84]:
              - button "Publishing options Published, Create new revision" [ref=e85] [cursor=pointer]:
                - text: Publishing options
                - generic [ref=e86]: Published, Create new revision
            - group [ref=e87]:
              - button "Display settings Display author and date information" [ref=e88] [cursor=pointer]:
                - text: Display settings
                - generic [ref=e89]: Display author and date information
            - group [ref=e90]:
              - button "Menu settings" [ref=e91] [cursor=pointer]: Menu settings
              - option "<main>" [selected]
              - option "-- Home"
        - generic [ref=e92]:
          - button "Save" [ref=e93] [cursor=pointer]
          - link "Delete" [ref=e94] [cursor=pointer]:
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow/vrt/structure.spec.ts/structure-content-types-article.png, writing actual.
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