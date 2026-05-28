# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-overview >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 393px by 3595px, received 375px by 3355px. 61614 pixels (ratio 0.05 of all image pixels) are different.

  Snapshot: config-overview.png

Call log:
  - Expect "toHaveScreenshot(config-overview.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 393px by 3595px, received 375px by 3355px. 61614 pixels (ratio 0.05 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 393px by 3595px, received 375px by 3355px. 61614 pixels (ratio 0.05 of all image pixels) are different.

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
      - heading "Configuration" [level=1] [ref=e25]
    - generic [ref=e27]:
      - contentinfo "Error message" [ref=e31]:
        - alert [ref=e32]:
          - heading "Error message" [level=2] [ref=e34]
          - generic [ref=e35]:
            - text: One or more problems were detected with your Drupal installation. Check the
            - link "status report" [ref=e36] [cursor=pointer]:
              - /url: /admin/reports/status
            - text: for more information.
      - generic [ref=e38]:
        - link "Hide descriptions" [ref=e40] [cursor=pointer]:
          - /url: /admin/compact/on?destination=/admin/config
        - generic [ref=e41]:
          - generic [ref=e42]:
            - generic [ref=e43]:
              - heading "People" [level=3] [ref=e44]
              - generic [ref=e47]:
                - term [ref=e48]:
                  - link "Account settings" [ref=e49] [cursor=pointer]:
                    - /url: /admin/config/people/accounts
                - definition [ref=e50]: Configure default user account settings, including fields, registration requirements, and email messages.
            - generic [ref=e51]:
              - heading "Content authoring" [level=3] [ref=e52]
              - generic [ref=e55]:
                - term [ref=e56]:
                  - link "Text formats and editors" [ref=e57] [cursor=pointer]:
                    - /url: /admin/config/content/formats
                - definition [ref=e58]: Select and configure text editors, and how content is filtered when displayed.
            - generic [ref=e59]:
              - heading "Development" [level=3] [ref=e60]
              - generic [ref=e62]:
                - generic [ref=e63]:
                  - term [ref=e64]:
                    - link "Performance" [ref=e65] [cursor=pointer]:
                      - /url: /admin/config/development/performance
                  - definition [ref=e66]: Configure caching and bandwidth optimization.
                - generic [ref=e67]:
                  - term [ref=e68]:
                    - link "Development settings" [ref=e69] [cursor=pointer]:
                      - /url: /admin/config/development/settings
                  - definition [ref=e70]: Configure theme development settings
                - generic [ref=e71]:
                  - term [ref=e72]:
                    - link "Logging and errors" [ref=e73] [cursor=pointer]:
                      - /url: /admin/config/development/logging
                  - definition [ref=e74]: Configure the display of error messages and database logging.
                - generic [ref=e75]:
                  - term [ref=e76]:
                    - link "Maintenance mode" [ref=e77] [cursor=pointer]:
                      - /url: /admin/config/development/maintenance
                  - definition [ref=e78]: Take the site offline for updates and other maintenance tasks.
                - generic [ref=e79]:
                  - term [ref=e80]:
                    - link "Configuration synchronization" [ref=e81] [cursor=pointer]:
                      - /url: /admin/config/development/configuration
                  - definition [ref=e82]: Import and export your configuration.
            - generic [ref=e83]:
              - heading "Search and metadata" [level=3] [ref=e84]
              - generic [ref=e87]:
                - term [ref=e88]:
                  - link "URL aliases" [ref=e89] [cursor=pointer]:
                    - /url: /admin/config/search/path
                - definition [ref=e90]: Add custom URLs to existing paths.
            - generic [ref=e91]:
              - heading "Web services" [level=3] [ref=e92]
              - generic [ref=e95]:
                - term [ref=e96]:
                  - link "Menu Linkset Settings" [ref=e97] [cursor=pointer]:
                    - /url: /admin/config/services/linkset
                - definition [ref=e98]: Enable or disable the menu linkset endpoint
          - generic [ref=e99]:
            - generic [ref=e100]:
              - heading "System" [level=3] [ref=e101]
              - generic [ref=e103]:
                - generic [ref=e104]:
                  - term [ref=e105]:
                    - link "Basic site settings" [ref=e106] [cursor=pointer]:
                      - /url: /admin/config/system/site-information
                  - definition [ref=e107]: Change site name, email address, slogan, default front page, and error pages.
                - generic [ref=e108]:
                  - term [ref=e109]:
                    - link "Cron" [ref=e110] [cursor=pointer]:
                      - /url: /admin/config/system/cron
                  - definition [ref=e111]: Manage automatic site maintenance tasks.
            - generic [ref=e112]:
              - heading "User interface" [level=3] [ref=e113]
              - generic [ref=e115]:
                - generic [ref=e116]:
                  - term [ref=e117]:
                    - link "Navigation blocks" [ref=e118] [cursor=pointer]:
                      - /url: /admin/config/user-interface/navigation-block
                  - definition [ref=e119]: Manage navigation blocks.
                - generic [ref=e120]:
                  - term [ref=e121]:
                    - link "Navigation settings" [ref=e122] [cursor=pointer]:
                      - /url: /admin/config/user-interface/navigation/settings
                  - definition [ref=e123]: Manage navigation settings.
            - generic [ref=e124]:
              - heading "Media" [level=3] [ref=e125]
              - generic [ref=e127]:
                - generic [ref=e128]:
                  - term [ref=e129]:
                    - link "File system" [ref=e130] [cursor=pointer]:
                      - /url: /admin/config/media/file-system
                  - definition [ref=e131]: Configure the location of uploaded files and how they are accessed.
                - generic [ref=e132]:
                  - term [ref=e133]:
                    - link "Image styles" [ref=e134] [cursor=pointer]:
                      - /url: /admin/config/media/image-styles
                  - definition [ref=e135]: Configure styles that can be used for resizing or adjusting images on display.
                - generic [ref=e136]:
                  - term [ref=e137]:
                    - link "Image toolkit" [ref=e138] [cursor=pointer]:
                      - /url: /admin/config/media/image-toolkit
                  - definition [ref=e139]: Choose which image toolkit to use if you have installed optional toolkits.
            - generic [ref=e140]:
              - heading "Region and language" [level=3] [ref=e141]
              - generic [ref=e143]:
                - generic [ref=e144]:
                  - term [ref=e145]:
                    - link "Regional settings" [ref=e146] [cursor=pointer]:
                      - /url: /admin/config/regional/settings
                  - definition [ref=e147]: Configure the locale and timezone settings.
                - generic [ref=e148]:
                  - term [ref=e149]:
                    - link "Date and time formats" [ref=e150] [cursor=pointer]:
                      - /url: /admin/config/regional/date-time
                  - definition [ref=e151]: Configure how dates and times are displayed.
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