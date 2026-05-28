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

  31075 pixels (ratio 0.11 of all image pixels) are different.

  Snapshot: reports-status.png

Call log:
  - Expect "toHaveScreenshot(reports-status.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - 31075 pixels (ratio 0.11 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - 31075 pixels (ratio 0.11 of all image pixels) are different.

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
      - heading "Status report" [level=1] [ref=e27]
    - generic [ref=e29]:
      - complementary [ref=e32]:
        - paragraph [ref=e33]:
          - text: Here you can find a short overview of your site's parameters as well as any problems detected with your installation. It may be useful to copy and paste this information into support requests filed on Drupal.org's support forums and project issue queues. Before filing a support request, ensure that your web server meets the
          - link "system requirements." [ref=e34] [cursor=pointer]:
            - /url: https://www.drupal.org/docs/system-requirements
      - generic [ref=e36]:
        - generic [ref=e37]:
          - generic [ref=e41]:
            - generic [ref=e42]: 2 Warnings
            - link "Warnings Details" [ref=e44] [cursor=pointer]:
              - /url: "#warning"
              - generic [ref=e45]: Warnings
              - text: Details
          - generic [ref=e49]:
            - generic [ref=e50]: 23 Checked
            - link "Checked Details" [ref=e52] [cursor=pointer]:
              - /url: "#checked"
              - generic [ref=e53]: Checked
              - text: Details
        - generic [ref=e55]:
          - generic [ref=e58]:
            - heading "Drupal Version" [level=3] [ref=e59]
            - text: 12.0-dev
          - generic [ref=e62]:
            - heading "Web Server" [level=3] [ref=e63]
            - text: nginx/1.26.3
          - generic [ref=e66]:
            - heading "Last Cron Run" [level=3] [ref=e67]
            - text: Last run 2 hours 14 minutes ago
            - generic [ref=e68]:
              - text: (
              - link "more information" [ref=e69] [cursor=pointer]:
                - /url: /admin/config/system/cron
              - text: )
              - link "Run cron" [ref=e71] [cursor=pointer]:
                - /url: /admin/reports/status/run-cron?token=E9BMYMSplHK8OYZeWPHYzG06rn-9OhJH61SAcEjpqjc
          - generic [ref=e74]:
            - heading "PHP" [level=3] [ref=e75]
            - heading "Version" [level=4] [ref=e76]
            - text: 8.5.5 (
            - link "more information" [ref=e77] [cursor=pointer]:
              - /url: /admin/reports/status/php
            - text: )
            - heading "Memory limit" [level=4] [ref=e78]
            - text: 1024M
          - generic [ref=e81]:
            - heading "Database" [level=3] [ref=e82]
            - heading "Version" [level=4] [ref=e83]
            - text: 11.8.6-MariaDB-ubu2404-log
            - heading "System" [level=4] [ref=e84]
            - text: MariaDB
        - generic [ref=e85]:
          - group [ref=e86]:
            - generic "Warnings found" [ref=e87] [cursor=pointer]: Warnings found
            - generic [ref=e88]:
              - generic [ref=e89]:
                - button "Configuration files" [ref=e90]
                - generic [ref=e91]:
                  - text: Protection disabled
                  - generic [ref=e92]:
                    - text: The file
                    - emphasis [ref=e93]: sites/default/settings.php
                    - text: is not protected from modifications and poses a security risk. You must change the file's permissions to be non-writable.
              - generic [ref=e94]:
                - button "Drupal core update status" [ref=e95]
                - generic [ref=e96]:
                  - link "No available update data" [ref=e97] [cursor=pointer]:
                    - /url: /admin/reports/updates
                  - generic [ref=e98]:
                    - text: There was a problem checking
                    - link "available updates" [ref=e99] [cursor=pointer]:
                      - /url: /admin/reports/updates
                    - text: for Drupal.
          - group [ref=e100]:
            - generic "Checked" [ref=e101] [cursor=pointer]: Checked
            - generic [ref=e102]:
              - generic [ref=e103]:
                - button "Access to update.php" [ref=e104]
                - generic [ref=e105]: Protected
              - generic [ref=e106]:
                - button "Database support for JSON" [ref=e107]
                - generic [ref=e108]:
                  - text: Available
                  - generic [ref=e109]: Drupal requires databases that support JSON storage.
              - generic [ref=e110]:
                - button "Database system" [ref=e111]
                - generic [ref=e112]: MariaDB
              - generic [ref=e113]:
                - button "Database system version" [ref=e114]
                - generic [ref=e115]: 11.8.6-MariaDB-ubu2404-log
              - generic [ref=e116]:
                - button "Database updates" [ref=e117]
                - generic [ref=e118]: Up to date
              - generic [ref=e119]:
                - button "Entity/field definitions" [ref=e120]
                - generic [ref=e121]: Up to date
              - generic [ref=e122]:
                - button "File system" [ref=e123]
                - generic [ref=e124]:
                  - text: Writable (
                  - emphasis [ref=e125]: public
                  - text: download method)
              - generic [ref=e126]:
                - button "GD library" [ref=e127]
                - generic [ref=e128]:
                  - text: 2.3.3
                  - generic [ref=e129]:
                    - text: "Supported image file formats:"
                    - emphasis [ref=e130]: GIF, JPEG, PNG, WEBP, AVIF
                    - text: .
              - generic [ref=e131]:
                - button "Image toolkit" [ref=e132]
                - generic [ref=e133]:
                  - text: gd
                  - generic [ref=e134]: GD2 image manipulation toolkit
              - generic [ref=e135]:
                - button "Node Access Permissions" [ref=e136]
                - generic [ref=e137]:
                  - text: Disabled
                  - generic [ref=e138]:
                    - text: If the site is experiencing problems with permissions to content, you may have to rebuild the permissions cache. Rebuilding will remove all privileges to content and replace them with permissions based on the current modules and settings. Rebuilding may take some time if there is a lot of content or complex permission settings. After rebuilding has completed, content will automatically use the new permissions.
                    - link "Rebuild permissions" [ref=e139] [cursor=pointer]:
                      - /url: /admin/reports/status/rebuild
              - generic [ref=e140]:
                - button "Password hashing" [ref=e141]
                - generic [ref=e142]:
                  - text: Passwords are hashed with the
                  - emphasis [ref=e143]: argon2id
                  - text: algorithm.
              - generic [ref=e144]:
                - button "PHP" [ref=e145]
                - generic [ref=e146]:
                  - text: 8.5.5 (
                  - link "more information" [ref=e147] [cursor=pointer]:
                    - /url: /admin/reports/status/php
                  - text: )
              - generic [ref=e148]:
                - button "PHP APCu available caching" [ref=e149]
                - generic [ref=e150]: "Memory available: 29.71 MB."
              - generic [ref=e151]:
                - button "PHP APCu caching" [ref=e152]
                - generic [ref=e153]: Enabled (32 MB)
              - generic [ref=e154]:
                - button "PHP extensions" [ref=e155]
                - generic [ref=e156]: Enabled
              - generic [ref=e157]:
                - button "PHP memory limit" [ref=e158]
                - generic [ref=e159]: 1024M
              - generic [ref=e160]:
                - button "PHP OPcode caching" [ref=e161]
                - generic [ref=e162]: Enabled
              - generic [ref=e163]:
                - button "Random number generation" [ref=e164]
                - generic [ref=e165]: Successful
              - generic [ref=e166]:
                - button "SameSite cookie attribute" [ref=e167]
                - generic [ref=e168]:
                  - text: Lax
                  - generic [ref=e169]:
                    - text: This attribute should be explicitly set to Lax, Strict or None. If set to None then the request must be made via HTTPS. See
                    - link "PHP documentation" [ref=e170] [cursor=pointer]:
                      - /url: https://www.php.net/manual/en/session.configuration.php#ini.session.cookie-samesite
              - generic [ref=e171]:
                - button "Transaction isolation level" [ref=e172]
                - generic [ref=e173]:
                  - text: READ-COMMITTED
                  - generic [ref=e174]:
                    - text: See the
                    - link "setting MySQL transaction isolation level" [ref=e175] [cursor=pointer]:
                      - /url: https://www.drupal.org/docs/system-requirements/setting-the-mysql-transaction-isolation-level
                    - text: page for more information.
              - generic [ref=e176]:
                - button "Trusted Host Settings" [ref=e177]
                - generic [ref=e178]:
                  - text: Enabled
                  - generic [ref=e179]:
                    - text: The trusted_host_patterns setting is set to allow
                    - emphasis [ref=e180]: .*
              - generic [ref=e181]:
                - button "Unicode library" [ref=e182]
                - generic [ref=e183]: PHP Mbstring Extension
              - generic [ref=e184]:
                - button "Update notifications" [ref=e185]
                - generic [ref=e186]: Enabled
              - generic [ref=e187]:
                - button "Upload progress" [ref=e188]
                - generic [ref=e189]:
                  - text: Enabled (
                  - link "PECL uploadprogress" [ref=e190] [cursor=pointer]:
                    - /url: https://github.com/php/pecl-php-uploadprogress#uploadprogress
                  - text: )
              - generic [ref=e191]:
                - button "Web server" [ref=e192]
                - generic [ref=e193]: nginx/1.26.3
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