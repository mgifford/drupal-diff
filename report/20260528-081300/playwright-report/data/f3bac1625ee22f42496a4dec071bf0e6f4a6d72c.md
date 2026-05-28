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

  36195 pixels (ratio 0.04 of all image pixels) are different.

  Snapshot: reports-status.png

Call log:
  - Expect "toHaveScreenshot(reports-status.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - 36184 pixels (ratio 0.04 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - 36195 pixels (ratio 0.04 of all image pixels) are different.

```

# Page snapshot

```yaml
- generic [active] [ref=e1]:
  - link "Skip to main content" [ref=e2] [cursor=pointer]:
    - /url: "#main-content"
  - navigation "Administrative sidebar" [ref=e3]:
    - heading "Administrative sidebar" [level=2] [ref=e4]
    - generic [ref=e5]:
      - link "Home page" [ref=e7] [cursor=pointer]:
        - /url: /
        - img [ref=e8]
        - generic [ref=e11]: Home page
      - generic [ref=e12]:
        - heading "Content" [level=3] [ref=e13]
        - list [ref=e14]:
          - listitem [ref=e15]:
            - button "Extend Create" [ref=e16] [cursor=pointer]:
              - img [ref=e17]
              - generic [ref=e19]: Extend
              - generic [ref=e20]: Create
              - img [ref=e21]
            - generic [ref=e23]:
              - link "Create" [ref=e24] [cursor=pointer]:
                - /url: /node/add
                - generic [ref=e25]: Create
              - list [ref=e26]:
                - listitem [ref=e27]:
                  - link "Article" [ref=e28] [cursor=pointer]:
                    - /url: /node/add/article
                    - generic [ref=e29]: Article
                - listitem [ref=e30]:
                  - link "Basic page" [ref=e31] [cursor=pointer]:
                    - /url: /node/add/page
                    - generic [ref=e32]: Basic page
          - listitem [ref=e33]:
            - link "Blocks" [ref=e34] [cursor=pointer]:
              - /url: /admin/content/block
              - img [ref=e35]
              - generic [ref=e37]: Blocks
          - listitem [ref=e38]:
            - link "Content" [ref=e39] [cursor=pointer]:
              - /url: /admin/content
              - img [ref=e40]
              - generic [ref=e42]: Content
          - listitem [ref=e43]:
            - link "Files" [ref=e44] [cursor=pointer]:
              - /url: /admin/content/files
              - img [ref=e45]
              - generic [ref=e47]: Files
      - generic [ref=e48]:
        - heading "Administration" [level=3] [ref=e49]
        - list [ref=e50]:
          - listitem [ref=e51]:
            - button "Extend Structure" [ref=e52] [cursor=pointer]:
              - img [ref=e53]
              - generic [ref=e55]: Extend
              - generic [ref=e56]: Structure
              - img [ref=e57]
            - generic [ref=e59]:
              - link "Structure" [ref=e60] [cursor=pointer]:
                - /url: /admin/structure
                - generic [ref=e61]: Structure
              - list [ref=e62]:
                - listitem [ref=e63]:
                  - link "Block layout" [ref=e64] [cursor=pointer]:
                    - /url: /admin/structure/block
                    - generic [ref=e65]: Block layout
                - listitem [ref=e66]:
                  - link "Block types" [ref=e67] [cursor=pointer]:
                    - /url: /admin/structure/block-content
                    - generic [ref=e68]: Block types
                - listitem [ref=e69]:
                  - link "Content types" [ref=e70] [cursor=pointer]:
                    - /url: /admin/structure/types
                    - generic [ref=e71]: Content types
                - listitem [ref=e72]:
                  - button "Display modes" [ref=e73] [cursor=pointer]:
                    - generic [ref=e74]: Display modes
                    - img [ref=e75]
                - listitem [ref=e77]:
                  - link "Menus" [ref=e78] [cursor=pointer]:
                    - /url: /admin/structure/menu
                    - generic [ref=e79]: Menus
                - listitem [ref=e80]:
                  - link "Taxonomy" [ref=e81] [cursor=pointer]:
                    - /url: /admin/structure/taxonomy
                    - generic [ref=e82]: Taxonomy
                - listitem [ref=e83]:
                  - link "Views" [ref=e84] [cursor=pointer]:
                    - /url: /admin/structure/views
                    - generic [ref=e85]: Views
          - listitem [ref=e86]:
            - link "Appearance" [ref=e87] [cursor=pointer]:
              - /url: /admin/appearance
              - img [ref=e88]
              - generic [ref=e90]: Appearance
          - listitem [ref=e91]:
            - link "Extend" [ref=e92] [cursor=pointer]:
              - /url: /admin/modules
              - img [ref=e93]
              - generic [ref=e95]: Extend
          - listitem [ref=e96]:
            - button "Extend Configuration" [ref=e97] [cursor=pointer]:
              - img [ref=e98]
              - generic [ref=e100]: Extend
              - generic [ref=e101]: Configuration
              - img [ref=e102]
            - generic [ref=e104]:
              - link "Configuration" [ref=e105] [cursor=pointer]:
                - /url: /admin/config
                - generic [ref=e106]: Configuration
              - list [ref=e107]:
                - listitem [ref=e108]:
                  - button "People" [ref=e109] [cursor=pointer]:
                    - generic [ref=e110]: People
                    - img [ref=e111]
                - listitem [ref=e113]:
                  - button "System" [ref=e114] [cursor=pointer]:
                    - generic [ref=e115]: System
                    - img [ref=e116]
                - listitem [ref=e118]:
                  - button "Content authoring" [ref=e119] [cursor=pointer]:
                    - generic [ref=e120]: Content authoring
                    - img [ref=e121]
                - listitem [ref=e123]:
                  - button "User interface" [ref=e124] [cursor=pointer]:
                    - generic [ref=e125]: User interface
                    - img [ref=e126]
                - listitem [ref=e128]:
                  - button "Development" [ref=e129] [cursor=pointer]:
                    - generic [ref=e130]: Development
                    - img [ref=e131]
                - listitem [ref=e133]:
                  - button "Media" [ref=e134] [cursor=pointer]:
                    - generic [ref=e135]: Media
                    - img [ref=e136]
                - listitem [ref=e138]:
                  - button "Search and metadata" [ref=e139] [cursor=pointer]:
                    - generic [ref=e140]: Search and metadata
                    - img [ref=e141]
                - listitem [ref=e143]:
                  - button "Region and language" [ref=e144] [cursor=pointer]:
                    - generic [ref=e145]: Region and language
                    - img [ref=e146]
                - listitem [ref=e148]:
                  - button "Web services" [ref=e149] [cursor=pointer]:
                    - generic [ref=e150]: Web services
                    - img [ref=e151]
          - listitem [ref=e153]:
            - link "People" [ref=e154] [cursor=pointer]:
              - /url: /admin/people
              - img [ref=e155]
              - generic [ref=e157]: People
          - listitem [ref=e158]:
            - button "Collapse Reports" [ref=e159] [cursor=pointer]:
              - img [ref=e160]
              - generic [ref=e162]: Collapse
              - generic [ref=e163]: Reports
              - img [ref=e164]
            - generic [ref=e166]:
              - link "Reports" [ref=e167] [cursor=pointer]:
                - /url: /admin/reports
                - generic [ref=e168]: Reports
              - list [ref=e169]:
                - listitem [ref=e170]:
                  - link "Status report" [ref=e171] [cursor=pointer]:
                    - /url: /admin/reports/status
                    - generic [ref=e172]: Status report
                - listitem [ref=e173]:
                  - link "Available updates" [ref=e174] [cursor=pointer]:
                    - /url: /admin/reports/updates
                    - generic [ref=e175]: Available updates
                - listitem [ref=e176]:
                  - link "Recent log messages" [ref=e177] [cursor=pointer]:
                    - /url: /admin/reports/dblog
                    - generic [ref=e178]: Recent log messages
                - listitem [ref=e179]:
                  - link "Field list" [ref=e180] [cursor=pointer]:
                    - /url: /admin/reports/fields
                    - generic [ref=e181]: Field list
                - listitem [ref=e182]:
                  - link "Top 'access denied' errors" [ref=e183] [cursor=pointer]:
                    - /url: /admin/reports/access-denied
                    - generic [ref=e184]: Top 'access denied' errors
                - listitem [ref=e185]:
                  - link "Top 'page not found' errors" [ref=e186] [cursor=pointer]:
                    - /url: /admin/reports/page-not-found
                    - generic [ref=e187]: Top 'page not found' errors
                - listitem [ref=e188]:
                  - link "Views plugins" [ref=e189] [cursor=pointer]:
                    - /url: /admin/reports/views-plugins
                    - generic [ref=e190]: Views plugins
          - listitem [ref=e191]:
            - link "Announcements" [ref=e192] [cursor=pointer]:
              - /url: /admin/announcements_feed
              - img [ref=e193]
              - generic [ref=e197]: Announcements
    - generic [ref=e198]:
      - generic [ref=e199]:
        - heading "Help" [level=3] [ref=e200]
        - list [ref=e201]:
          - listitem [ref=e202]:
            - link "Help" [ref=e203] [cursor=pointer]:
              - /url: /admin/help
              - img [ref=e204]
              - generic [ref=e206]: Help
      - generic [ref=e207]:
        - heading "User" [level=3] [ref=e208]
        - list [ref=e209]:
          - listitem [ref=e210]:
            - button "Extend admin" [ref=e211] [cursor=pointer]:
              - img [ref=e212]
              - generic [ref=e214]: Extend
              - generic [ref=e215]: admin
              - img [ref=e216]
            - generic [ref=e218]:
              - link "admin" [ref=e219] [cursor=pointer]:
                - /url: /user
                - generic [ref=e220]: admin
              - list [ref=e221]:
                - listitem [ref=e222]:
                  - link "View profile" [ref=e223] [cursor=pointer]:
                    - /url: /user
                    - generic [ref=e224]: View profile
                - listitem [ref=e225]:
                  - link "Edit profile" [ref=e226] [cursor=pointer]:
                    - /url: /user/edit
                    - generic [ref=e227]: Edit profile
                - listitem [ref=e228]:
                  - link "Log out" [ref=e229] [cursor=pointer]:
                    - /url: /user/logout?token=Yzzb-BjBXNcFnxuGskIoQB5phdaKZ_bySd8T9ReXAn8
                    - generic [ref=e230]: Log out
      - button "Collapse sidebar" [expanded] [ref=e231] [cursor=pointer]:
        - img [ref=e232]
        - generic [ref=e234]: Collapse sidebar
  - main [ref=e236]:
    - generic [ref=e239]:
      - navigation "Breadcrumb" [ref=e242]:
        - heading "Breadcrumb" [level=2] [ref=e243]
        - list [ref=e244]:
          - listitem [ref=e245]:
            - link "Home" [ref=e246] [cursor=pointer]:
              - /url: /
          - listitem [ref=e247]:
            - link "Administration" [ref=e248] [cursor=pointer]:
              - /url: /admin
          - listitem [ref=e249]:
            - link "Reports" [ref=e250] [cursor=pointer]:
              - /url: /admin/reports
      - heading "Status report" [level=1] [ref=e253]
    - generic [ref=e255]:
      - complementary [ref=e258]:
        - paragraph [ref=e259]:
          - text: Here you can find a short overview of your site's parameters as well as any problems detected with your installation. It may be useful to copy and paste this information into support requests filed on Drupal.org's support forums and project issue queues. Before filing a support request, ensure that your web server meets the
          - link "system requirements." [ref=e260] [cursor=pointer]:
            - /url: https://www.drupal.org/docs/system-requirements
      - generic [ref=e262]:
        - generic [ref=e263]:
          - generic [ref=e267]:
            - generic [ref=e268]: 1 Error
            - link "Error Details" [ref=e270] [cursor=pointer]:
              - /url: "#error"
              - generic [ref=e271]: Error
              - text: Details
          - generic [ref=e275]:
            - generic [ref=e276]: 1 Warning
            - link "Warning Details" [ref=e278] [cursor=pointer]:
              - /url: "#warning"
              - generic [ref=e279]: Warning
              - text: Details
          - generic [ref=e283]:
            - generic [ref=e284]: 23 Checked
            - link "Checked Details" [ref=e286] [cursor=pointer]:
              - /url: "#checked"
              - generic [ref=e287]: Checked
              - text: Details
        - generic [ref=e288]:
          - heading "General System Information" [level=2] [ref=e289]
          - generic [ref=e290]:
            - generic [ref=e293]:
              - heading "Drupal Version" [level=3] [ref=e294]
              - text: 12.0-dev
            - generic [ref=e297]:
              - heading "Web Server" [level=3] [ref=e298]
              - text: nginx/1.26.3
            - generic [ref=e301]:
              - heading "Last Cron Run" [level=3] [ref=e302]
              - text: Last run 2 hours 15 minutes ago
              - generic [ref=e303]:
                - text: (
                - link "more information" [ref=e304] [cursor=pointer]:
                  - /url: /admin/config/system/cron
                - text: )
                - link "Run cron" [ref=e306] [cursor=pointer]:
                  - /url: /admin/reports/status/run-cron?token=E9BMYMSplHK8OYZeWPHYzG06rn-9OhJH61SAcEjpqjc
            - generic [ref=e309]:
              - heading "PHP" [level=3] [ref=e310]
              - heading "Version" [level=4] [ref=e311]
              - text: 8.5.5 (
              - link "more information" [ref=e312] [cursor=pointer]:
                - /url: /admin/reports/status/php
              - text: )
              - heading "Memory limit" [level=4] [ref=e313]
              - text: 1024M
            - generic [ref=e316]:
              - heading "Database" [level=3] [ref=e317]
              - heading "Version" [level=4] [ref=e318]
              - text: 11.8.6-MariaDB-ubu2404-log
              - heading "System" [level=4] [ref=e319]
              - text: MariaDB
        - generic [ref=e320]:
          - heading "Status Details" [level=2] [ref=e321]
          - group [ref=e322]:
            - generic "Errors found" [ref=e323] [cursor=pointer]: Errors found
            - generic [ref=e325]:
              - button "Drupal core update status" [ref=e326]
              - generic [ref=e327]:
                - link "Unsupported release" [ref=e328] [cursor=pointer]:
                  - /url: /admin/reports/updates
                - generic [ref=e329]:
                  - text: Your version of Drupal is no longer supported. Upgrading is strongly recommended! See the
                  - link "available updates" [ref=e330] [cursor=pointer]:
                    - /url: /admin/reports/updates
                  - text: page for more information.
          - group [ref=e331]:
            - generic "Warnings found" [ref=e332] [cursor=pointer]: Warnings found
            - generic [ref=e334]:
              - button "Configuration files" [ref=e335]
              - generic [ref=e336]:
                - text: Protection disabled
                - generic [ref=e337]:
                  - text: The file
                  - emphasis [ref=e338]: sites/default/settings.php
                  - text: is not protected from modifications and poses a security risk. You must change the file's permissions to be non-writable.
          - group [ref=e339]:
            - generic "Checked" [ref=e340] [cursor=pointer]: Checked
            - generic [ref=e341]:
              - generic [ref=e342]:
                - button "Access to update.php" [ref=e343]
                - generic [ref=e344]: Protected
              - generic [ref=e345]:
                - button "Database support for JSON" [ref=e346]
                - generic [ref=e347]:
                  - text: Available
                  - generic [ref=e348]: Drupal requires databases that support JSON storage.
              - generic [ref=e349]:
                - button "Database system" [ref=e350]
                - generic [ref=e351]: MariaDB
              - generic [ref=e352]:
                - button "Database system version" [ref=e353]
                - generic [ref=e354]: 11.8.6-MariaDB-ubu2404-log
              - generic [ref=e355]:
                - button "Database updates" [ref=e356]
                - generic [ref=e357]: Up to date
              - generic [ref=e358]:
                - button "Entity/field definitions" [ref=e359]
                - generic [ref=e360]: Up to date
              - generic [ref=e361]:
                - button "File system" [ref=e362]
                - generic [ref=e363]:
                  - text: Writable (
                  - emphasis [ref=e364]: public
                  - text: download method)
              - generic [ref=e365]:
                - button "GD library" [ref=e366]
                - generic [ref=e367]:
                  - text: 2.3.3
                  - generic [ref=e368]:
                    - text: "Supported image file formats:"
                    - emphasis [ref=e369]: GIF, JPEG, PNG, WEBP, AVIF
                    - text: .
              - generic [ref=e370]:
                - button "Image toolkit" [ref=e371]
                - generic [ref=e372]:
                  - text: gd
                  - generic [ref=e373]: GD2 image manipulation toolkit
              - generic [ref=e374]:
                - button "Node Access Permissions" [ref=e375]
                - generic [ref=e376]:
                  - text: Disabled
                  - generic [ref=e377]:
                    - text: If the site is experiencing problems with permissions to content, you may have to rebuild the permissions cache. Rebuilding will remove all privileges to content and replace them with permissions based on the current modules and settings. Rebuilding may take some time if there is a lot of content or complex permission settings. After rebuilding has completed, content will automatically use the new permissions.
                    - link "Rebuild permissions" [ref=e378] [cursor=pointer]:
                      - /url: /admin/reports/status/rebuild
              - generic [ref=e379]:
                - button "Password hashing" [ref=e380]
                - generic [ref=e381]:
                  - text: Passwords are hashed with the
                  - emphasis [ref=e382]: argon2id
                  - text: algorithm.
              - generic [ref=e383]:
                - button "PHP" [ref=e384]
                - generic [ref=e385]:
                  - text: 8.5.5 (
                  - link "more information" [ref=e386] [cursor=pointer]:
                    - /url: /admin/reports/status/php
                  - text: )
              - generic [ref=e387]:
                - button "PHP APCu available caching" [ref=e388]
                - generic [ref=e389]: "Memory available: 29.35 MB."
              - generic [ref=e390]:
                - button "PHP APCu caching" [ref=e391]
                - generic [ref=e392]: Enabled (32 MB)
              - generic [ref=e393]:
                - button "PHP extensions" [ref=e394]
                - generic [ref=e395]: Enabled
              - generic [ref=e396]:
                - button "PHP memory limit" [ref=e397]
                - generic [ref=e398]: 1024M
              - generic [ref=e399]:
                - button "PHP OPcode caching" [ref=e400]
                - generic [ref=e401]: Enabled
              - generic [ref=e402]:
                - button "Random number generation" [ref=e403]
                - generic [ref=e404]: Successful
              - generic [ref=e405]:
                - button "SameSite cookie attribute" [ref=e406]
                - generic [ref=e407]:
                  - text: Lax
                  - generic [ref=e408]:
                    - text: This attribute should be explicitly set to Lax, Strict or None. If set to None then the request must be made via HTTPS. See
                    - link "PHP documentation" [ref=e409] [cursor=pointer]:
                      - /url: https://www.php.net/manual/en/session.configuration.php#ini.session.cookie-samesite
              - generic [ref=e410]:
                - button "Transaction isolation level" [ref=e411]
                - generic [ref=e412]:
                  - text: READ-COMMITTED
                  - generic [ref=e413]:
                    - text: See the
                    - link "setting MySQL transaction isolation level" [ref=e414] [cursor=pointer]:
                      - /url: https://www.drupal.org/docs/system-requirements/setting-the-mysql-transaction-isolation-level
                    - text: page for more information.
              - generic [ref=e415]:
                - button "Trusted Host Settings" [ref=e416]
                - generic [ref=e417]:
                  - text: Enabled
                  - generic [ref=e418]:
                    - text: The trusted_host_patterns setting is set to allow
                    - emphasis [ref=e419]: .*
              - generic [ref=e420]:
                - button "Unicode library" [ref=e421]
                - generic [ref=e422]: PHP Mbstring Extension
              - generic [ref=e423]:
                - button "Update notifications" [ref=e424]
                - generic [ref=e425]: Enabled
              - generic [ref=e426]:
                - button "Upload progress" [ref=e427]
                - generic [ref=e428]:
                  - text: Enabled (
                  - link "PECL uploadprogress" [ref=e429] [cursor=pointer]:
                    - /url: https://github.com/php/pecl-php-uploadprogress#uploadprogress
                  - text: )
              - generic [ref=e430]:
                - button "Web server" [ref=e431]
                - generic [ref=e432]: nginx/1.26.3
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