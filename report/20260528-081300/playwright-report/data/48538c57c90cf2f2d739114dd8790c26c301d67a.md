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

  31857 pixels (ratio 0.11 of all image pixels) are different.

  Snapshot: reports-status.png

Call log:
  - Expect "toHaveScreenshot(reports-status.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - 31857 pixels (ratio 0.11 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - 31857 pixels (ratio 0.11 of all image pixels) are different.

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
            - generic [ref=e42]: 1 Error
            - link "Error Details" [ref=e44] [cursor=pointer]:
              - /url: "#error"
              - generic [ref=e45]: Error
              - text: Details
          - generic [ref=e49]:
            - generic [ref=e50]: 1 Warning
            - link "Warning Details" [ref=e52] [cursor=pointer]:
              - /url: "#warning"
              - generic [ref=e53]: Warning
              - text: Details
          - generic [ref=e57]:
            - generic [ref=e58]: 23 Checked
            - link "Checked Details" [ref=e60] [cursor=pointer]:
              - /url: "#checked"
              - generic [ref=e61]: Checked
              - text: Details
        - generic [ref=e63]:
          - generic [ref=e66]:
            - heading "Drupal Version" [level=3] [ref=e67]
            - text: 12.0-dev
          - generic [ref=e70]:
            - heading "Web Server" [level=3] [ref=e71]
            - text: nginx/1.26.3
          - generic [ref=e74]:
            - heading "Last Cron Run" [level=3] [ref=e75]
            - text: Last run 2 hours 15 minutes ago
            - generic [ref=e76]:
              - text: (
              - link "more information" [ref=e77] [cursor=pointer]:
                - /url: /admin/config/system/cron
              - text: )
              - link "Run cron" [ref=e79] [cursor=pointer]:
                - /url: /admin/reports/status/run-cron?token=E9BMYMSplHK8OYZeWPHYzG06rn-9OhJH61SAcEjpqjc
          - generic [ref=e82]:
            - heading "PHP" [level=3] [ref=e83]
            - heading "Version" [level=4] [ref=e84]
            - text: 8.5.5 (
            - link "more information" [ref=e85] [cursor=pointer]:
              - /url: /admin/reports/status/php
            - text: )
            - heading "Memory limit" [level=4] [ref=e86]
            - text: 1024M
          - generic [ref=e89]:
            - heading "Database" [level=3] [ref=e90]
            - heading "Version" [level=4] [ref=e91]
            - text: 11.8.6-MariaDB-ubu2404-log
            - heading "System" [level=4] [ref=e92]
            - text: MariaDB
        - generic [ref=e93]:
          - group [ref=e94]:
            - generic "Errors found" [ref=e95] [cursor=pointer]: Errors found
            - generic [ref=e97]:
              - button "Drupal core update status" [ref=e98]
              - generic [ref=e99]:
                - link "Unsupported release" [ref=e100] [cursor=pointer]:
                  - /url: /admin/reports/updates
                - generic [ref=e101]:
                  - text: Your version of Drupal is no longer supported. Upgrading is strongly recommended! See the
                  - link "available updates" [ref=e102] [cursor=pointer]:
                    - /url: /admin/reports/updates
                  - text: page for more information.
          - group [ref=e103]:
            - generic "Warnings found" [ref=e104] [cursor=pointer]: Warnings found
            - generic [ref=e106]:
              - button "Configuration files" [ref=e107]
              - generic [ref=e108]:
                - text: Protection disabled
                - generic [ref=e109]:
                  - text: The file
                  - emphasis [ref=e110]: sites/default/settings.php
                  - text: is not protected from modifications and poses a security risk. You must change the file's permissions to be non-writable.
          - group [ref=e111]:
            - generic "Checked" [ref=e112] [cursor=pointer]: Checked
            - generic [ref=e113]:
              - generic [ref=e114]:
                - button "Access to update.php" [ref=e115]
                - generic [ref=e116]: Protected
              - generic [ref=e117]:
                - button "Database support for JSON" [ref=e118]
                - generic [ref=e119]:
                  - text: Available
                  - generic [ref=e120]: Drupal requires databases that support JSON storage.
              - generic [ref=e121]:
                - button "Database system" [ref=e122]
                - generic [ref=e123]: MariaDB
              - generic [ref=e124]:
                - button "Database system version" [ref=e125]
                - generic [ref=e126]: 11.8.6-MariaDB-ubu2404-log
              - generic [ref=e127]:
                - button "Database updates" [ref=e128]
                - generic [ref=e129]: Up to date
              - generic [ref=e130]:
                - button "Entity/field definitions" [ref=e131]
                - generic [ref=e132]: Up to date
              - generic [ref=e133]:
                - button "File system" [ref=e134]
                - generic [ref=e135]:
                  - text: Writable (
                  - emphasis [ref=e136]: public
                  - text: download method)
              - generic [ref=e137]:
                - button "GD library" [ref=e138]
                - generic [ref=e139]:
                  - text: 2.3.3
                  - generic [ref=e140]:
                    - text: "Supported image file formats:"
                    - emphasis [ref=e141]: GIF, JPEG, PNG, WEBP, AVIF
                    - text: .
              - generic [ref=e142]:
                - button "Image toolkit" [ref=e143]
                - generic [ref=e144]:
                  - text: gd
                  - generic [ref=e145]: GD2 image manipulation toolkit
              - generic [ref=e146]:
                - button "Node Access Permissions" [ref=e147]
                - generic [ref=e148]:
                  - text: Disabled
                  - generic [ref=e149]:
                    - text: If the site is experiencing problems with permissions to content, you may have to rebuild the permissions cache. Rebuilding will remove all privileges to content and replace them with permissions based on the current modules and settings. Rebuilding may take some time if there is a lot of content or complex permission settings. After rebuilding has completed, content will automatically use the new permissions.
                    - link "Rebuild permissions" [ref=e150] [cursor=pointer]:
                      - /url: /admin/reports/status/rebuild
              - generic [ref=e151]:
                - button "Password hashing" [ref=e152]
                - generic [ref=e153]:
                  - text: Passwords are hashed with the
                  - emphasis [ref=e154]: argon2id
                  - text: algorithm.
              - generic [ref=e155]:
                - button "PHP" [ref=e156]
                - generic [ref=e157]:
                  - text: 8.5.5 (
                  - link "more information" [ref=e158] [cursor=pointer]:
                    - /url: /admin/reports/status/php
                  - text: )
              - generic [ref=e159]:
                - button "PHP APCu available caching" [ref=e160]
                - generic [ref=e161]: "Memory available: 29.35 MB."
              - generic [ref=e162]:
                - button "PHP APCu caching" [ref=e163]
                - generic [ref=e164]: Enabled (32 MB)
              - generic [ref=e165]:
                - button "PHP extensions" [ref=e166]
                - generic [ref=e167]: Enabled
              - generic [ref=e168]:
                - button "PHP memory limit" [ref=e169]
                - generic [ref=e170]: 1024M
              - generic [ref=e171]:
                - button "PHP OPcode caching" [ref=e172]
                - generic [ref=e173]: Enabled
              - generic [ref=e174]:
                - button "Random number generation" [ref=e175]
                - generic [ref=e176]: Successful
              - generic [ref=e177]:
                - button "SameSite cookie attribute" [ref=e178]
                - generic [ref=e179]:
                  - text: Lax
                  - generic [ref=e180]:
                    - text: This attribute should be explicitly set to Lax, Strict or None. If set to None then the request must be made via HTTPS. See
                    - link "PHP documentation" [ref=e181] [cursor=pointer]:
                      - /url: https://www.php.net/manual/en/session.configuration.php#ini.session.cookie-samesite
              - generic [ref=e182]:
                - button "Transaction isolation level" [ref=e183]
                - generic [ref=e184]:
                  - text: READ-COMMITTED
                  - generic [ref=e185]:
                    - text: See the
                    - link "setting MySQL transaction isolation level" [ref=e186] [cursor=pointer]:
                      - /url: https://www.drupal.org/docs/system-requirements/setting-the-mysql-transaction-isolation-level
                    - text: page for more information.
              - generic [ref=e187]:
                - button "Trusted Host Settings" [ref=e188]
                - generic [ref=e189]:
                  - text: Enabled
                  - generic [ref=e190]:
                    - text: The trusted_host_patterns setting is set to allow
                    - emphasis [ref=e191]: .*
              - generic [ref=e192]:
                - button "Unicode library" [ref=e193]
                - generic [ref=e194]: PHP Mbstring Extension
              - generic [ref=e195]:
                - button "Update notifications" [ref=e196]
                - generic [ref=e197]: Enabled
              - generic [ref=e198]:
                - button "Upload progress" [ref=e199]
                - generic [ref=e200]:
                  - text: Enabled (
                  - link "PECL uploadprogress" [ref=e201] [cursor=pointer]:
                    - /url: https://github.com/php/pecl-php-uploadprogress#uploadprogress
                  - text: )
              - generic [ref=e202]:
                - button "Web server" [ref=e203]
                - generic [ref=e204]: nginx/1.26.3
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