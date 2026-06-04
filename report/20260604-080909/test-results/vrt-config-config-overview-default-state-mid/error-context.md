# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-overview >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid/vrt/config.spec.ts/config-overview.png, writing actual.
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
      - heading "Configuration" [level=1] [ref=e22]
    - main [ref=e24]:
      - contentinfo "Error message" [ref=e29]:
        - heading "Error message" [level=2] [ref=e31]
        - generic [ref=e32]:
          - text: One or more problems were detected with your Drupal installation. Check the
          - link "status report" [ref=e33] [cursor=pointer]:
            - /url: /admin/reports/status
          - text: for more information.
        - button "Hide" [ref=e34] [cursor=pointer]: Hide
      - generic [ref=e37]:
        - link "Hide descriptions" [ref=e39] [cursor=pointer]:
          - /url: /admin/compact/on?destination=/admin/config
        - generic [ref=e40]:
          - generic [ref=e41]:
            - generic [ref=e42]:
              - heading "People" [level=3] [ref=e43]
              - generic [ref=e46]:
                - link "Account settings" [ref=e47] [cursor=pointer]:
                  - /url: /admin/config/people/accounts
                - generic [ref=e48]: Account settings
                - generic [ref=e49]: Configure default user account settings, including fields, registration requirements, and email messages.
            - generic [ref=e50]:
              - heading "Content authoring" [level=3] [ref=e51]
              - generic [ref=e54]:
                - link "Text formats and editors" [ref=e55] [cursor=pointer]:
                  - /url: /admin/config/content/formats
                - generic [ref=e56]: Text formats and editors
                - generic [ref=e57]: Select and configure text editors, and how content is filtered when displayed.
            - generic [ref=e58]:
              - heading "Development" [level=3] [ref=e59]
              - generic [ref=e61]:
                - generic [ref=e62]:
                  - link "Performance" [ref=e63] [cursor=pointer]:
                    - /url: /admin/config/development/performance
                  - generic [ref=e64]: Performance
                  - generic [ref=e65]: Configure caching and bandwidth optimization.
                - generic [ref=e66]:
                  - link "Development settings" [ref=e67] [cursor=pointer]:
                    - /url: /admin/config/development/settings
                  - generic [ref=e68]: Development settings
                  - generic [ref=e69]: Configure theme development settings
                - generic [ref=e70]:
                  - link "Logging and errors" [ref=e71] [cursor=pointer]:
                    - /url: /admin/config/development/logging
                  - generic [ref=e72]: Logging and errors
                  - generic [ref=e73]: Configure the display of error messages and database logging.
                - generic [ref=e74]:
                  - link "Maintenance mode" [ref=e75] [cursor=pointer]:
                    - /url: /admin/config/development/maintenance
                  - generic [ref=e76]: Maintenance mode
                  - generic [ref=e77]: Take the site offline for updates and other maintenance tasks.
                - generic [ref=e78]:
                  - link "Configuration synchronization" [ref=e79] [cursor=pointer]:
                    - /url: /admin/config/development/configuration
                  - generic [ref=e80]: Configuration synchronization
                  - generic [ref=e81]: Import and export your configuration.
            - generic [ref=e82]:
              - heading "Search and metadata" [level=3] [ref=e83]
              - generic [ref=e86]:
                - link "URL aliases" [ref=e87] [cursor=pointer]:
                  - /url: /admin/config/search/path
                - generic [ref=e88]: URL aliases
                - generic [ref=e89]: Add custom URLs to existing paths.
            - generic [ref=e90]:
              - heading "Web services" [level=3] [ref=e91]
              - generic [ref=e94]:
                - link "Menu Linkset Settings" [ref=e95] [cursor=pointer]:
                  - /url: /admin/config/services/linkset
                - generic [ref=e96]: Menu Linkset Settings
                - generic [ref=e97]: Enable or disable the menu linkset endpoint
          - generic [ref=e98]:
            - generic [ref=e99]:
              - heading "System" [level=3] [ref=e100]
              - generic [ref=e102]:
                - generic [ref=e103]:
                  - link "Basic site settings" [ref=e104] [cursor=pointer]:
                    - /url: /admin/config/system/site-information
                  - generic [ref=e105]: Basic site settings
                  - generic [ref=e106]: Change site name, email address, slogan, default front page, and error pages.
                - generic [ref=e107]:
                  - link "Cron" [ref=e108] [cursor=pointer]:
                    - /url: /admin/config/system/cron
                  - generic [ref=e109]: Cron
                  - generic [ref=e110]: Manage automatic site maintenance tasks.
            - generic [ref=e111]:
              - heading "User interface" [level=3] [ref=e112]
              - generic [ref=e114]:
                - generic [ref=e115]:
                  - link "Navigation blocks" [ref=e116] [cursor=pointer]:
                    - /url: /admin/config/user-interface/navigation-block
                  - generic [ref=e117]: Navigation blocks
                  - generic [ref=e118]: Manage navigation blocks.
                - generic [ref=e119]:
                  - link "Navigation settings" [ref=e120] [cursor=pointer]:
                    - /url: /admin/config/user-interface/navigation/settings
                  - generic [ref=e121]: Navigation settings
                  - generic [ref=e122]: Manage navigation settings.
            - generic [ref=e123]:
              - heading "Media" [level=3] [ref=e124]
              - generic [ref=e126]:
                - generic [ref=e127]:
                  - link "File system" [ref=e128] [cursor=pointer]:
                    - /url: /admin/config/media/file-system
                  - generic [ref=e129]: File system
                  - generic [ref=e130]: Configure the location of uploaded files and how they are accessed.
                - generic [ref=e131]:
                  - link "Image styles" [ref=e132] [cursor=pointer]:
                    - /url: /admin/config/media/image-styles
                  - generic [ref=e133]: Image styles
                  - generic [ref=e134]: Configure styles that can be used for resizing or adjusting images on display.
                - generic [ref=e135]:
                  - link "Image toolkit" [ref=e136] [cursor=pointer]:
                    - /url: /admin/config/media/image-toolkit
                  - generic [ref=e137]: Image toolkit
                  - generic [ref=e138]: Choose which image toolkit to use if you have installed optional toolkits.
            - generic [ref=e139]:
              - heading "Region and language" [level=3] [ref=e140]
              - generic [ref=e142]:
                - generic [ref=e143]:
                  - link "Regional settings" [ref=e144] [cursor=pointer]:
                    - /url: /admin/config/regional/settings
                  - generic [ref=e145]: Regional settings
                  - generic [ref=e146]: Configure the locale and timezone settings.
                - generic [ref=e147]:
                  - link "Date and time formats" [ref=e148] [cursor=pointer]:
                    - /url: /admin/config/regional/date-time
                  - generic [ref=e149]: Date and time formats
                  - generic [ref=e150]: Configure how dates and times are displayed.
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid/vrt/config.spec.ts/config-overview.png, writing actual.
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