# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-views >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 864px by 2629px, received 795px by 2178px. 84809 pixels (ratio 0.04 of all image pixels) are different.

  Snapshot: structure-views.png

Call log:
  - Expect "toHaveScreenshot(structure-views.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 864px by 2629px, received 795px by 2178px. 84809 pixels (ratio 0.04 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 864px by 2629px, received 795px by 2178px. 84809 pixels (ratio 0.04 of all image pixels) are different.

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
            - link "Structure" [ref=e24] [cursor=pointer]:
              - /url: /admin/structure
      - generic [ref=e25]:
        - heading "Views" [level=1] [ref=e27]
        - generic [ref=e28]:
          - heading "Primary tabs" [level=2] [ref=e29]
          - navigation "Primary tabs" [ref=e30]:
            - list [ref=e31]:
              - listitem [ref=e32]:
                - link "List" [ref=e33] [cursor=pointer]:
                  - /url: /admin/structure/views
                - button "Tabs display toggle" [ref=e34]:
                  - img [ref=e36]
    - generic [ref=e40]:
      - list [ref=e42]:
        - listitem [ref=e43]:
          - link "+Add view" [ref=e44] [cursor=pointer]:
            - /url: /admin/structure/views/add
      - generic [ref=e46]:
        - generic [ref=e48]:
          - generic [ref=e49]: Filter
          - searchbox "Enter a part of the view name, machine name, description, or display path to filter by." [ref=e50]
        - generic [ref=e51]:
          - heading "Enabled" [level=2] [ref=e52]
          - table [ref=e53]:
            - rowgroup [ref=e54]:
              - row "View name Machine name Description Displays Operations" [ref=e55]:
                - columnheader "View name" [ref=e56]
                - columnheader "Machine name" [ref=e57]
                - columnheader "Description" [ref=e58]
                - columnheader "Displays" [ref=e59]
                - columnheader "Operations" [ref=e60]
            - rowgroup [ref=e61]:
              - row "Content content Find and manage content. Page (/admin/content) Edit List additional actions" [ref=e62]:
                - cell "Content" [ref=e63]:
                  - strong [ref=e64]: Content
                - cell "content" [ref=e65]
                - cell "Find and manage content." [ref=e66]
                - cell "Page (/admin/content)" [ref=e67]:
                  - list [ref=e68]:
                    - listitem [ref=e69]:
                      - text: Page
                      - generic [ref=e70]:
                        - text: (
                        - link "/admin/content" [ref=e71] [cursor=pointer]:
                          - /url: /admin/content
                        - text: )
                - cell "Edit List additional actions" [ref=e72]:
                  - list [ref=e75]:
                    - listitem [ref=e76]:
                      - link "Edit" [ref=e77] [cursor=pointer]:
                        - /url: /admin/structure/views/view/content
                    - listitem:
                      - button "List additional actions" [ref=e78]:
                        - generic [ref=e79]: List additional actions
              - row "Content blocks block_content Find and manage content blocks. Page (/admin/content/block) Edit List additional actions" [ref=e80]:
                - cell "Content blocks" [ref=e81]:
                  - strong [ref=e82]: Content blocks
                - cell "block_content" [ref=e83]
                - cell "Find and manage content blocks." [ref=e84]
                - cell "Page (/admin/content/block)" [ref=e85]:
                  - list [ref=e86]:
                    - listitem [ref=e87]:
                      - text: Page
                      - generic [ref=e88]:
                        - text: (
                        - link "/admin/content/block" [ref=e89] [cursor=pointer]:
                          - /url: /admin/content/block
                        - text: )
                - cell "Edit List additional actions" [ref=e90]:
                  - list [ref=e93]:
                    - listitem [ref=e94]:
                      - link "Edit" [ref=e95] [cursor=pointer]:
                        - /url: /admin/structure/views/view/block_content
                    - listitem:
                      - button "List additional actions" [ref=e96]:
                        - generic [ref=e97]: List additional actions
              - row "Files files Find and manage files. Page (/admin/content/files/usage/%) Page (/admin/content/files) Edit List additional actions" [ref=e98]:
                - cell "Files" [ref=e99]:
                  - strong [ref=e100]: Files
                - cell "files" [ref=e101]
                - cell "Find and manage files." [ref=e102]
                - cell "Page (/admin/content/files/usage/%) Page (/admin/content/files)" [ref=e103]:
                  - list [ref=e104]:
                    - listitem [ref=e105]: Page (/admin/content/files/usage/%)
                    - listitem [ref=e106]:
                      - text: Page
                      - generic [ref=e107]:
                        - text: (
                        - link "/admin/content/files" [ref=e108] [cursor=pointer]:
                          - /url: /admin/content/files
                        - text: )
                - cell "Edit List additional actions" [ref=e109]:
                  - list [ref=e112]:
                    - listitem [ref=e113]:
                      - link "Edit" [ref=e114] [cursor=pointer]:
                        - /url: /admin/structure/views/view/files
                    - listitem:
                      - button "List additional actions" [ref=e115]:
                        - generic [ref=e116]: List additional actions
              - row "Frontpage frontpage All content promoted to the front page. Feed (/rss.xml) Page (/node) Edit List additional actions" [ref=e117]:
                - cell "Frontpage" [ref=e118]:
                  - strong [ref=e119]: Frontpage
                - cell "frontpage" [ref=e120]
                - cell "All content promoted to the front page." [ref=e121]
                - cell "Feed (/rss.xml) Page (/node)" [ref=e122]:
                  - list [ref=e123]:
                    - listitem [ref=e124]:
                      - text: Feed
                      - generic [ref=e125]:
                        - text: (
                        - link "/rss.xml" [ref=e126] [cursor=pointer]:
                          - /url: /rss.xml
                        - text: )
                    - listitem [ref=e127]:
                      - text: Page
                      - generic [ref=e128]:
                        - text: (
                        - link "/node" [ref=e129] [cursor=pointer]:
                          - /url: /node
                        - text: )
                - cell "Edit List additional actions" [ref=e130]:
                  - list [ref=e133]:
                    - listitem [ref=e134]:
                      - link "Edit" [ref=e135] [cursor=pointer]:
                        - /url: /admin/structure/views/view/frontpage
                    - listitem:
                      - button "List additional actions" [ref=e136]:
                        - generic [ref=e137]: List additional actions
              - row "People user_admin_people Find and manage people interacting with your site. Page (/admin/people) Edit List additional actions" [ref=e138]:
                - cell "People" [ref=e139]:
                  - strong [ref=e140]: People
                - cell "user_admin_people" [ref=e141]
                - cell "Find and manage people interacting with your site." [ref=e142]
                - cell "Page (/admin/people)" [ref=e143]:
                  - list [ref=e144]:
                    - listitem [ref=e145]:
                      - text: Page
                      - generic [ref=e146]:
                        - text: (
                        - link "/admin/people" [ref=e147] [cursor=pointer]:
                          - /url: /admin/people
                        - text: )
                - cell "Edit List additional actions" [ref=e148]:
                  - list [ref=e151]:
                    - listitem [ref=e152]:
                      - link "Edit" [ref=e153] [cursor=pointer]:
                        - /url: /admin/structure/views/view/user_admin_people
                    - listitem:
                      - button "List additional actions" [ref=e154]:
                        - generic [ref=e155]: List additional actions
              - row "Recent content content_recent Recent content. Block Edit List additional actions" [ref=e156]:
                - cell "Recent content" [ref=e157]:
                  - strong [ref=e158]: Recent content
                - cell "content_recent" [ref=e159]
                - cell "Recent content." [ref=e160]
                - cell "Block" [ref=e161]:
                  - list [ref=e162]:
                    - listitem [ref=e163]: Block
                - cell "Edit List additional actions" [ref=e164]:
                  - list [ref=e167]:
                    - listitem [ref=e168]:
                      - link "Edit" [ref=e169] [cursor=pointer]:
                        - /url: /admin/structure/views/view/content_recent
                    - listitem:
                      - button "List additional actions" [ref=e170]:
                        - generic [ref=e171]: List additional actions
              - row "Taxonomy term taxonomy_term Content belonging to a certain taxonomy term. Feed (/taxonomy/term/%/feed) Page (/taxonomy/term/%) Edit List additional actions" [ref=e172]:
                - cell "Taxonomy term" [ref=e173]:
                  - strong [ref=e174]: Taxonomy term
                - cell "taxonomy_term" [ref=e175]
                - cell "Content belonging to a certain taxonomy term." [ref=e176]
                - cell "Feed (/taxonomy/term/%/feed) Page (/taxonomy/term/%)" [ref=e177]:
                  - list [ref=e178]:
                    - listitem [ref=e179]: Feed (/taxonomy/term/%/feed)
                    - listitem [ref=e180]: Page (/taxonomy/term/%)
                - cell "Edit List additional actions" [ref=e181]:
                  - list [ref=e184]:
                    - listitem [ref=e185]:
                      - link "Edit" [ref=e186] [cursor=pointer]:
                        - /url: /admin/structure/views/view/taxonomy_term
                    - listitem:
                      - button "List additional actions" [ref=e187]:
                        - generic [ref=e188]: List additional actions
              - row "Watchdog watchdog Recent log messages Page (/admin/reports/dblog) Edit List additional actions" [ref=e189]:
                - cell "Watchdog" [ref=e190]:
                  - strong [ref=e191]: Watchdog
                - cell "watchdog" [ref=e192]
                - cell "Recent log messages" [ref=e193]
                - cell "Page (/admin/reports/dblog)" [ref=e194]:
                  - list [ref=e195]:
                    - listitem [ref=e196]:
                      - text: Page
                      - generic [ref=e197]:
                        - text: (
                        - link "/admin/reports/dblog" [ref=e198] [cursor=pointer]:
                          - /url: /admin/reports/dblog
                        - text: )
                - cell "Edit List additional actions" [ref=e199]:
                  - list [ref=e202]:
                    - listitem [ref=e203]:
                      - link "Edit" [ref=e204] [cursor=pointer]:
                        - /url: /admin/structure/views/view/watchdog
                    - listitem:
                      - button "List additional actions" [ref=e205]:
                        - generic [ref=e206]: List additional actions
              - row "Who's new who_s_new Shows a list of the newest user accounts on the site. Block Edit List additional actions" [ref=e207]:
                - cell "Who's new" [ref=e208]:
                  - strong [ref=e209]: Who's new
                - cell "who_s_new" [ref=e210]
                - cell "Shows a list of the newest user accounts on the site." [ref=e211]
                - cell "Block" [ref=e212]:
                  - list [ref=e213]:
                    - listitem [ref=e214]: Block
                - cell "Edit List additional actions" [ref=e215]:
                  - list [ref=e218]:
                    - listitem [ref=e219]:
                      - link "Edit" [ref=e220] [cursor=pointer]:
                        - /url: /admin/structure/views/view/who_s_new
                    - listitem:
                      - button "List additional actions" [ref=e221]:
                        - generic [ref=e222]: List additional actions
              - row "Who's online block who_s_online Shows the user names of the most recently active users, and the total number of active users. Block Edit List additional actions" [ref=e223]:
                - cell "Who's online block" [ref=e224]:
                  - strong [ref=e225]: Who's online block
                - cell "who_s_online" [ref=e226]
                - cell "Shows the user names of the most recently active users, and the total number of active users." [ref=e227]
                - cell "Block" [ref=e228]:
                  - list [ref=e229]:
                    - listitem [ref=e230]: Block
                - cell "Edit List additional actions" [ref=e231]:
                  - list [ref=e234]:
                    - listitem [ref=e235]:
                      - link "Edit" [ref=e236] [cursor=pointer]:
                        - /url: /admin/structure/views/view/who_s_online
                    - listitem:
                      - button "List additional actions" [ref=e237]:
                        - generic [ref=e238]: List additional actions
        - generic [ref=e239]:
          - heading "Disabled" [level=2] [ref=e240]
          - table [ref=e241]:
            - rowgroup [ref=e242]:
              - row "View name Machine name Description Displays Operations" [ref=e243]:
                - columnheader "View name" [ref=e244]
                - columnheader "Machine name" [ref=e245]
                - columnheader "Description" [ref=e246]
                - columnheader "Displays" [ref=e247]
                - columnheader "Operations" [ref=e248]
            - rowgroup [ref=e249]:
              - row "Archive archive All content, by month. Block Page (/archive) Enable List additional actions" [ref=e250]:
                - cell "Archive" [ref=e251]:
                  - strong [ref=e252]: Archive
                - cell "archive" [ref=e253]
                - cell "All content, by month." [ref=e254]
                - cell "Block Page (/archive)" [ref=e255]:
                  - list [ref=e256]:
                    - listitem [ref=e257]: Block
                    - listitem [ref=e258]: Page (/archive)
                - cell "Enable List additional actions" [ref=e259]:
                  - list [ref=e262]:
                    - listitem [ref=e263]:
                      - link "Enable" [ref=e264] [cursor=pointer]:
                        - /url: /admin/structure/views/view/archive/enable?token=Owb_GB1TpI7eZlcYYxzI9Mc3Dp3KjhBsiAkQCuhSCKo
                    - listitem:
                      - button "List additional actions" [ref=e265]:
                        - generic [ref=e266]: List additional actions
              - row "Glossary glossary All content, by letter. Page (/glossary) Enable List additional actions" [ref=e267]:
                - cell "Glossary" [ref=e268]:
                  - strong [ref=e269]: Glossary
                - cell "glossary" [ref=e270]
                - cell "All content, by letter." [ref=e271]
                - cell "Page (/glossary)" [ref=e272]:
                  - list [ref=e273]:
                    - listitem [ref=e274]: Page (/glossary)
                - cell "Enable List additional actions" [ref=e275]:
                  - list [ref=e278]:
                    - listitem [ref=e279]:
                      - link "Enable" [ref=e280] [cursor=pointer]:
                        - /url: /admin/structure/views/view/glossary/enable?token=KvSi2ESbS80RkOQedsRg_GhdPtUXgEmoDDB49iGKfUY
                    - listitem:
                      - button "List additional actions" [ref=e281]:
                        - generic [ref=e282]: List additional actions
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