# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/reports.spec.ts >> reports-status >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid-dark/vrt/reports.spec.ts/reports-status.png, writing actual.
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
            - generic [ref=e39]: 1 Error
            - link "Error Details" [ref=e41] [cursor=pointer]:
              - /url: "#error"
              - generic [ref=e42]: Error
              - text: Details
          - generic [ref=e46]:
            - generic [ref=e47]: 2 Warnings
            - link "Warnings Details" [ref=e49] [cursor=pointer]:
              - /url: "#warning"
              - generic [ref=e50]: Warnings
              - text: Details
          - generic [ref=e54]:
            - generic [ref=e55]: 23 Checked
            - link "Checked Details" [ref=e57] [cursor=pointer]:
              - /url: "#checked"
              - generic [ref=e58]: Checked
              - text: Details
        - generic [ref=e60]:
          - generic [ref=e63]:
            - heading "Drupal Version" [level=3] [ref=e64]
            - text: 12.0-dev
          - generic [ref=e67]:
            - heading "Web Server" [level=3] [ref=e68]
            - text: nginx/1.26.3
          - generic [ref=e71]:
            - heading "Last Cron Run" [level=3] [ref=e72]
            - text: Last run 1 hour 16 minutes ago
            - generic [ref=e73]:
              - text: (
              - link "more information" [ref=e74] [cursor=pointer]:
                - /url: /admin/config/system/cron
              - text: )
              - link "Run cron" [ref=e76] [cursor=pointer]:
                - /url: /admin/reports/status/run-cron?token=7-JIHyM2jOjGU3kwnNcs_g_as4ADFK9YGOvDfnjgHu4
          - generic [ref=e79]:
            - heading "PHP" [level=3] [ref=e80]
            - heading "Version:" [level=4] [ref=e81]
            - text: 8.5.5 (
            - link "more information" [ref=e82] [cursor=pointer]:
              - /url: /admin/reports/status/php
            - text: )
            - heading "Memory limit:" [level=4] [ref=e83]
            - text: 1024M
          - generic [ref=e86]:
            - heading "Database" [level=3] [ref=e87]
            - heading "Version:" [level=4] [ref=e88]
            - text: 11.8.6-MariaDB-ubu2404-log
            - heading "System:" [level=4] [ref=e89]
            - text: MariaDB
        - generic [ref=e90]:
          - group [ref=e91]:
            - generic "Errors found" [ref=e92] [cursor=pointer]: Errors found
            - generic [ref=e94]:
              - button "Drupal core update status" [ref=e95]
              - generic [ref=e96]:
                - link "Unsupported release" [ref=e97] [cursor=pointer]:
                  - /url: /admin/reports/updates
                - generic [ref=e98]:
                  - text: Your version of Drupal is no longer supported. Upgrading is strongly recommended! See the
                  - link "available updates" [ref=e99] [cursor=pointer]:
                    - /url: /admin/reports/updates
                  - text: page for more information.
          - group [ref=e100]:
            - generic "Warnings found" [ref=e101] [cursor=pointer]: Warnings found
            - generic [ref=e102]:
              - generic [ref=e103]:
                - button "Configuration files" [ref=e104]
                - generic [ref=e105]:
                  - text: Protection disabled
                  - generic [ref=e106]:
                    - text: The file
                    - emphasis [ref=e107]: sites/default/settings.php
                    - text: is not protected from modifications and poses a security risk. You must change the file's permissions to be non-writable.
              - generic [ref=e108]:
                - button "Experimental themes installed" [ref=e109]
                - generic [ref=e110]:
                  - text: "Experimental themes found:"
                  - emphasis [ref=e111]: Default Admin
                  - text: . Experimental themes are provided for testing purposes only. Use at your own risk.
          - group [ref=e112]:
            - generic "Checked" [ref=e113] [cursor=pointer]: Checked
            - generic [ref=e114]:
              - generic [ref=e115]:
                - button "Access to update.php" [ref=e116]
                - generic [ref=e117]: Protected
              - generic [ref=e118]:
                - button "Database support for JSON" [ref=e119]
                - generic [ref=e120]:
                  - text: Available
                  - generic [ref=e121]: Drupal requires databases that support JSON storage.
              - generic [ref=e122]:
                - button "Database system" [ref=e123]
                - generic [ref=e124]: MariaDB
              - generic [ref=e125]:
                - button "Database system version" [ref=e126]
                - generic [ref=e127]: 11.8.6-MariaDB-ubu2404-log
              - generic [ref=e128]:
                - button "Database updates" [ref=e129]
                - generic [ref=e130]: Up to date
              - generic [ref=e131]:
                - button "Entity/field definitions" [ref=e132]
                - generic [ref=e133]: Up to date
              - generic [ref=e134]:
                - button "File system" [ref=e135]
                - generic [ref=e136]:
                  - text: Writable (
                  - emphasis [ref=e137]: public
                  - text: download method)
              - generic [ref=e138]:
                - button "GD library" [ref=e139]
                - generic [ref=e140]:
                  - text: 2.3.3
                  - generic [ref=e141]:
                    - text: "Supported image file formats:"
                    - emphasis [ref=e142]: GIF, JPEG, PNG, WEBP, AVIF
                    - text: .
              - generic [ref=e143]:
                - button "Image toolkit" [ref=e144]
                - generic [ref=e145]:
                  - text: gd
                  - generic [ref=e146]: GD2 image manipulation toolkit
              - generic [ref=e147]:
                - button "Node Access Permissions" [ref=e148]
                - generic [ref=e149]:
                  - text: Disabled
                  - generic [ref=e150]:
                    - text: If the site is experiencing problems with permissions to content, you may have to rebuild the permissions cache. Rebuilding will remove all privileges to content and replace them with permissions based on the current modules and settings. Rebuilding may take some time if there is a lot of content or complex permission settings. After rebuilding has completed, content will automatically use the new permissions.
                    - link "Rebuild permissions" [ref=e151] [cursor=pointer]:
                      - /url: /admin/reports/status/rebuild
              - generic [ref=e152]:
                - button "Password hashing" [ref=e153]
                - generic [ref=e154]:
                  - text: Passwords are hashed with the
                  - emphasis [ref=e155]: argon2id
                  - text: algorithm.
              - generic [ref=e156]:
                - button "PHP" [ref=e157]
                - generic [ref=e158]:
                  - text: 8.5.5 (
                  - link "more information" [ref=e159] [cursor=pointer]:
                    - /url: /admin/reports/status/php
                  - text: )
              - generic [ref=e160]:
                - button "PHP APCu available caching" [ref=e161]
                - generic [ref=e162]: "Memory available: 28.25 MB."
              - generic [ref=e163]:
                - button "PHP APCu caching" [ref=e164]
                - generic [ref=e165]: Enabled (32 MB)
              - generic [ref=e166]:
                - button "PHP extensions" [ref=e167]
                - generic [ref=e168]: Enabled
              - generic [ref=e169]:
                - button "PHP memory limit" [ref=e170]
                - generic [ref=e171]: 1024M
              - generic [ref=e172]:
                - button "PHP OPcode caching" [ref=e173]
                - generic [ref=e174]: Enabled
              - generic [ref=e175]:
                - button "Random number generation" [ref=e176]
                - generic [ref=e177]: Successful
              - generic [ref=e178]:
                - button "SameSite cookie attribute" [ref=e179]
                - generic [ref=e180]:
                  - text: Lax
                  - generic [ref=e181]:
                    - text: This attribute should be explicitly set to Lax, Strict or None. If set to None then the request must be made via HTTPS. See
                    - link "PHP documentation" [ref=e182] [cursor=pointer]:
                      - /url: https://www.php.net/manual/en/session.configuration.php#ini.session.cookie-samesite
              - generic [ref=e183]:
                - button "Transaction isolation level" [ref=e184]
                - generic [ref=e185]:
                  - text: READ-COMMITTED
                  - generic [ref=e186]:
                    - text: See the
                    - link "setting MySQL transaction isolation level" [ref=e187] [cursor=pointer]:
                      - /url: https://www.drupal.org/docs/system-requirements/setting-the-mysql-transaction-isolation-level
                    - text: page for more information.
              - generic [ref=e188]:
                - button "Trusted Host Settings" [ref=e189]
                - generic [ref=e190]:
                  - text: Enabled
                  - generic [ref=e191]:
                    - text: The trusted_host_patterns setting is set to allow
                    - emphasis [ref=e192]: .*
              - generic [ref=e193]:
                - button "Unicode library" [ref=e194]
                - generic [ref=e195]: PHP Mbstring Extension
              - generic [ref=e196]:
                - button "Update notifications" [ref=e197]
                - generic [ref=e198]: Enabled
              - generic [ref=e199]:
                - button "Upload progress" [ref=e200]
                - generic [ref=e201]:
                  - text: Enabled (
                  - link "PECL uploadprogress" [ref=e202] [cursor=pointer]:
                    - /url: https://github.com/php/pecl-php-uploadprogress#uploadprogress
                  - text: )
              - generic [ref=e203]:
                - button "Web server" [ref=e204]
                - generic [ref=e205]: nginx/1.26.3
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid-dark/vrt/reports.spec.ts/reports-status.png, writing actual.
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