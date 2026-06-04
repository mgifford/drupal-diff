# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-overview >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid/vrt/structure.spec.ts/structure-overview.png, writing actual.
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
  - generic [ref=e17]:
    - banner [ref=e18]:
      - heading "Structure" [level=1] [ref=e22]
    - main [ref=e24]:
      - generic [ref=e28]:
        - generic [ref=e29]:
          - link "Block layout" [ref=e30] [cursor=pointer]:
            - /url: /admin/structure/block
          - generic [ref=e31]: Block layout
          - generic [ref=e32]: Configure what block content appears in your site's sidebars and other regions.
        - generic [ref=e33]:
          - link "Block types" [ref=e34] [cursor=pointer]:
            - /url: /admin/structure/block-content
          - generic [ref=e35]: Block types
          - generic [ref=e36]: Create and manage fields, forms, and display settings for your content blocks.
        - generic [ref=e37]:
          - link "Content types" [ref=e38] [cursor=pointer]:
            - /url: /admin/structure/types
          - generic [ref=e39]: Content types
          - generic [ref=e40]: Create and manage fields, forms, and display settings for your content.
        - generic [ref=e41]:
          - link "Display modes" [ref=e42] [cursor=pointer]:
            - /url: /admin/structure/display-modes
          - generic [ref=e43]: Display modes
          - generic [ref=e44]: Configure what displays are available for your content and forms.
        - generic [ref=e45]:
          - link "Menus" [ref=e46] [cursor=pointer]:
            - /url: /admin/structure/menu
          - generic [ref=e47]: Menus
          - generic [ref=e48]: Manage menus and menu links.
        - generic [ref=e49]:
          - link "Taxonomy" [ref=e50] [cursor=pointer]:
            - /url: /admin/structure/taxonomy
          - generic [ref=e51]: Taxonomy
          - generic [ref=e52]: Manage tagging, categorization, and classification of your content.
        - generic [ref=e53]:
          - link "Views" [ref=e54] [cursor=pointer]:
            - /url: /admin/structure/views
          - generic [ref=e55]: Views
          - generic [ref=e56]: Manage customized lists of content.
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid/vrt/structure.spec.ts/structure-overview.png, writing actual.
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