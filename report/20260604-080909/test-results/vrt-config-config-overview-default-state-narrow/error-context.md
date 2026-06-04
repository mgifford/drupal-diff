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

  Expected an image 393px by 3595px, received 375px by 3574px. 36961 pixels (ratio 0.03 of all image pixels) are different.

  Snapshot: config-overview.png

Call log:
  - Expect "toHaveScreenshot(config-overview.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 393px by 3595px, received 375px by 3574px. 36961 pixels (ratio 0.03 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 393px by 3595px, received 375px by 3574px. 36961 pixels (ratio 0.03 of all image pixels) are different.

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
      - generic [ref=e27]:
        - link "Hide descriptions" [ref=e29] [cursor=pointer]:
          - /url: /admin/compact/on?destination=/admin/config
        - generic [ref=e30]:
          - generic [ref=e31]:
            - generic [ref=e32]:
              - heading "People" [level=3] [ref=e33]
              - generic [ref=e36]:
                - link "Account settings" [ref=e37] [cursor=pointer]:
                  - /url: /admin/config/people/accounts
                - generic [ref=e38]: Account settings
                - generic [ref=e39]: Configure default user account settings, including fields, registration requirements, and email messages.
            - generic [ref=e40]:
              - heading "Content authoring" [level=3] [ref=e41]
              - generic [ref=e44]:
                - link "Text formats and editors" [ref=e45] [cursor=pointer]:
                  - /url: /admin/config/content/formats
                - generic [ref=e46]: Text formats and editors
                - generic [ref=e47]: Select and configure text editors, and how content is filtered when displayed.
            - generic [ref=e48]:
              - heading "Development" [level=3] [ref=e49]
              - generic [ref=e51]:
                - generic [ref=e52]:
                  - link "Performance" [ref=e53] [cursor=pointer]:
                    - /url: /admin/config/development/performance
                  - generic [ref=e54]: Performance
                  - generic [ref=e55]: Configure caching and bandwidth optimization.
                - generic [ref=e56]:
                  - link "Development settings" [ref=e57] [cursor=pointer]:
                    - /url: /admin/config/development/settings
                  - generic [ref=e58]: Development settings
                  - generic [ref=e59]: Configure theme development settings
                - generic [ref=e60]:
                  - link "Logging and errors" [ref=e61] [cursor=pointer]:
                    - /url: /admin/config/development/logging
                  - generic [ref=e62]: Logging and errors
                  - generic [ref=e63]: Configure the display of error messages and database logging.
                - generic [ref=e64]:
                  - link "Maintenance mode" [ref=e65] [cursor=pointer]:
                    - /url: /admin/config/development/maintenance
                  - generic [ref=e66]: Maintenance mode
                  - generic [ref=e67]: Take the site offline for updates and other maintenance tasks.
                - generic [ref=e68]:
                  - link "Configuration synchronization" [ref=e69] [cursor=pointer]:
                    - /url: /admin/config/development/configuration
                  - generic [ref=e70]: Configuration synchronization
                  - generic [ref=e71]: Import and export your configuration.
            - generic [ref=e72]:
              - heading "Search and metadata" [level=3] [ref=e73]
              - generic [ref=e76]:
                - link "URL aliases" [ref=e77] [cursor=pointer]:
                  - /url: /admin/config/search/path
                - generic [ref=e78]: URL aliases
                - generic [ref=e79]: Add custom URLs to existing paths.
            - generic [ref=e80]:
              - heading "Web services" [level=3] [ref=e81]
              - generic [ref=e84]:
                - link "Menu Linkset Settings" [ref=e85] [cursor=pointer]:
                  - /url: /admin/config/services/linkset
                - generic [ref=e86]: Menu Linkset Settings
                - generic [ref=e87]: Enable or disable the menu linkset endpoint
          - generic [ref=e88]:
            - generic [ref=e89]:
              - heading "System" [level=3] [ref=e90]
              - generic [ref=e92]:
                - generic [ref=e93]:
                  - link "Basic site settings" [ref=e94] [cursor=pointer]:
                    - /url: /admin/config/system/site-information
                  - generic [ref=e95]: Basic site settings
                  - generic [ref=e96]: Change site name, email address, slogan, default front page, and error pages.
                - generic [ref=e97]:
                  - link "Cron" [ref=e98] [cursor=pointer]:
                    - /url: /admin/config/system/cron
                  - generic [ref=e99]: Cron
                  - generic [ref=e100]: Manage automatic site maintenance tasks.
            - generic [ref=e101]:
              - heading "User interface" [level=3] [ref=e102]
              - generic [ref=e104]:
                - generic [ref=e105]:
                  - link "Navigation blocks" [ref=e106] [cursor=pointer]:
                    - /url: /admin/config/user-interface/navigation-block
                  - generic [ref=e107]: Navigation blocks
                  - generic [ref=e108]: Manage navigation blocks.
                - generic [ref=e109]:
                  - link "Navigation settings" [ref=e110] [cursor=pointer]:
                    - /url: /admin/config/user-interface/navigation/settings
                  - generic [ref=e111]: Navigation settings
                  - generic [ref=e112]: Manage navigation settings.
            - generic [ref=e113]:
              - heading "Media" [level=3] [ref=e114]
              - generic [ref=e116]:
                - generic [ref=e117]:
                  - link "File system" [ref=e118] [cursor=pointer]:
                    - /url: /admin/config/media/file-system
                  - generic [ref=e119]: File system
                  - generic [ref=e120]: Configure the location of uploaded files and how they are accessed.
                - generic [ref=e121]:
                  - link "Image styles" [ref=e122] [cursor=pointer]:
                    - /url: /admin/config/media/image-styles
                  - generic [ref=e123]: Image styles
                  - generic [ref=e124]: Configure styles that can be used for resizing or adjusting images on display.
                - generic [ref=e125]:
                  - link "Image toolkit" [ref=e126] [cursor=pointer]:
                    - /url: /admin/config/media/image-toolkit
                  - generic [ref=e127]: Image toolkit
                  - generic [ref=e128]: Choose which image toolkit to use if you have installed optional toolkits.
            - generic [ref=e129]:
              - heading "Region and language" [level=3] [ref=e130]
              - generic [ref=e132]:
                - generic [ref=e133]:
                  - link "Regional settings" [ref=e134] [cursor=pointer]:
                    - /url: /admin/config/regional/settings
                  - generic [ref=e135]: Regional settings
                  - generic [ref=e136]: Configure the locale and timezone settings.
                - generic [ref=e137]:
                  - link "Date and time formats" [ref=e138] [cursor=pointer]:
                    - /url: /admin/config/regional/date-time
                  - generic [ref=e139]: Date and time formats
                  - generic [ref=e140]: Configure how dates and times are displayed.
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