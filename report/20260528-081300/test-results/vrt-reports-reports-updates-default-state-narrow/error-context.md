# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/reports.spec.ts >> reports-updates >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  37234 pixels (ratio 0.13 of all image pixels) are different.

  Snapshot: reports-updates.png

Call log:
  - Expect "toHaveScreenshot(reports-updates.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - 37234 pixels (ratio 0.13 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - 37234 pixels (ratio 0.13 of all image pixels) are different.

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
            - link "Reports" [ref=e24] [cursor=pointer]:
              - /url: /admin/reports
      - generic [ref=e25]:
        - heading "Available updates" [level=1] [ref=e27]
        - generic [ref=e28]:
          - heading "Primary tabs" [level=2] [ref=e29]
          - navigation "Primary tabs" [ref=e30]:
            - list [ref=e31]:
              - listitem [ref=e32]:
                - link "List" [ref=e33] [cursor=pointer]:
                  - /url: /admin/reports/updates
                - button "Tabs display toggle" [ref=e34]:
                  - img [ref=e36]
    - generic [ref=e39]:
      - complementary [ref=e42]:
        - paragraph [ref=e43]: Here you can find information about available updates for your installed modules and themes. Note that each module or theme is part of a "project", which may or may not have the same name, and might include multiple modules or themes within it.
      - generic [ref=e45]:
        - paragraph [ref=e46]:
          - text: "Last checked: 0 seconds ago ("
          - link "Check manually" [ref=e47] [cursor=pointer]:
            - /url: /admin/reports/updates/check?destination=/admin/reports/updates&token=KlRhCJjeceC8q5uoLj1Iub56Y8wVdLHDm731ST0_v4s
          - text: )
        - heading "Drupal core" [level=3] [ref=e48]
        - table [ref=e49]:
          - rowgroup [ref=e50]:
            - row [ref=e51]:
              - cell [ref=e52]:
                - generic [ref=e53]:
                  - text: Not supported!
                  - img "Error" [ref=e55]
                - generic [ref=e56]:
                  - link "Drupal core" [ref=e57] [cursor=pointer]:
                    - /url: https://www.drupal.org/project/drupal
                  - text: 12.0-dev
                - generic [ref=e58]:
                  - text: "Includes:"
                  - list [ref=e59]:
                    - listitem [ref=e60]:
                      - text: "Enabled:"
                      - emphasis [ref=e61]: Announcements, Automated Cron, BigPipe, Block, Block Content, Breakpoint, CKEditor 5, Configuration Manager, Contextual Links, Custom Menu Links, Database Logging, Datetime, Field, Field UI, File, Filter, Help, Image, Internal Dynamic Page Cache, Internal Page Cache, Layout Builder, Layout Discovery, Link, Menu UI, MySQL, Navigation, Node, Options, Path, Path alias, System, Taxonomy, Text, Text Editor, Update Status, User, Views, Views UI
                    - listitem [ref=e62]:
                      - text: "Disabled:"
                      - emphasis [ref=e63]: Comment, Configuration Translation, Content Moderation, Content Translation, Datetime Range, HTTP Basic Authentication, Inline Form Errors, Interface Translation, JSON:API, Language, Layout Builder Expose All Field Blocks, Mailer, Media, Media Library, Migrate, Migrate Drupal, Migrate Drupal UI, Password Compatibility, PostgreSQL, RESTful Web Services, Responsive Image, SQLite, Search, Search help, Search node, Serialization, Settings Tray, Shortcut, Syslog, Telephone, Toolbar, Workflows, Workspaces, Workspaces UI
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