# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/reports.spec.ts >> reports-status >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  26977 pixels (ratio 0.09 of all image pixels) are different.

  Snapshot: reports-status.png

Call log:
  - Expect "toHaveScreenshot(reports-status.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - 26977 pixels (ratio 0.09 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - 26977 pixels (ratio 0.09 of all image pixels) are different.

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
      - heading "Status report" [level=1] [ref=e23]
    - main [ref=e25]:
      - complementary [ref=e29]:
        - paragraph [ref=e30]:
          - text: Here you can find a short overview of your site's parameters as well as any problems detected with your installation. It may be useful to copy and paste this information into support requests filed on Drupal.org's support forums and project issue queues. Before filing a support request, ensure that your web server meets the
          - link "system requirements." [ref=e31] [cursor=pointer]:
            - /url: https://www.drupal.org/docs/system-requirements
      - generic [ref=e33]:
        - generic [ref=e34]:
          - generic [ref=e38]:
            - generic [ref=e39]: 3 Warnings
            - link "Warnings Details" [ref=e41] [cursor=pointer]:
              - /url: "#warning"
              - generic [ref=e42]: Warnings
              - text: Details
          - generic [ref=e46]:
            - generic [ref=e47]: 23 Checked
            - link "Checked Details" [ref=e49] [cursor=pointer]:
              - /url: "#checked"
              - generic [ref=e50]: Checked
              - text: Details
        - generic [ref=e52]:
          - generic [ref=e55]:
            - heading "Drupal Version" [level=3] [ref=e56]
            - text: 12.0-dev
          - generic [ref=e59]:
            - heading "Web Server" [level=3] [ref=e60]
            - text: nginx/1.26.3
          - generic [ref=e63]:
            - heading "Last Cron Run" [level=3] [ref=e64]
            - text: Last run 1 hour 13 minutes ago
            - generic [ref=e65]:
              - text: (
              - link "more information" [ref=e66] [cursor=pointer]:
                - /url: /admin/config/system/cron
              - text: )
              - link "Run cron" [ref=e68] [cursor=pointer]:
                - /url: /admin/reports/status/run-cron?token=7-JIHyM2jOjGU3kwnNcs_g_as4ADFK9YGOvDfnjgHu4
          - generic [ref=e71]:
            - heading "PHP" [level=3] [ref=e72]
            - heading "Version:" [level=4] [ref=e73]
            - text: 8.5.5 (
            - link "more information" [ref=e74] [cursor=pointer]:
              - /url: /admin/reports/status/php
            - text: )
            - heading "Memory limit:" [level=4] [ref=e75]
            - text: 1024M
          - generic [ref=e78]:
            - heading "Database" [level=3] [ref=e79]
            - heading "Version:" [level=4] [ref=e80]
            - text: 11.8.6-MariaDB-ubu2404-log
            - heading "System:" [level=4] [ref=e81]
            - text: MariaDB
        - generic [ref=e82]:
          - group [ref=e83]:
            - generic "Warnings found" [ref=e84] [cursor=pointer]: Warnings found
            - generic [ref=e85]:
              - generic [ref=e86]:
                - button "Configuration files" [ref=e87]
                - generic [ref=e88]:
                  - text: Protection disabled
                  - generic [ref=e89]:
                    - text: The file
                    - emphasis [ref=e90]: sites/default/settings.php
                    - text: is not protected from modifications and poses a security risk. You must change the file's permissions to be non-writable.
              - generic [ref=e91]:
                - button "Drupal core update status" [ref=e92]
                - generic [ref=e93]:
                  - link "No available update data" [ref=e94] [cursor=pointer]:
                    - /url: /admin/reports/updates
                  - generic [ref=e95]:
                    - text: There was a problem checking
                    - link "available updates" [ref=e96] [cursor=pointer]:
                      - /url: /admin/reports/updates
                    - text: for Drupal.
              - generic [ref=e97]:
                - button "Experimental themes installed" [ref=e98]
                - generic [ref=e99]:
                  - text: "Experimental themes found:"
                  - emphasis [ref=e100]: Default Admin
                  - text: . Experimental themes are provided for testing purposes only. Use at your own risk.
          - group [ref=e101]:
            - generic "Checked" [ref=e102] [cursor=pointer]: Checked
            - generic [ref=e103]:
              - generic [ref=e104]:
                - button "Access to update.php" [ref=e105]
                - generic [ref=e106]: Protected
              - generic [ref=e107]:
                - button "Database support for JSON" [ref=e108]
                - generic [ref=e109]:
                  - text: Available
                  - generic [ref=e110]: Drupal requires databases that support JSON storage.
              - generic [ref=e111]:
                - button "Database system" [ref=e112]
                - generic [ref=e113]: MariaDB
              - generic [ref=e114]:
                - button "Database system version" [ref=e115]
                - generic [ref=e116]: 11.8.6-MariaDB-ubu2404-log
              - generic [ref=e117]:
                - button "Database updates" [ref=e118]
                - generic [ref=e119]: Up to date
              - generic [ref=e120]:
                - button "Entity/field definitions" [ref=e121]
                - generic [ref=e122]: Up to date
              - generic [ref=e123]:
                - button "File system" [ref=e124]
                - generic [ref=e125]:
                  - text: Writable (
                  - emphasis [ref=e126]: public
                  - text: download method)
              - generic [ref=e127]:
                - button "GD library" [ref=e128]
                - generic [ref=e129]:
                  - text: 2.3.3
                  - generic [ref=e130]:
                    - text: "Supported image file formats:"
                    - emphasis [ref=e131]: GIF, JPEG, PNG, WEBP, AVIF
                    - text: .
              - generic [ref=e132]:
                - button "Image toolkit" [ref=e133]
                - generic [ref=e134]:
                  - text: gd
                  - generic [ref=e135]: GD2 image manipulation toolkit
              - generic [ref=e136]:
                - button "Node Access Permissions" [ref=e137]
                - generic [ref=e138]:
                  - text: Disabled
                  - generic [ref=e139]:
                    - text: If the site is experiencing problems with permissions to content, you may have to rebuild the permissions cache. Rebuilding will remove all privileges to content and replace them with permissions based on the current modules and settings. Rebuilding may take some time if there is a lot of content or complex permission settings. After rebuilding has completed, content will automatically use the new permissions.
                    - link "Rebuild permissions" [ref=e140] [cursor=pointer]:
                      - /url: /admin/reports/status/rebuild
              - generic [ref=e141]:
                - button "Password hashing" [ref=e142]
                - generic [ref=e143]:
                  - text: Passwords are hashed with the
                  - emphasis [ref=e144]: argon2id
                  - text: algorithm.
              - generic [ref=e145]:
                - button "PHP" [ref=e146]
                - generic [ref=e147]:
                  - text: 8.5.5 (
                  - link "more information" [ref=e148] [cursor=pointer]:
                    - /url: /admin/reports/status/php
                  - text: )
              - generic [ref=e149]:
                - button "PHP APCu available caching" [ref=e150]
                - generic [ref=e151]: "Memory available: 28.85 MB."
              - generic [ref=e152]:
                - button "PHP APCu caching" [ref=e153]
                - generic [ref=e154]: Enabled (32 MB)
              - generic [ref=e155]:
                - button "PHP extensions" [ref=e156]
                - generic [ref=e157]: Enabled
              - generic [ref=e158]:
                - button "PHP memory limit" [ref=e159]
                - generic [ref=e160]: 1024M
              - generic [ref=e161]:
                - button "PHP OPcode caching" [ref=e162]
                - generic [ref=e163]: Enabled
              - generic [ref=e164]:
                - button "Random number generation" [ref=e165]
                - generic [ref=e166]: Successful
              - generic [ref=e167]:
                - button "SameSite cookie attribute" [ref=e168]
                - generic [ref=e169]:
                  - text: Lax
                  - generic [ref=e170]:
                    - text: This attribute should be explicitly set to Lax, Strict or None. If set to None then the request must be made via HTTPS. See
                    - link "PHP documentation" [ref=e171] [cursor=pointer]:
                      - /url: https://www.php.net/manual/en/session.configuration.php#ini.session.cookie-samesite
              - generic [ref=e172]:
                - button "Transaction isolation level" [ref=e173]
                - generic [ref=e174]:
                  - text: READ-COMMITTED
                  - generic [ref=e175]:
                    - text: See the
                    - link "setting MySQL transaction isolation level" [ref=e176] [cursor=pointer]:
                      - /url: https://www.drupal.org/docs/system-requirements/setting-the-mysql-transaction-isolation-level
                    - text: page for more information.
              - generic [ref=e177]:
                - button "Trusted Host Settings" [ref=e178]
                - generic [ref=e179]:
                  - text: Enabled
                  - generic [ref=e180]:
                    - text: The trusted_host_patterns setting is set to allow
                    - emphasis [ref=e181]: .*
              - generic [ref=e182]:
                - button "Unicode library" [ref=e183]
                - generic [ref=e184]: PHP Mbstring Extension
              - generic [ref=e185]:
                - button "Update notifications" [ref=e186]
                - generic [ref=e187]: Enabled
              - generic [ref=e188]:
                - button "Upload progress" [ref=e189]
                - generic [ref=e190]:
                  - text: Enabled (
                  - link "PECL uploadprogress" [ref=e191] [cursor=pointer]:
                    - /url: https://github.com/php/pecl-php-uploadprogress#uploadprogress
                  - text: )
              - generic [ref=e192]:
                - button "Web server" [ref=e193]
                - generic [ref=e194]: nginx/1.26.3
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