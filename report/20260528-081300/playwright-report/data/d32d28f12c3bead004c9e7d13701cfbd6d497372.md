# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-text-formats >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  53389 pixels (ratio 0.05 of all image pixels) are different.

  Snapshot: config-text-formats.png

Call log:
  - Expect "toHaveScreenshot(config-text-formats.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - 53389 pixels (ratio 0.05 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - 53389 pixels (ratio 0.05 of all image pixels) are different.

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
                  - button "Content authoring" [expanded] [ref=e119] [cursor=pointer]:
                    - generic [ref=e120]: Content authoring
                    - img [ref=e121]
                  - list [ref=e123]:
                    - listitem [ref=e124]:
                      - link "Text formats and editors" [ref=e125] [cursor=pointer]:
                        - /url: /admin/config/content/formats
                - listitem [ref=e126]:
                  - button "User interface" [ref=e127] [cursor=pointer]:
                    - generic [ref=e128]: User interface
                    - img [ref=e129]
                - listitem [ref=e131]:
                  - button "Development" [ref=e132] [cursor=pointer]:
                    - generic [ref=e133]: Development
                    - img [ref=e134]
                - listitem [ref=e136]:
                  - button "Media" [ref=e137] [cursor=pointer]:
                    - generic [ref=e138]: Media
                    - img [ref=e139]
                - listitem [ref=e141]:
                  - button "Search and metadata" [ref=e142] [cursor=pointer]:
                    - generic [ref=e143]: Search and metadata
                    - img [ref=e144]
                - listitem [ref=e146]:
                  - button "Region and language" [ref=e147] [cursor=pointer]:
                    - generic [ref=e148]: Region and language
                    - img [ref=e149]
                - listitem [ref=e151]:
                  - button "Web services" [ref=e152] [cursor=pointer]:
                    - generic [ref=e153]: Web services
                    - img [ref=e154]
          - listitem [ref=e156]:
            - link "People" [ref=e157] [cursor=pointer]:
              - /url: /admin/people
              - img [ref=e158]
              - generic [ref=e160]: People
          - listitem [ref=e161]:
            - button "Extend Reports" [ref=e162] [cursor=pointer]:
              - img [ref=e163]
              - generic [ref=e165]: Extend
              - generic [ref=e166]: Reports
              - img [ref=e167]
            - generic [ref=e169]:
              - link "Reports" [ref=e170] [cursor=pointer]:
                - /url: /admin/reports
                - generic [ref=e171]: Reports
              - list [ref=e172]:
                - listitem [ref=e173]:
                  - link "Status report" [ref=e174] [cursor=pointer]:
                    - /url: /admin/reports/status
                    - generic [ref=e175]: Status report
                - listitem [ref=e176]:
                  - link "Available updates" [ref=e177] [cursor=pointer]:
                    - /url: /admin/reports/updates
                    - generic [ref=e178]: Available updates
                - listitem [ref=e179]:
                  - link "Recent log messages" [ref=e180] [cursor=pointer]:
                    - /url: /admin/reports/dblog
                    - generic [ref=e181]: Recent log messages
                - listitem [ref=e182]:
                  - link "Field list" [ref=e183] [cursor=pointer]:
                    - /url: /admin/reports/fields
                    - generic [ref=e184]: Field list
                - listitem [ref=e185]:
                  - link "Top 'access denied' errors" [ref=e186] [cursor=pointer]:
                    - /url: /admin/reports/access-denied
                    - generic [ref=e187]: Top 'access denied' errors
                - listitem [ref=e188]:
                  - link "Top 'page not found' errors" [ref=e189] [cursor=pointer]:
                    - /url: /admin/reports/page-not-found
                    - generic [ref=e190]: Top 'page not found' errors
                - listitem [ref=e191]:
                  - link "Views plugins" [ref=e192] [cursor=pointer]:
                    - /url: /admin/reports/views-plugins
                    - generic [ref=e193]: Views plugins
          - listitem [ref=e194]:
            - link "Announcements" [ref=e195] [cursor=pointer]:
              - /url: /admin/announcements_feed
              - img [ref=e196]
              - generic [ref=e200]: Announcements
    - generic [ref=e201]:
      - generic [ref=e202]:
        - heading "Help" [level=3] [ref=e203]
        - list [ref=e204]:
          - listitem [ref=e205]:
            - link "Help" [ref=e206] [cursor=pointer]:
              - /url: /admin/help
              - img [ref=e207]
              - generic [ref=e209]: Help
      - generic [ref=e210]:
        - heading "User" [level=3] [ref=e211]
        - list [ref=e212]:
          - listitem [ref=e213]:
            - button "Extend admin" [ref=e214] [cursor=pointer]:
              - img [ref=e215]
              - generic [ref=e217]: Extend
              - generic [ref=e218]: admin
              - img [ref=e219]
            - generic [ref=e221]:
              - link "admin" [ref=e222] [cursor=pointer]:
                - /url: /user
                - generic [ref=e223]: admin
              - list [ref=e224]:
                - listitem [ref=e225]:
                  - link "View profile" [ref=e226] [cursor=pointer]:
                    - /url: /user
                    - generic [ref=e227]: View profile
                - listitem [ref=e228]:
                  - link "Edit profile" [ref=e229] [cursor=pointer]:
                    - /url: /user/edit
                    - generic [ref=e230]: Edit profile
                - listitem [ref=e231]:
                  - link "Log out" [ref=e232] [cursor=pointer]:
                    - /url: /user/logout?token=Yzzb-BjBXNcFnxuGskIoQB5phdaKZ_bySd8T9ReXAn8
                    - generic [ref=e233]: Log out
      - button "Collapse sidebar" [expanded] [ref=e234] [cursor=pointer]:
        - img [ref=e235]
        - generic [ref=e237]: Collapse sidebar
  - main [ref=e239]:
    - generic [ref=e242]:
      - navigation "Breadcrumb" [ref=e245]:
        - heading "Breadcrumb" [level=2] [ref=e246]
        - list [ref=e247]:
          - listitem [ref=e248]:
            - link "Home" [ref=e249] [cursor=pointer]:
              - /url: /
          - listitem [ref=e250]:
            - link "Administration" [ref=e251] [cursor=pointer]:
              - /url: /admin
          - listitem [ref=e252]:
            - link "Configuration" [ref=e253] [cursor=pointer]:
              - /url: /admin/config
          - listitem [ref=e254]:
            - link "Content authoring" [ref=e255] [cursor=pointer]:
              - /url: /admin/config/content
      - heading "Text formats and editors" [level=1] [ref=e258]
    - generic [ref=e260]:
      - complementary [ref=e263]:
        - paragraph [ref=e264]:
          - text: Text formats define how text is filtered for output and how HTML tags and other text is displayed, replaced, or removed.
          - strong [ref=e265]: Improper text format configuration is a security risk.
          - text: Learn more on the
          - link "Filter module help page" [ref=e266] [cursor=pointer]:
            - /url: /admin/help/filter
          - text: .
        - paragraph [ref=e267]: Text formats are presented on content editing pages in the order defined on this page. The first format available to a user will be selected by default.
      - generic [ref=e268]:
        - list [ref=e270]:
          - listitem [ref=e271]:
            - link "+Add text format" [ref=e272] [cursor=pointer]:
              - /url: /admin/config/content/formats/add
        - generic [ref=e274]:
          - button "Show row weights" [ref=e276] [cursor=pointer]:
            - generic [ref=e277]: Show row weights
          - table [ref=e278]:
            - rowgroup [ref=e279]:
              - row "Name Text editor Roles Status Operations" [ref=e280]:
                - columnheader "Name" [ref=e281]
                - columnheader "Text editor" [ref=e282]
                - columnheader "Roles" [ref=e283]
                - columnheader "Status" [ref=e284]
                - columnheader "Operations" [ref=e285]
            - rowgroup [ref=e286]:
              - row "Basic HTML CKEditor 5 Authenticated user, Administrator Enabled Edit Basic HTML List additional actions" [ref=e287]:
                - cell "Basic HTML" [ref=e288]:
                  - generic [ref=e289]:
                    - link "Change order" [ref=e290]:
                      - /url: "#"
                    - generic [ref=e291]: Basic HTML
                - cell "CKEditor 5" [ref=e292]
                - cell "Authenticated user, Administrator" [ref=e293]:
                  - list [ref=e295]:
                    - listitem [ref=e296]: Authenticated user,
                    - listitem [ref=e297]: Administrator
                - cell "Enabled" [ref=e298]
                - cell "Edit Basic HTML List additional actions" [ref=e299]:
                  - list [ref=e302]:
                    - listitem [ref=e303]:
                      - link "Edit Basic HTML" [ref=e304] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/basic_html?destination=/admin/config/content/formats
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e305]:
                        - generic [ref=e306]: List additional actions
              - row "Restricted HTML — Anonymous user, Administrator Enabled Edit Restricted HTML List additional actions" [ref=e307]:
                - cell "Restricted HTML" [ref=e308]:
                  - generic [ref=e309]:
                    - link "Change order" [ref=e310]:
                      - /url: "#"
                    - generic [ref=e311]: Restricted HTML
                - cell "—" [ref=e312]
                - cell "Anonymous user, Administrator" [ref=e313]:
                  - list [ref=e315]:
                    - listitem [ref=e316]: Anonymous user,
                    - listitem [ref=e317]: Administrator
                - cell "Enabled" [ref=e318]
                - cell "Edit Restricted HTML List additional actions" [ref=e319]:
                  - list [ref=e322]:
                    - listitem [ref=e323]:
                      - link "Edit Restricted HTML" [ref=e324] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/restricted_html?destination=/admin/config/content/formats
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e325]:
                        - generic [ref=e326]: List additional actions
              - row "Full HTML CKEditor 5 Administrator Enabled Edit Full HTML List additional actions" [ref=e327]:
                - cell "Full HTML" [ref=e328]:
                  - generic [ref=e329]:
                    - link "Change order" [ref=e330]:
                      - /url: "#"
                    - generic [ref=e331]: Full HTML
                - cell "CKEditor 5" [ref=e332]
                - cell "Administrator" [ref=e333]:
                  - list [ref=e335]:
                    - listitem [ref=e336]: Administrator
                - cell "Enabled" [ref=e337]
                - cell "Edit Full HTML List additional actions" [ref=e338]:
                  - list [ref=e341]:
                    - listitem [ref=e342]:
                      - link "Edit Full HTML" [ref=e343] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/full_html?destination=/admin/config/content/formats
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e344]:
                        - generic [ref=e345]: List additional actions
              - row "Plain text — This format is shown when no other formats are available Enabled Edit Plain text" [ref=e346]:
                - cell "Plain text" [ref=e347]:
                  - generic [ref=e348]:
                    - link "Change order" [ref=e349]:
                      - /url: "#"
                    - generic [ref=e350]: Plain text
                - cell "—" [ref=e351]
                - cell "This format is shown when no other formats are available" [ref=e352]:
                  - emphasis [ref=e353]: This format is shown when no other formats are available
                - cell "Enabled" [ref=e354]
                - cell "Edit Plain text" [ref=e355]:
                  - list [ref=e358]:
                    - listitem [ref=e359]:
                      - link "Edit Plain text" [ref=e360] [cursor=pointer]:
                        - /url: /admin/config/content/formats/manage/plain_text?destination=/admin/config/content/formats
                        - text: Configure
          - button "Save" [ref=e362] [cursor=pointer]
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