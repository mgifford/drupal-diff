# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-site-info >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 1280px by 1352px, received 1280px by 1339px. 44390 pixels (ratio 0.03 of all image pixels) are different.

  Snapshot: config-site-info.png

Call log:
  - Expect "toHaveScreenshot(config-site-info.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 1280px by 1352px, received 1280px by 1339px. 44379 pixels (ratio 0.03 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 1280px by 1352px, received 1280px by 1339px. 44390 pixels (ratio 0.03 of all image pixels) are different.

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
                  - button "System" [expanded] [ref=e114] [cursor=pointer]:
                    - generic [ref=e115]: System
                    - img [ref=e116]
                  - list [ref=e118]:
                    - listitem [ref=e119]:
                      - link "Basic site settings" [ref=e120] [cursor=pointer]:
                        - /url: /admin/config/system/site-information
                    - listitem [ref=e121]:
                      - link "Cron" [ref=e122] [cursor=pointer]:
                        - /url: /admin/config/system/cron
                - listitem [ref=e123]:
                  - button "Content authoring" [ref=e124] [cursor=pointer]:
                    - generic [ref=e125]: Content authoring
                    - img [ref=e126]
                - listitem [ref=e128]:
                  - button "User interface" [ref=e129] [cursor=pointer]:
                    - generic [ref=e130]: User interface
                    - img [ref=e131]
                - listitem [ref=e133]:
                  - button "Development" [ref=e134] [cursor=pointer]:
                    - generic [ref=e135]: Development
                    - img [ref=e136]
                - listitem [ref=e138]:
                  - button "Media" [ref=e139] [cursor=pointer]:
                    - generic [ref=e140]: Media
                    - img [ref=e141]
                - listitem [ref=e143]:
                  - button "Search and metadata" [ref=e144] [cursor=pointer]:
                    - generic [ref=e145]: Search and metadata
                    - img [ref=e146]
                - listitem [ref=e148]:
                  - button "Region and language" [ref=e149] [cursor=pointer]:
                    - generic [ref=e150]: Region and language
                    - img [ref=e151]
                - listitem [ref=e153]:
                  - button "Web services" [ref=e154] [cursor=pointer]:
                    - generic [ref=e155]: Web services
                    - img [ref=e156]
          - listitem [ref=e158]:
            - link "People" [ref=e159] [cursor=pointer]:
              - /url: /admin/people
              - img [ref=e160]
              - generic [ref=e162]: People
          - listitem [ref=e163]:
            - button "Extend Reports" [ref=e164] [cursor=pointer]:
              - img [ref=e165]
              - generic [ref=e167]: Extend
              - generic [ref=e168]: Reports
              - img [ref=e169]
            - generic [ref=e171]:
              - link "Reports" [ref=e172] [cursor=pointer]:
                - /url: /admin/reports
                - generic [ref=e173]: Reports
              - list [ref=e174]:
                - listitem [ref=e175]:
                  - link "Status report" [ref=e176] [cursor=pointer]:
                    - /url: /admin/reports/status
                    - generic [ref=e177]: Status report
                - listitem [ref=e178]:
                  - link "Available updates" [ref=e179] [cursor=pointer]:
                    - /url: /admin/reports/updates
                    - generic [ref=e180]: Available updates
                - listitem [ref=e181]:
                  - link "Recent log messages" [ref=e182] [cursor=pointer]:
                    - /url: /admin/reports/dblog
                    - generic [ref=e183]: Recent log messages
                - listitem [ref=e184]:
                  - link "Field list" [ref=e185] [cursor=pointer]:
                    - /url: /admin/reports/fields
                    - generic [ref=e186]: Field list
                - listitem [ref=e187]:
                  - link "Top 'access denied' errors" [ref=e188] [cursor=pointer]:
                    - /url: /admin/reports/access-denied
                    - generic [ref=e189]: Top 'access denied' errors
                - listitem [ref=e190]:
                  - link "Top 'page not found' errors" [ref=e191] [cursor=pointer]:
                    - /url: /admin/reports/page-not-found
                    - generic [ref=e192]: Top 'page not found' errors
                - listitem [ref=e193]:
                  - link "Views plugins" [ref=e194] [cursor=pointer]:
                    - /url: /admin/reports/views-plugins
                    - generic [ref=e195]: Views plugins
          - listitem [ref=e196]:
            - link "Announcements" [ref=e197] [cursor=pointer]:
              - /url: /admin/announcements_feed
              - img [ref=e198]
              - generic [ref=e202]: Announcements
    - generic [ref=e203]:
      - generic [ref=e204]:
        - heading "Help" [level=3] [ref=e205]
        - list [ref=e206]:
          - listitem [ref=e207]:
            - link "Help" [ref=e208] [cursor=pointer]:
              - /url: /admin/help
              - img [ref=e209]
              - generic [ref=e211]: Help
      - generic [ref=e212]:
        - heading "User" [level=3] [ref=e213]
        - list [ref=e214]:
          - listitem [ref=e215]:
            - button "Extend admin" [ref=e216] [cursor=pointer]:
              - img [ref=e217]
              - generic [ref=e219]: Extend
              - generic [ref=e220]: admin
              - img [ref=e221]
            - generic [ref=e223]:
              - link "admin" [ref=e224] [cursor=pointer]:
                - /url: /user
                - generic [ref=e225]: admin
              - list [ref=e226]:
                - listitem [ref=e227]:
                  - link "View profile" [ref=e228] [cursor=pointer]:
                    - /url: /user
                    - generic [ref=e229]: View profile
                - listitem [ref=e230]:
                  - link "Edit profile" [ref=e231] [cursor=pointer]:
                    - /url: /user/edit
                    - generic [ref=e232]: Edit profile
                - listitem [ref=e233]:
                  - link "Log out" [ref=e234] [cursor=pointer]:
                    - /url: /user/logout?token=eo89YCrv2zKQc3N32SW-D_UUgmk2ti5UPbpdR-kaC2Q
                    - generic [ref=e235]: Log out
      - button "Collapse sidebar" [expanded] [ref=e236] [cursor=pointer]:
        - img [ref=e237]
        - generic [ref=e239]: Collapse sidebar
  - navigation "Breadcrumb" [ref=e243]:
    - heading "Breadcrumb" [level=2] [ref=e244]
    - list [ref=e245]:
      - listitem:
        - link "Back to site" [ref=e246] [cursor=pointer]:
          - /url: /
      - listitem:
        - link "Administration" [ref=e247] [cursor=pointer]:
          - /url: /admin
      - listitem:
        - text: /
        - link "Configuration" [ref=e248] [cursor=pointer]:
          - /url: /admin/config
      - listitem:
        - text: /
        - link "System" [ref=e249] [cursor=pointer]:
          - /url: /admin/config/system
  - generic [ref=e250]:
    - banner [ref=e251]:
      - heading "Basic site settings" [level=1] [ref=e255]
    - main [ref=e257]:
      - generic [ref=e261]:
        - group [ref=e262]:
          - button "Site details" [expanded] [ref=e263] [cursor=pointer]: Site details
          - generic [ref=e264]:
            - generic [ref=e265]:
              - generic [ref=e266] [cursor=pointer]: Site name *
              - textbox "Site name *" [ref=e267]: Drupal 12
            - generic [ref=e268]:
              - generic [ref=e269] [cursor=pointer]: Slogan
              - textbox "Slogan" [ref=e270]
              - generic [ref=e271]: How this is used depends on your site's theme.
            - generic [ref=e272]:
              - generic [ref=e273] [cursor=pointer]: Email address *
              - textbox "Email address *" [ref=e274]: mike.gifford@civicactions.com
              - generic [ref=e275]:
                - text: The
                - emphasis [ref=e276]: From
                - text: address in automated emails sent during registration and new password requests, and other notifications. (Use an address ending in your site's domain to help prevent this email being flagged as spam.)
        - group [ref=e277]:
          - button "Front page" [expanded] [ref=e278] [cursor=pointer]: Front page
          - generic [ref=e280]:
            - generic [ref=e281] [cursor=pointer]: Default front page *
            - text: http://localhost
            - textbox "Default front page *" [ref=e282]: /node
            - generic [ref=e283]: Specify a relative URL to display as the front page.
        - group [ref=e284]:
          - button "Error pages" [expanded] [ref=e285] [cursor=pointer]: Error pages
          - generic [ref=e286]:
            - generic [ref=e287]:
              - generic [ref=e288] [cursor=pointer]: Default 403 (access denied) page
              - textbox "Default 403 (access denied) page" [ref=e289]
              - generic [ref=e290]: This page is displayed when the requested document is denied to the current user. Leave blank to display a generic "access denied" page.
            - generic [ref=e291]:
              - generic [ref=e292] [cursor=pointer]: Default 404 (not found) page
              - textbox "Default 404 (not found) page" [ref=e293]
              - generic [ref=e294]: This page is displayed when no other content matches the requested document. Leave blank to display a generic "page not found" page.
        - button "Save configuration" [ref=e296] [cursor=pointer]
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