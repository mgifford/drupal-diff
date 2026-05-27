# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-site-info >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 435px by 1519px, received 375px by 1482px. 54380 pixels (ratio 0.09 of all image pixels) are different.

  Snapshot: config-site-info.png

Call log:
  - Expect "toHaveScreenshot(config-site-info.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 435px by 1519px, received 375px by 1482px. 54380 pixels (ratio 0.09 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 435px by 1519px, received 375px by 1482px. 54380 pixels (ratio 0.09 of all image pixels) are different.

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
            - link "System" [ref=e26] [cursor=pointer]:
              - /url: /admin/config/system
      - heading "Basic site settings" [level=1] [ref=e29]
    - generic [ref=e34]:
      - group [ref=e35]:
        - button "Site details" [expanded] [ref=e36] [cursor=pointer]: Site details
        - generic [ref=e37]:
          - generic [ref=e38]:
            - generic [ref=e39] [cursor=pointer]: Site name *
            - textbox "Site name *" [ref=e40]: Drupal 12 Test
          - generic [ref=e41]:
            - generic [ref=e42] [cursor=pointer]: Slogan
            - textbox "Slogan" [ref=e43]
            - generic [ref=e44]: How this is used depends on your site's theme.
          - generic [ref=e45]:
            - generic [ref=e46] [cursor=pointer]: Email address *
            - textbox "Email address *" [ref=e47]: admin@example.test
            - generic [ref=e48]:
              - text: The
              - emphasis [ref=e49]: From
              - text: address in automated emails sent during registration and new password requests, and other notifications. (Use an address ending in your site's domain to help prevent this email being flagged as spam.)
      - group [ref=e50]:
        - button "Front page" [expanded] [ref=e51] [cursor=pointer]: Front page
        - generic [ref=e53]:
          - generic [ref=e54] [cursor=pointer]: Default front page *
          - text: http://localhost
          - textbox "Default front page *" [ref=e55]: /node
          - generic [ref=e56]: Specify a relative URL to display as the front page.
      - group [ref=e57]:
        - button "Error pages" [expanded] [ref=e58] [cursor=pointer]: Error pages
        - generic [ref=e59]:
          - generic [ref=e60]:
            - generic [ref=e61] [cursor=pointer]: Default 403 (access denied) page
            - textbox "Default 403 (access denied) page" [ref=e62]
            - generic [ref=e63]: This page is displayed when the requested document is denied to the current user. Leave blank to display a generic "access denied" page.
          - generic [ref=e64]:
            - generic [ref=e65] [cursor=pointer]: Default 404 (not found) page
            - textbox "Default 404 (not found) page" [ref=e66]
            - generic [ref=e67]: This page is displayed when no other content matches the requested document. Leave blank to display a generic "page not found" page.
      - button "Save configuration" [ref=e69] [cursor=pointer]
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