# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-text-formats-basic-html >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: screencast.showOverlays: Target page, context or browser has been closed
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
     |         ^ Error: screencast.showOverlays: Target page, context or browser has been closed
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