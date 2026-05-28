# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-content-types-article >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 508px by 1642px, received 375px by 1687px. 49326 pixels (ratio 0.06 of all image pixels) are different.

  Snapshot: structure-content-types-article.png

Call log:
  - Expect "toHaveScreenshot(structure-content-types-article.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 508px by 1642px, received 375px by 1687px. 49326 pixels (ratio 0.06 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 508px by 1642px, received 375px by 1687px. 49326 pixels (ratio 0.06 of all image pixels) are different.

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
          - listitem [ref=e25]:
            - link "Content types" [ref=e26] [cursor=pointer]:
              - /url: /admin/structure/types
      - generic [ref=e27]:
        - heading "Edit Article content type" [level=1] [ref=e29]:
          - text: Edit
          - emphasis [ref=e30]: Article
          - text: content type
        - generic [ref=e31]:
          - heading "Primary tabs" [level=2] [ref=e32]
          - navigation "Primary tabs" [ref=e33]:
            - list [ref=e34]:
              - listitem [ref=e35]:
                - link "Edit" [ref=e36] [cursor=pointer]:
                  - /url: /admin/structure/types/manage/article
                - button "Tabs display toggle" [ref=e37]:
                  - img [ref=e39]
    - generic [ref=e45]:
      - generic [ref=e46]:
        - generic [ref=e47] [cursor=pointer]: Name *
        - textbox "Name *" [ref=e48]: Article
        - generic [ref=e50]: "Machine name: article"
        - generic [ref=e51]:
          - text: The human-readable name for this content type, displayed on the
          - emphasis [ref=e52]: Content types
          - text: page.
      - text: "*"
      - generic [ref=e53]:
        - generic [ref=e54] [cursor=pointer]: Description
        - textbox "Description" [ref=e56]: Generated for visual regression seeding
        - generic [ref=e57]:
          - text: Displays on the
          - emphasis [ref=e58]: Content types
          - text: page.
      - generic [ref=e59]:
        - generic [ref=e60] [cursor=pointer]: Vertical Tabs
        - generic [ref=e61]:
          - group [ref=e62]:
            - button "Submission form settings Title" [expanded] [ref=e63] [cursor=pointer]:
              - text: Submission form settings
              - generic [ref=e64]: Title
            - generic [ref=e66]:
              - generic [ref=e67]:
                - generic [ref=e68] [cursor=pointer]: Title field label *
                - textbox "Title field label *" [ref=e69]: Title
              - group "Preview before submitting" [ref=e70]:
                - generic [ref=e72]: Preview before submitting
                - generic [ref=e74]:
                  - generic [ref=e75]:
                    - radio "Disabled" [ref=e76]
                    - text: Disabled
                  - generic [ref=e77]:
                    - radio "Optional" [checked] [ref=e78]
                    - text: Optional
                  - generic [ref=e79]:
                    - radio "Required" [ref=e80]
                    - text: Required
              - generic [ref=e81]:
                - generic [ref=e82] [cursor=pointer]: Explanation or submission guidelines
                - textbox "Explanation or submission guidelines" [ref=e84]
                - generic [ref=e85]: This text will be displayed at the top of the page when creating or editing content of this type.
          - group [ref=e86]:
            - button "Publishing options Published, Create new revision" [ref=e87] [cursor=pointer]:
              - text: Publishing options
              - generic [ref=e88]: Published, Create new revision
          - group [ref=e89]:
            - button "Display settings Display author and date information" [ref=e90] [cursor=pointer]:
              - text: Display settings
              - generic [ref=e91]: Display author and date information
          - group [ref=e92]:
            - button "Menu settings" [ref=e93] [cursor=pointer]: Menu settings
            - option "<main>" [selected]
            - option "-- Home"
      - generic [ref=e94]:
        - button "Save" [ref=e95] [cursor=pointer]
        - link "Delete" [ref=e96] [cursor=pointer]:
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