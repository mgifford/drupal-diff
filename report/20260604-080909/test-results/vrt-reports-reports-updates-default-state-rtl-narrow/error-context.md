# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/reports.spec.ts >> reports-updates >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow/vrt/reports.spec.ts/reports-updates.png, writing actual.
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
        - link "Reports" [ref=e17] [cursor=pointer]:
          - /url: /admin/reports
  - generic [ref=e18]:
    - banner [ref=e19]:
      - heading "Available updates" [level=1] [ref=e23]
    - generic [ref=e27]:
      - heading "Primary tabs" [level=2] [ref=e28]
      - navigation "Primary tabs" [ref=e29]:
        - list [ref=e30]:
          - listitem [ref=e31]:
            - link "List" [ref=e32] [cursor=pointer]:
              - /url: /admin/reports/updates
            - button "Tabs display toggle" [ref=e33]:
              - img [ref=e34]
    - main [ref=e37]:
      - complementary [ref=e41]:
        - paragraph [ref=e42]: Here you can find information about available updates for your installed modules and themes. Note that each module or theme is part of a "project", which may or may not have the same name, and might include multiple modules or themes within it.
      - generic [ref=e44]:
        - paragraph [ref=e45]:
          - text: "Last checked: 3 minutes 26 seconds ago ("
          - link "Check manually" [ref=e46] [cursor=pointer]:
            - /url: /admin/reports/updates/check?destination=/admin/reports/updates&token=xNlOYr1BOZjxRXmtFpc73YDBk8BZK4--i-UMrL4Yb_0
          - text: )
        - heading "Drupal core" [level=3] [ref=e47]
        - table [ref=e49]:
          - rowgroup [ref=e50]:
            - row [ref=e51]:
              - cell [ref=e52]:
                - generic [ref=e55]: Not supported!
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow/vrt/reports.spec.ts/reports-updates.png, writing actual.
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