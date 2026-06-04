# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-site-info >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid-dark/vrt/config.spec.ts/config-site-info.png, writing actual.
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
        - link "Configuration" [ref=e17] [cursor=pointer]:
          - /url: /admin/config
      - listitem:
        - text: /
        - link "System" [ref=e18] [cursor=pointer]:
          - /url: /admin/config/system
  - generic [ref=e19]:
    - banner [ref=e20]:
      - heading "Basic site settings" [level=1] [ref=e24]
    - main [ref=e26]:
      - generic [ref=e30]:
        - group [ref=e31]:
          - button "Site details" [expanded] [ref=e32] [cursor=pointer]: Site details
          - generic [ref=e33]:
            - generic [ref=e34]:
              - generic [ref=e35] [cursor=pointer]: Site name *
              - textbox "Site name *" [ref=e36]: Drupal 12
            - generic [ref=e37]:
              - generic [ref=e38] [cursor=pointer]: Slogan
              - textbox "Slogan" [ref=e39]
              - generic [ref=e40]: How this is used depends on your site's theme.
            - generic [ref=e41]:
              - generic [ref=e42] [cursor=pointer]: Email address *
              - textbox "Email address *" [ref=e43]: mike.gifford@civicactions.com
              - generic [ref=e44]:
                - text: The
                - emphasis [ref=e45]: From
                - text: address in automated emails sent during registration and new password requests, and other notifications. (Use an address ending in your site's domain to help prevent this email being flagged as spam.)
        - group [ref=e46]:
          - button "Front page" [expanded] [ref=e47] [cursor=pointer]: Front page
          - generic [ref=e49]:
            - generic [ref=e50] [cursor=pointer]: Default front page *
            - text: http://localhost
            - textbox "Default front page *" [ref=e51]: /node
            - generic [ref=e52]: Specify a relative URL to display as the front page.
        - group [ref=e53]:
          - button "Error pages" [expanded] [ref=e54] [cursor=pointer]: Error pages
          - generic [ref=e55]:
            - generic [ref=e56]:
              - generic [ref=e57] [cursor=pointer]: Default 403 (access denied) page
              - textbox "Default 403 (access denied) page" [ref=e58]
              - generic [ref=e59]: This page is displayed when the requested document is denied to the current user. Leave blank to display a generic "access denied" page.
            - generic [ref=e60]:
              - generic [ref=e61] [cursor=pointer]: Default 404 (not found) page
              - textbox "Default 404 (not found) page" [ref=e62]
              - generic [ref=e63]: This page is displayed when no other content matches the requested document. Leave blank to display a generic "page not found" page.
        - button "Save configuration" [ref=e65] [cursor=pointer]
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid-dark/vrt/config.spec.ts/config-site-info.png, writing actual.
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