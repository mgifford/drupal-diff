# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-media-file-system >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-wide/vrt/config.spec.ts/config-media-file-system.png, writing actual.
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
            - button "Collapse Configuration" [ref=e97] [cursor=pointer]:
              - img [ref=e98]
              - generic [ref=e100]: Collapse
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
                  - button "Media" [expanded] [ref=e134] [cursor=pointer]:
                    - generic [ref=e135]: Media
                    - img [ref=e136]
                  - list [ref=e138]:
                    - listitem [ref=e139]:
                      - link "File system" [ref=e140] [cursor=pointer]:
                        - /url: /admin/config/media/file-system
                    - listitem [ref=e141]:
                      - link "Image styles" [ref=e142] [cursor=pointer]:
                        - /url: /admin/config/media/image-styles
                    - listitem [ref=e143]:
                      - link "Image toolkit" [ref=e144] [cursor=pointer]:
                        - /url: /admin/config/media/image-toolkit
                - listitem [ref=e145]:
                  - button "Search and metadata" [ref=e146] [cursor=pointer]:
                    - generic [ref=e147]: Search and metadata
                    - img [ref=e148]
                - listitem [ref=e150]:
                  - button "Region and language" [ref=e151] [cursor=pointer]:
                    - generic [ref=e152]: Region and language
                    - img [ref=e153]
                - listitem [ref=e155]:
                  - button "Web services" [ref=e156] [cursor=pointer]:
                    - generic [ref=e157]: Web services
                    - img [ref=e158]
          - listitem [ref=e160]:
            - link "People" [ref=e161] [cursor=pointer]:
              - /url: /admin/people
              - img [ref=e162]
              - generic [ref=e164]: People
          - listitem [ref=e165]:
            - button "Extend Reports" [ref=e166] [cursor=pointer]:
              - img [ref=e167]
              - generic [ref=e169]: Extend
              - generic [ref=e170]: Reports
              - img [ref=e171]
            - generic [ref=e173]:
              - link "Reports" [ref=e174] [cursor=pointer]:
                - /url: /admin/reports
                - generic [ref=e175]: Reports
              - list [ref=e176]:
                - listitem [ref=e177]:
                  - link "Status report" [ref=e178] [cursor=pointer]:
                    - /url: /admin/reports/status
                    - generic [ref=e179]: Status report
                - listitem [ref=e180]:
                  - link "Available updates" [ref=e181] [cursor=pointer]:
                    - /url: /admin/reports/updates
                    - generic [ref=e182]: Available updates
                - listitem [ref=e183]:
                  - link "Recent log messages" [ref=e184] [cursor=pointer]:
                    - /url: /admin/reports/dblog
                    - generic [ref=e185]: Recent log messages
                - listitem [ref=e186]:
                  - link "Field list" [ref=e187] [cursor=pointer]:
                    - /url: /admin/reports/fields
                    - generic [ref=e188]: Field list
                - listitem [ref=e189]:
                  - link "Top 'access denied' errors" [ref=e190] [cursor=pointer]:
                    - /url: /admin/reports/access-denied
                    - generic [ref=e191]: Top 'access denied' errors
                - listitem [ref=e192]:
                  - link "Top 'page not found' errors" [ref=e193] [cursor=pointer]:
                    - /url: /admin/reports/page-not-found
                    - generic [ref=e194]: Top 'page not found' errors
                - listitem [ref=e195]:
                  - link "Views plugins" [ref=e196] [cursor=pointer]:
                    - /url: /admin/reports/views-plugins
                    - generic [ref=e197]: Views plugins
          - listitem [ref=e198]:
            - link "Announcements" [ref=e199] [cursor=pointer]:
              - /url: /admin/announcements_feed
              - img [ref=e200]
              - generic [ref=e204]: Announcements
    - generic [ref=e205]:
      - generic [ref=e206]:
        - heading "Help" [level=3] [ref=e207]
        - list [ref=e208]:
          - listitem [ref=e209]:
            - link "Help" [ref=e210] [cursor=pointer]:
              - /url: /admin/help
              - img [ref=e211]
              - generic [ref=e213]: Help
      - generic [ref=e214]:
        - heading "User" [level=3] [ref=e215]
        - list [ref=e216]:
          - listitem [ref=e217]:
            - button "Extend admin" [ref=e218] [cursor=pointer]:
              - img [ref=e219]
              - generic [ref=e221]: Extend
              - generic [ref=e222]: admin
              - img [ref=e223]
            - generic [ref=e225]:
              - link "admin" [ref=e226] [cursor=pointer]:
                - /url: /user
                - generic [ref=e227]: admin
              - list [ref=e228]:
                - listitem [ref=e229]:
                  - link "View profile" [ref=e230] [cursor=pointer]:
                    - /url: /user
                    - generic [ref=e231]: View profile
                - listitem [ref=e232]:
                  - link "Edit profile" [ref=e233] [cursor=pointer]:
                    - /url: /user/edit
                    - generic [ref=e234]: Edit profile
                - listitem [ref=e235]:
                  - link "Log out" [ref=e236] [cursor=pointer]:
                    - /url: /user/logout?token=eo89YCrv2zKQc3N32SW-D_UUgmk2ti5UPbpdR-kaC2Q
                    - generic [ref=e237]: Log out
      - button "Collapse sidebar" [expanded] [ref=e238] [cursor=pointer]:
        - img [ref=e239]
        - generic [ref=e241]: Collapse sidebar
  - navigation "Breadcrumb" [ref=e245]:
    - heading "Breadcrumb" [level=2] [ref=e246]
    - list [ref=e247]:
      - listitem:
        - link "Back to site" [ref=e248] [cursor=pointer]:
          - /url: /
      - listitem:
        - link "Administration" [ref=e249] [cursor=pointer]:
          - /url: /admin
      - listitem:
        - text: /
        - link "Configuration" [ref=e250] [cursor=pointer]:
          - /url: /admin/config
      - listitem:
        - text: /
        - link "Media" [ref=e251] [cursor=pointer]:
          - /url: /admin/config/media
  - generic [ref=e252]:
    - banner [ref=e253]:
      - heading "File system" [level=1] [ref=e257]
    - main [ref=e259]:
      - generic [ref=e263]:
        - generic [ref=e264]:
          - generic [ref=e265] [cursor=pointer]: Public file system path
          - text: sites/default/files
          - generic [ref=e266]: A local file system path where public files will be stored. This directory must exist and be writable by Drupal. This directory must be relative to the Drupal installation directory and be accessible over the web. This must be changed in settings.php
        - generic [ref=e267]:
          - generic [ref=e268] [cursor=pointer]: Public file base URL
          - text: http://localhost/sites/default/files
          - generic [ref=e269]: The base URL that will be used for public file URLs. This can be changed in settings.php
        - generic [ref=e270]:
          - generic [ref=e271] [cursor=pointer]: Optimized assets file system path
          - text: sites/default/files
          - generic [ref=e272]: A local file system path where optimized assets files will be stored. This directory must exist and be writable by Drupal. This directory must be relative to the Drupal installation directory and be accessible over the web. This must be changed in settings.php
        - generic [ref=e273]:
          - generic [ref=e274] [cursor=pointer]: Private file system path
          - text: Not set
          - generic [ref=e275]: An existing local file system path for storing private files. It should be writable by Drupal and not accessible over the web. This must be changed in settings.php
        - generic [ref=e276]:
          - generic [ref=e277] [cursor=pointer]: Temporary directory
          - text: /tmp
          - generic [ref=e278]: A local file system path where temporary files will be stored. This directory should not be accessible over the web. This must be changed in settings.php.
        - group "Default download method" [ref=e279]:
          - generic [ref=e281]: Default download method
          - generic [ref=e282]:
            - generic [ref=e284]:
              - radio "Public local files served by the webserver." [checked] [ref=e285]
              - text: Public local files served by the webserver.
            - generic [ref=e286]: This setting is used as the preferred download method. The use of public files is more efficient, but does not provide any access control.
        - generic [ref=e287]:
          - generic [ref=e288] [cursor=pointer]: Delete temporary files after
          - combobox "Delete temporary files after" [ref=e289]:
            - option "Never"
            - option "6 hours" [selected]
            - option "12 hours"
            - option "1 day"
            - option "1 week"
            - option "4 weeks"
            - option "3 months"
          - generic [ref=e290]:
            - text: Temporary files are not referenced, but are in the file system and therefore may show up in administrative lists.
            - strong [ref=e291]: "Warning:"
            - text: If enabled, temporary files will be permanently deleted and may not be recoverable.
        - group [ref=e292]:
          - button "Sanitize filenames" [expanded] [ref=e293] [cursor=pointer]: Sanitize filenames
          - generic [ref=e294]:
            - generic [ref=e295]: These settings only apply to new files as they are uploaded. Changes here do not affect existing file names.
            - generic [ref=e296]:
              - generic [ref=e297] [cursor=pointer]: Replacement character
              - combobox "Replacement character" [ref=e298]:
                - option "Dash (-)" [selected]
                - option "Underscore (_)"
              - generic [ref=e299]: Used when replacing whitespace, replacing non-alphanumeric characters or transliterating unknown characters.
            - generic [ref=e300]:
              - checkbox "Transliterate" [ref=e301] [cursor=pointer]
              - text: Transliterate
              - generic [ref=e302]: Transliteration replaces any characters that are not alphanumeric, underscores, periods or hyphens with the replacement character. It ensures filenames only contain ASCII characters. It is recommended to keep transliteration enabled.
            - generic [ref=e303]:
              - checkbox "Replace whitespace with the replacement character" [ref=e304] [cursor=pointer]
              - text: Replace whitespace with the replacement character
            - generic [ref=e305]:
              - checkbox "Replace non-alphanumeric characters with the replacement character" [ref=e306] [cursor=pointer]
              - text: Replace non-alphanumeric characters with the replacement character
              - generic [ref=e307]: Alphanumeric characters, dots (.), underscores (_) and dashes (-) are preserved.
            - generic [ref=e308]:
              - checkbox "Replace sequences of dots, underscores and/or dashes with the replacement character" [ref=e309] [cursor=pointer]
              - text: Replace sequences of dots, underscores and/or dashes with the replacement character
            - generic [ref=e310]:
              - checkbox "Convert to lowercase" [ref=e311] [cursor=pointer]
              - text: Convert to lowercase
        - button "Save configuration" [ref=e313] [cursor=pointer]
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-wide/vrt/config.spec.ts/config-media-file-system.png, writing actual.
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