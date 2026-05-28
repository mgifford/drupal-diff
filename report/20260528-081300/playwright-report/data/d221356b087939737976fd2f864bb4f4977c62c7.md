# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-performance >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 1280px by 1058px, received 1280px by 927px. 34140 pixels (ratio 0.03 of all image pixels) are different.

  Snapshot: config-performance.png

Call log:
  - Expect "toHaveScreenshot(config-performance.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 1280px by 1058px, received 1280px by 927px. 34140 pixels (ratio 0.03 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 1280px by 1058px, received 1280px by 927px. 34140 pixels (ratio 0.03 of all image pixels) are different.

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
                  - button "Development" [expanded] [ref=e129] [cursor=pointer]:
                    - generic [ref=e130]: Development
                    - img [ref=e131]
                  - list [ref=e133]:
                    - listitem [ref=e134]:
                      - link "Performance" [ref=e135] [cursor=pointer]:
                        - /url: /admin/config/development/performance
                    - listitem [ref=e136]:
                      - link "Development settings" [ref=e137] [cursor=pointer]:
                        - /url: /admin/config/development/settings
                    - listitem [ref=e138]:
                      - link "Logging and errors" [ref=e139] [cursor=pointer]:
                        - /url: /admin/config/development/logging
                    - listitem [ref=e140]:
                      - link "Maintenance mode" [ref=e141] [cursor=pointer]:
                        - /url: /admin/config/development/maintenance
                    - listitem [ref=e142]:
                      - link "Configuration synchronization" [ref=e143] [cursor=pointer]:
                        - /url: /admin/config/development/configuration
                - listitem [ref=e144]:
                  - button "Media" [ref=e145] [cursor=pointer]:
                    - generic [ref=e146]: Media
                    - img [ref=e147]
                - listitem [ref=e149]:
                  - button "Search and metadata" [ref=e150] [cursor=pointer]:
                    - generic [ref=e151]: Search and metadata
                    - img [ref=e152]
                - listitem [ref=e154]:
                  - button "Region and language" [ref=e155] [cursor=pointer]:
                    - generic [ref=e156]: Region and language
                    - img [ref=e157]
                - listitem [ref=e159]:
                  - button "Web services" [ref=e160] [cursor=pointer]:
                    - generic [ref=e161]: Web services
                    - img [ref=e162]
          - listitem [ref=e164]:
            - link "People" [ref=e165] [cursor=pointer]:
              - /url: /admin/people
              - img [ref=e166]
              - generic [ref=e168]: People
          - listitem [ref=e169]:
            - button "Extend Reports" [ref=e170] [cursor=pointer]:
              - img [ref=e171]
              - generic [ref=e173]: Extend
              - generic [ref=e174]: Reports
              - img [ref=e175]
            - generic [ref=e177]:
              - link "Reports" [ref=e178] [cursor=pointer]:
                - /url: /admin/reports
                - generic [ref=e179]: Reports
              - list [ref=e180]:
                - listitem [ref=e181]:
                  - link "Status report" [ref=e182] [cursor=pointer]:
                    - /url: /admin/reports/status
                    - generic [ref=e183]: Status report
                - listitem [ref=e184]:
                  - link "Available updates" [ref=e185] [cursor=pointer]:
                    - /url: /admin/reports/updates
                    - generic [ref=e186]: Available updates
                - listitem [ref=e187]:
                  - link "Recent log messages" [ref=e188] [cursor=pointer]:
                    - /url: /admin/reports/dblog
                    - generic [ref=e189]: Recent log messages
                - listitem [ref=e190]:
                  - link "Field list" [ref=e191] [cursor=pointer]:
                    - /url: /admin/reports/fields
                    - generic [ref=e192]: Field list
                - listitem [ref=e193]:
                  - link "Top 'access denied' errors" [ref=e194] [cursor=pointer]:
                    - /url: /admin/reports/access-denied
                    - generic [ref=e195]: Top 'access denied' errors
                - listitem [ref=e196]:
                  - link "Top 'page not found' errors" [ref=e197] [cursor=pointer]:
                    - /url: /admin/reports/page-not-found
                    - generic [ref=e198]: Top 'page not found' errors
                - listitem [ref=e199]:
                  - link "Views plugins" [ref=e200] [cursor=pointer]:
                    - /url: /admin/reports/views-plugins
                    - generic [ref=e201]: Views plugins
          - listitem [ref=e202]:
            - link "Announcements" [ref=e203] [cursor=pointer]:
              - /url: /admin/announcements_feed
              - img [ref=e204]
              - generic [ref=e208]: Announcements
    - generic [ref=e209]:
      - generic [ref=e210]:
        - heading "Help" [level=3] [ref=e211]
        - list [ref=e212]:
          - listitem [ref=e213]:
            - link "Help" [ref=e214] [cursor=pointer]:
              - /url: /admin/help
              - img [ref=e215]
              - generic [ref=e217]: Help
      - generic [ref=e218]:
        - heading "User" [level=3] [ref=e219]
        - list [ref=e220]:
          - listitem [ref=e221]:
            - button "Extend admin" [ref=e222] [cursor=pointer]:
              - img [ref=e223]
              - generic [ref=e225]: Extend
              - generic [ref=e226]: admin
              - img [ref=e227]
            - generic [ref=e229]:
              - link "admin" [ref=e230] [cursor=pointer]:
                - /url: /user
                - generic [ref=e231]: admin
              - list [ref=e232]:
                - listitem [ref=e233]:
                  - link "View profile" [ref=e234] [cursor=pointer]:
                    - /url: /user
                    - generic [ref=e235]: View profile
                - listitem [ref=e236]:
                  - link "Edit profile" [ref=e237] [cursor=pointer]:
                    - /url: /user/edit
                    - generic [ref=e238]: Edit profile
                - listitem [ref=e239]:
                  - link "Log out" [ref=e240] [cursor=pointer]:
                    - /url: /user/logout?token=Yzzb-BjBXNcFnxuGskIoQB5phdaKZ_bySd8T9ReXAn8
                    - generic [ref=e241]: Log out
      - button "Collapse sidebar" [expanded] [ref=e242] [cursor=pointer]:
        - img [ref=e243]
        - generic [ref=e245]: Collapse sidebar
  - main [ref=e247]:
    - generic [ref=e250]:
      - navigation "Breadcrumb" [ref=e253]:
        - heading "Breadcrumb" [level=2] [ref=e254]
        - list [ref=e255]:
          - listitem [ref=e256]:
            - link "Home" [ref=e257] [cursor=pointer]:
              - /url: /
          - listitem [ref=e258]:
            - link "Administration" [ref=e259] [cursor=pointer]:
              - /url: /admin
          - listitem [ref=e260]:
            - link "Configuration" [ref=e261] [cursor=pointer]:
              - /url: /admin/config
          - listitem [ref=e262]:
            - link "Development" [ref=e263] [cursor=pointer]:
              - /url: /admin/config/development
      - heading "Performance" [level=1] [ref=e266]
    - generic [ref=e270]:
      - group [ref=e272]:
        - button "Clear cache" [expanded] [ref=e273] [cursor=pointer]: Clear cache
        - button "Clear all caches" [ref=e275] [cursor=pointer]
      - generic [ref=e276]:
        - group [ref=e277]:
          - button "Caching" [expanded] [ref=e278] [cursor=pointer]: Caching
          - generic [ref=e280]:
            - generic [ref=e281] [cursor=pointer]: Browser and proxy cache maximum age
            - combobox "Browser and proxy cache maximum age" [ref=e282]:
              - option "<no caching>" [selected]
              - option "1 min"
              - option "3 min"
              - option "5 min"
              - option "10 min"
              - option "15 min"
              - option "30 min"
              - option "45 min"
              - option "1 hour"
              - option "3 hours"
              - option "6 hours"
              - option "9 hours"
              - option "12 hours"
              - option "1 day"
            - generic [ref=e283]: This is used as the value for max-age in Cache-Control headers.
        - group [ref=e284]:
          - button "Bandwidth optimization" [expanded] [ref=e285] [cursor=pointer]: Bandwidth optimization
          - generic [ref=e286]:
            - generic [ref=e287]: External resources can be optimized automatically, which can reduce both the size and number of requests made to your website.
            - generic [ref=e288]:
              - checkbox "Aggregate CSS files" [checked] [ref=e289]
              - text: Aggregate CSS files
            - generic [ref=e290]:
              - checkbox "Aggregate JavaScript files" [checked] [ref=e291]
              - text: Aggregate JavaScript files
        - button "Save configuration" [ref=e293] [cursor=pointer]
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