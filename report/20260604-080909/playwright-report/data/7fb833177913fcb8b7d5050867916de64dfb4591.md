# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/reports.spec.ts >> reports-status >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-wide/vrt/reports.spec.ts/reports-status.png, writing actual.
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
                    - /url: /user/logout?token=eo89YCrv2zKQc3N32SW-D_UUgmk2ti5UPbpdR-kaC2Q
                    - generic [ref=e230]: Log out
      - button "Collapse sidebar" [expanded] [ref=e231] [cursor=pointer]:
        - img [ref=e232]
        - generic [ref=e234]: Collapse sidebar
  - navigation "Breadcrumb" [ref=e238]:
    - heading "Breadcrumb" [level=2] [ref=e239]
    - list [ref=e240]:
      - listitem:
        - link "Back to site" [ref=e241] [cursor=pointer]:
          - /url: /
      - listitem:
        - link "Administration" [ref=e242] [cursor=pointer]:
          - /url: /admin
      - listitem:
        - text: /
        - link "Reports" [ref=e243] [cursor=pointer]:
          - /url: /admin/reports
  - generic [ref=e244]:
    - banner [ref=e245]:
      - heading "Status report" [level=1] [ref=e249]
    - main [ref=e251]:
      - complementary [ref=e255]:
        - paragraph [ref=e256]:
          - text: Here you can find a short overview of your site's parameters as well as any problems detected with your installation. It may be useful to copy and paste this information into support requests filed on Drupal.org's support forums and project issue queues. Before filing a support request, ensure that your web server meets the
          - link "system requirements." [ref=e257] [cursor=pointer]:
            - /url: https://www.drupal.org/docs/system-requirements
      - generic [ref=e259]:
        - generic [ref=e260]:
          - generic [ref=e264]:
            - generic [ref=e265]: 1 Error
            - link "Error Details" [ref=e267] [cursor=pointer]:
              - /url: "#error"
              - generic [ref=e268]: Error
              - text: Details
          - generic [ref=e272]:
            - generic [ref=e273]: 2 Warnings
            - link "Warnings Details" [ref=e275] [cursor=pointer]:
              - /url: "#warning"
              - generic [ref=e276]: Warnings
              - text: Details
          - generic [ref=e280]:
            - generic [ref=e281]: 23 Checked
            - link "Checked Details" [ref=e283] [cursor=pointer]:
              - /url: "#checked"
              - generic [ref=e284]: Checked
              - text: Details
        - generic [ref=e285]:
          - heading "General System Information" [level=2] [ref=e286]
          - generic [ref=e287]:
            - generic [ref=e290]:
              - heading "Drupal Version" [level=3] [ref=e291]
              - text: 12.0-dev
            - generic [ref=e294]:
              - heading "Web Server" [level=3] [ref=e295]
              - text: nginx/1.26.3
            - generic [ref=e298]:
              - heading "Last Cron Run" [level=3] [ref=e299]
              - text: Last run 1 hour 18 minutes ago
              - generic [ref=e300]:
                - text: (
                - link "more information" [ref=e301] [cursor=pointer]:
                  - /url: /admin/config/system/cron
                - text: )
                - link "Run cron" [ref=e303] [cursor=pointer]:
                  - /url: /admin/reports/status/run-cron?token=7-JIHyM2jOjGU3kwnNcs_g_as4ADFK9YGOvDfnjgHu4
            - generic [ref=e306]:
              - heading "PHP" [level=3] [ref=e307]
              - heading "Version:" [level=4] [ref=e308]
              - text: 8.5.5 (
              - link "more information" [ref=e309] [cursor=pointer]:
                - /url: /admin/reports/status/php
              - text: )
              - heading "Memory limit:" [level=4] [ref=e310]
              - text: 1024M
            - generic [ref=e313]:
              - heading "Database" [level=3] [ref=e314]
              - heading "Version:" [level=4] [ref=e315]
              - text: 11.8.6-MariaDB-ubu2404-log
              - heading "System:" [level=4] [ref=e316]
              - text: MariaDB
        - generic [ref=e317]:
          - heading "Status Details" [level=2] [ref=e318]
          - group [ref=e319]:
            - generic "Errors found" [ref=e320] [cursor=pointer]: Errors found
            - generic [ref=e322]:
              - button "Drupal core update status" [ref=e323]
              - generic [ref=e324]:
                - link "Unsupported release" [ref=e325] [cursor=pointer]:
                  - /url: /admin/reports/updates
                - generic [ref=e326]:
                  - text: Your version of Drupal is no longer supported. Upgrading is strongly recommended! See the
                  - link "available updates" [ref=e327] [cursor=pointer]:
                    - /url: /admin/reports/updates
                  - text: page for more information.
          - group [ref=e328]:
            - generic "Warnings found" [ref=e329] [cursor=pointer]: Warnings found
            - generic [ref=e330]:
              - generic [ref=e331]:
                - button "Configuration files" [ref=e332]
                - generic [ref=e333]:
                  - text: Protection disabled
                  - generic [ref=e334]:
                    - text: The file
                    - emphasis [ref=e335]: sites/default/settings.php
                    - text: is not protected from modifications and poses a security risk. You must change the file's permissions to be non-writable.
              - generic [ref=e336]:
                - button "Experimental themes installed" [ref=e337]
                - generic [ref=e338]:
                  - text: "Experimental themes found:"
                  - emphasis [ref=e339]: Default Admin
                  - text: . Experimental themes are provided for testing purposes only. Use at your own risk.
          - group [ref=e340]:
            - generic "Checked" [ref=e341] [cursor=pointer]: Checked
            - generic [ref=e342]:
              - generic [ref=e343]:
                - button "Access to update.php" [ref=e344]
                - generic [ref=e345]: Protected
              - generic [ref=e346]:
                - button "Database support for JSON" [ref=e347]
                - generic [ref=e348]:
                  - text: Available
                  - generic [ref=e349]: Drupal requires databases that support JSON storage.
              - generic [ref=e350]:
                - button "Database system" [ref=e351]
                - generic [ref=e352]: MariaDB
              - generic [ref=e353]:
                - button "Database system version" [ref=e354]
                - generic [ref=e355]: 11.8.6-MariaDB-ubu2404-log
              - generic [ref=e356]:
                - button "Database updates" [ref=e357]
                - generic [ref=e358]: Up to date
              - generic [ref=e359]:
                - button "Entity/field definitions" [ref=e360]
                - generic [ref=e361]: Up to date
              - generic [ref=e362]:
                - button "File system" [ref=e363]
                - generic [ref=e364]:
                  - text: Writable (
                  - emphasis [ref=e365]: public
                  - text: download method)
              - generic [ref=e366]:
                - button "GD library" [ref=e367]
                - generic [ref=e368]:
                  - text: 2.3.3
                  - generic [ref=e369]:
                    - text: "Supported image file formats:"
                    - emphasis [ref=e370]: GIF, JPEG, PNG, WEBP, AVIF
                    - text: .
              - generic [ref=e371]:
                - button "Image toolkit" [ref=e372]
                - generic [ref=e373]:
                  - text: gd
                  - generic [ref=e374]: GD2 image manipulation toolkit
              - generic [ref=e375]:
                - button "Node Access Permissions" [ref=e376]
                - generic [ref=e377]:
                  - text: Disabled
                  - generic [ref=e378]:
                    - text: If the site is experiencing problems with permissions to content, you may have to rebuild the permissions cache. Rebuilding will remove all privileges to content and replace them with permissions based on the current modules and settings. Rebuilding may take some time if there is a lot of content or complex permission settings. After rebuilding has completed, content will automatically use the new permissions.
                    - link "Rebuild permissions" [ref=e379] [cursor=pointer]:
                      - /url: /admin/reports/status/rebuild
              - generic [ref=e380]:
                - button "Password hashing" [ref=e381]
                - generic [ref=e382]:
                  - text: Passwords are hashed with the
                  - emphasis [ref=e383]: argon2id
                  - text: algorithm.
              - generic [ref=e384]:
                - button "PHP" [ref=e385]
                - generic [ref=e386]:
                  - text: 8.5.5 (
                  - link "more information" [ref=e387] [cursor=pointer]:
                    - /url: /admin/reports/status/php
                  - text: )
              - generic [ref=e388]:
                - button "PHP APCu available caching" [ref=e389]
                - generic [ref=e390]: "Memory available: 28.25 MB."
              - generic [ref=e391]:
                - button "PHP APCu caching" [ref=e392]
                - generic [ref=e393]: Enabled (32 MB)
              - generic [ref=e394]:
                - button "PHP extensions" [ref=e395]
                - generic [ref=e396]: Enabled
              - generic [ref=e397]:
                - button "PHP memory limit" [ref=e398]
                - generic [ref=e399]: 1024M
              - generic [ref=e400]:
                - button "PHP OPcode caching" [ref=e401]
                - generic [ref=e402]: Enabled
              - generic [ref=e403]:
                - button "Random number generation" [ref=e404]
                - generic [ref=e405]: Successful
              - generic [ref=e406]:
                - button "SameSite cookie attribute" [ref=e407]
                - generic [ref=e408]:
                  - text: Lax
                  - generic [ref=e409]:
                    - text: This attribute should be explicitly set to Lax, Strict or None. If set to None then the request must be made via HTTPS. See
                    - link "PHP documentation" [ref=e410] [cursor=pointer]:
                      - /url: https://www.php.net/manual/en/session.configuration.php#ini.session.cookie-samesite
              - generic [ref=e411]:
                - button "Transaction isolation level" [ref=e412]
                - generic [ref=e413]:
                  - text: READ-COMMITTED
                  - generic [ref=e414]:
                    - text: See the
                    - link "setting MySQL transaction isolation level" [ref=e415] [cursor=pointer]:
                      - /url: https://www.drupal.org/docs/system-requirements/setting-the-mysql-transaction-isolation-level
                    - text: page for more information.
              - generic [ref=e416]:
                - button "Trusted Host Settings" [ref=e417]
                - generic [ref=e418]:
                  - text: Enabled
                  - generic [ref=e419]:
                    - text: The trusted_host_patterns setting is set to allow
                    - emphasis [ref=e420]: .*
              - generic [ref=e421]:
                - button "Unicode library" [ref=e422]
                - generic [ref=e423]: PHP Mbstring Extension
              - generic [ref=e424]:
                - button "Update notifications" [ref=e425]
                - generic [ref=e426]: Enabled
              - generic [ref=e427]:
                - button "Upload progress" [ref=e428]
                - generic [ref=e429]:
                  - text: Enabled (
                  - link "PECL uploadprogress" [ref=e430] [cursor=pointer]:
                    - /url: https://github.com/php/pecl-php-uploadprogress#uploadprogress
                  - text: )
              - generic [ref=e431]:
                - button "Web server" [ref=e432]
                - generic [ref=e433]: nginx/1.26.3
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-wide/vrt/reports.spec.ts/reports-status.png, writing actual.
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