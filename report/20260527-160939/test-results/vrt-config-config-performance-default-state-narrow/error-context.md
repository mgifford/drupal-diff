# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-performance >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 430px by 1101px, received 375px by 1019px. 42390 pixels (ratio 0.09 of all image pixels) are different.

  Snapshot: config-performance.png

Call log:
  - Expect "toHaveScreenshot(config-performance.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 430px by 1101px, received 375px by 1019px. 42390 pixels (ratio 0.09 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 430px by 1101px, received 375px by 1019px. 42390 pixels (ratio 0.09 of all image pixels) are different.

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
            - link "Development" [ref=e26] [cursor=pointer]:
              - /url: /admin/config/development
      - heading "Performance" [level=1] [ref=e29]
    - generic [ref=e33]:
      - group [ref=e35]:
        - button "Clear cache" [expanded] [ref=e36] [cursor=pointer]: Clear cache
        - button "Clear all caches" [ref=e38] [cursor=pointer]
      - generic [ref=e39]:
        - group [ref=e40]:
          - button "Caching" [expanded] [ref=e41] [cursor=pointer]: Caching
          - generic [ref=e43]:
            - generic [ref=e44] [cursor=pointer]: Browser and proxy cache maximum age
            - combobox "Browser and proxy cache maximum age" [ref=e45]:
              - option "<no caching>" [selected]
              - option "1 min"
              - option "3 min"
              - option "5 min"
              - option "10 min"
              - option "15 min"
              - option "30 min"
              - option "45 min"
              - option "1 hour"
              - option "3 hours"
              - option "6 hours"
              - option "9 hours"
              - option "12 hours"
              - option "1 day"
            - generic [ref=e46]: This is used as the value for max-age in Cache-Control headers.
        - group [ref=e47]:
          - button "Bandwidth optimization" [expanded] [ref=e48] [cursor=pointer]: Bandwidth optimization
          - generic [ref=e49]:
            - generic [ref=e50]: External resources can be optimized automatically, which can reduce both the size and number of requests made to your website.
            - generic [ref=e51]:
              - checkbox "Aggregate CSS files" [checked] [ref=e52]
              - text: Aggregate CSS files
            - generic [ref=e53]:
              - checkbox "Aggregate JavaScript files" [checked] [ref=e54]
              - text: Aggregate JavaScript files
        - button "Save configuration" [ref=e56] [cursor=pointer]
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