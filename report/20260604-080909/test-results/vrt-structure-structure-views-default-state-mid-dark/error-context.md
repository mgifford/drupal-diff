# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-views >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid-dark/vrt/structure.spec.ts/structure-views.png, writing actual.
```

# Page snapshot

```yaml
- generic [active] [ref=e1]:
  - link "Skip to main content" [ref=e2] [cursor=pointer]:
    - /url: "#main-content"
  - button "Expand sidebar" [ref=e5] [cursor=pointer]:
    - img [ref=e6]
    - generic [ref=e8]: Expand sidebar
  - generic [ref=e10]:
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
          - link "Structure" [ref=e17] [cursor=pointer]:
            - /url: /admin/structure
    - list [ref=e19]:
      - listitem [ref=e20]:
        - link "+Add view" [ref=e21] [cursor=pointer]:
          - /url: /admin/structure/views/add
  - generic [ref=e22]:
    - banner [ref=e23]:
      - heading "Views" [level=1] [ref=e27]
    - generic [ref=e31]:
      - heading "Primary tabs" [level=2] [ref=e32]
      - navigation "Primary tabs" [ref=e33]:
        - list [ref=e34]:
          - listitem [ref=e35]:
            - link "List" [ref=e36] [cursor=pointer]:
              - /url: /admin/structure/views
          - listitem [ref=e37]:
            - link "Settings" [ref=e38] [cursor=pointer]:
              - /url: /admin/structure/views/settings
    - main [ref=e40]:
      - generic [ref=e44]:
        - generic [ref=e46]:
          - generic [ref=e47]: Filter
          - searchbox "Enter a part of the view name, machine name, description, or display path to filter by." [ref=e48]
        - generic [ref=e49]:
          - heading "Enabled" [level=2] [ref=e50]
          - table [ref=e51]:
            - rowgroup [ref=e52]:
              - row "View name Machine name Description Displays Operations" [ref=e53]:
                - columnheader "View name" [ref=e54]
                - columnheader "Machine name" [ref=e55]
                - columnheader "Description" [ref=e56]
                - columnheader "Displays" [ref=e57]
                - columnheader "Operations" [ref=e58]
            - rowgroup [ref=e59]:
              - row "Content content Find and manage content. Page (/admin/content) Edit List additional actions" [ref=e60]:
                - cell "Content" [ref=e61]:
                  - strong [ref=e62]: Content
                - cell "content" [ref=e63]
                - cell "Find and manage content." [ref=e64]
                - cell "Page (/admin/content)" [ref=e65]:
                  - list [ref=e66]:
                    - listitem [ref=e67]:
                      - text: Page
                      - generic [ref=e68]:
                        - text: (
                        - link "/admin/content" [ref=e69] [cursor=pointer]:
                          - /url: /admin/content
                        - text: )
                - cell "Edit List additional actions" [ref=e70]:
                  - list [ref=e73]:
                    - listitem [ref=e74]:
                      - link "Edit" [ref=e75] [cursor=pointer]:
                        - /url: /admin/structure/views/view/content
                    - listitem:
                      - button "List additional actions" [ref=e76]:
                        - generic [ref=e77]: List additional actions
              - row "Content blocks block_content Find and manage content blocks. Page (/admin/content/block) Edit List additional actions" [ref=e78]:
                - cell "Content blocks" [ref=e79]:
                  - strong [ref=e80]: Content blocks
                - cell "block_content" [ref=e81]
                - cell "Find and manage content blocks." [ref=e82]
                - cell "Page (/admin/content/block)" [ref=e83]:
                  - list [ref=e84]:
                    - listitem [ref=e85]:
                      - text: Page
                      - generic [ref=e86]:
                        - text: (
                        - link "/admin/content/block" [ref=e87] [cursor=pointer]:
                          - /url: /admin/content/block
                        - text: )
                - cell "Edit List additional actions" [ref=e88]:
                  - list [ref=e91]:
                    - listitem [ref=e92]:
                      - link "Edit" [ref=e93] [cursor=pointer]:
                        - /url: /admin/structure/views/view/block_content
                    - listitem:
                      - button "List additional actions" [ref=e94]:
                        - generic [ref=e95]: List additional actions
              - row "Files files Find and manage files. Page (/admin/content/files/usage/%) Page (/admin/content/files) Edit List additional actions" [ref=e96]:
                - cell "Files" [ref=e97]:
                  - strong [ref=e98]: Files
                - cell "files" [ref=e99]
                - cell "Find and manage files." [ref=e100]
                - cell "Page (/admin/content/files/usage/%) Page (/admin/content/files)" [ref=e101]:
                  - list [ref=e102]:
                    - listitem [ref=e103]: Page (/admin/content/files/usage/%)
                    - listitem [ref=e104]:
                      - text: Page
                      - generic [ref=e105]:
                        - text: (
                        - link "/admin/content/files" [ref=e106] [cursor=pointer]:
                          - /url: /admin/content/files
                        - text: )
                - cell "Edit List additional actions" [ref=e107]:
                  - list [ref=e110]:
                    - listitem [ref=e111]:
                      - link "Edit" [ref=e112] [cursor=pointer]:
                        - /url: /admin/structure/views/view/files
                    - listitem:
                      - button "List additional actions" [ref=e113]:
                        - generic [ref=e114]: List additional actions
              - row "Frontpage frontpage All content promoted to the front page. Feed (/rss.xml) Page (/node) Edit List additional actions" [ref=e115]:
                - cell "Frontpage" [ref=e116]:
                  - strong [ref=e117]: Frontpage
                - cell "frontpage" [ref=e118]
                - cell "All content promoted to the front page." [ref=e119]
                - cell "Feed (/rss.xml) Page (/node)" [ref=e120]:
                  - list [ref=e121]:
                    - listitem [ref=e122]:
                      - text: Feed
                      - generic [ref=e123]:
                        - text: (
                        - link "/rss.xml" [ref=e124] [cursor=pointer]:
                          - /url: /rss.xml
                        - text: )
                    - listitem [ref=e125]:
                      - text: Page
                      - generic [ref=e126]:
                        - text: (
                        - link "/node" [ref=e127] [cursor=pointer]:
                          - /url: /node
                        - text: )
                - cell "Edit List additional actions" [ref=e128]:
                  - list [ref=e131]:
                    - listitem [ref=e132]:
                      - link "Edit" [ref=e133] [cursor=pointer]:
                        - /url: /admin/structure/views/view/frontpage
                    - listitem:
                      - button "List additional actions" [ref=e134]:
                        - generic [ref=e135]: List additional actions
              - row "People user_admin_people Find and manage people interacting with your site. Page (/admin/people) Edit List additional actions" [ref=e136]:
                - cell "People" [ref=e137]:
                  - strong [ref=e138]: People
                - cell "user_admin_people" [ref=e139]
                - cell "Find and manage people interacting with your site." [ref=e140]
                - cell "Page (/admin/people)" [ref=e141]:
                  - list [ref=e142]:
                    - listitem [ref=e143]:
                      - text: Page
                      - generic [ref=e144]:
                        - text: (
                        - link "/admin/people" [ref=e145] [cursor=pointer]:
                          - /url: /admin/people
                        - text: )
                - cell "Edit List additional actions" [ref=e146]:
                  - list [ref=e149]:
                    - listitem [ref=e150]:
                      - link "Edit" [ref=e151] [cursor=pointer]:
                        - /url: /admin/structure/views/view/user_admin_people
                    - listitem:
                      - button "List additional actions" [ref=e152]:
                        - generic [ref=e153]: List additional actions
              - row "Recent content content_recent Recent content. Block Edit List additional actions" [ref=e154]:
                - cell "Recent content" [ref=e155]:
                  - strong [ref=e156]: Recent content
                - cell "content_recent" [ref=e157]
                - cell "Recent content." [ref=e158]
                - cell "Block" [ref=e159]:
                  - list [ref=e160]:
                    - listitem [ref=e161]: Block
                - cell "Edit List additional actions" [ref=e162]:
                  - list [ref=e165]:
                    - listitem [ref=e166]:
                      - link "Edit" [ref=e167] [cursor=pointer]:
                        - /url: /admin/structure/views/view/content_recent
                    - listitem:
                      - button "List additional actions" [ref=e168]:
                        - generic [ref=e169]: List additional actions
              - row "Taxonomy term taxonomy_term Content belonging to a certain taxonomy term. Feed (/taxonomy/term/%/feed) Page (/taxonomy/term/%) Edit List additional actions" [ref=e170]:
                - cell "Taxonomy term" [ref=e171]:
                  - strong [ref=e172]: Taxonomy term
                - cell "taxonomy_term" [ref=e173]
                - cell "Content belonging to a certain taxonomy term." [ref=e174]
                - cell "Feed (/taxonomy/term/%/feed) Page (/taxonomy/term/%)" [ref=e175]:
                  - list [ref=e176]:
                    - listitem [ref=e177]: Feed (/taxonomy/term/%/feed)
                    - listitem [ref=e178]: Page (/taxonomy/term/%)
                - cell "Edit List additional actions" [ref=e179]:
                  - list [ref=e182]:
                    - listitem [ref=e183]:
                      - link "Edit" [ref=e184] [cursor=pointer]:
                        - /url: /admin/structure/views/view/taxonomy_term
                    - listitem:
                      - button "List additional actions" [ref=e185]:
                        - generic [ref=e186]: List additional actions
              - row "Watchdog watchdog Recent log messages Page (/admin/reports/dblog) Edit List additional actions" [ref=e187]:
                - cell "Watchdog" [ref=e188]:
                  - strong [ref=e189]: Watchdog
                - cell "watchdog" [ref=e190]
                - cell "Recent log messages" [ref=e191]
                - cell "Page (/admin/reports/dblog)" [ref=e192]:
                  - list [ref=e193]:
                    - listitem [ref=e194]:
                      - text: Page
                      - generic [ref=e195]:
                        - text: (
                        - link "/admin/reports/dblog" [ref=e196] [cursor=pointer]:
                          - /url: /admin/reports/dblog
                        - text: )
                - cell "Edit List additional actions" [ref=e197]:
                  - list [ref=e200]:
                    - listitem [ref=e201]:
                      - link "Edit" [ref=e202] [cursor=pointer]:
                        - /url: /admin/structure/views/view/watchdog
                    - listitem:
                      - button "List additional actions" [ref=e203]:
                        - generic [ref=e204]: List additional actions
              - row "Who's new who_s_new Shows a list of the newest user accounts on the site. Block Edit List additional actions" [ref=e205]:
                - cell "Who's new" [ref=e206]:
                  - strong [ref=e207]: Who's new
                - cell "who_s_new" [ref=e208]
                - cell "Shows a list of the newest user accounts on the site." [ref=e209]
                - cell "Block" [ref=e210]:
                  - list [ref=e211]:
                    - listitem [ref=e212]: Block
                - cell "Edit List additional actions" [ref=e213]:
                  - list [ref=e216]:
                    - listitem [ref=e217]:
                      - link "Edit" [ref=e218] [cursor=pointer]:
                        - /url: /admin/structure/views/view/who_s_new
                    - listitem:
                      - button "List additional actions" [ref=e219]:
                        - generic [ref=e220]: List additional actions
              - row "Who's online block who_s_online Shows the user names of the most recently active users, and the total number of active users. Block Edit List additional actions" [ref=e221]:
                - cell "Who's online block" [ref=e222]:
                  - strong [ref=e223]: Who's online block
                - cell "who_s_online" [ref=e224]
                - cell "Shows the user names of the most recently active users, and the total number of active users." [ref=e225]
                - cell "Block" [ref=e226]:
                  - list [ref=e227]:
                    - listitem [ref=e228]: Block
                - cell "Edit List additional actions" [ref=e229]:
                  - list [ref=e232]:
                    - listitem [ref=e233]:
                      - link "Edit" [ref=e234] [cursor=pointer]:
                        - /url: /admin/structure/views/view/who_s_online
                    - listitem:
                      - button "List additional actions" [ref=e235]:
                        - generic [ref=e236]: List additional actions
        - generic [ref=e237]:
          - heading "Disabled" [level=2] [ref=e238]
          - table [ref=e239]:
            - rowgroup [ref=e240]:
              - row "View name Machine name Description Displays Operations" [ref=e241]:
                - columnheader "View name" [ref=e242]
                - columnheader "Machine name" [ref=e243]
                - columnheader "Description" [ref=e244]
                - columnheader "Displays" [ref=e245]
                - columnheader "Operations" [ref=e246]
            - rowgroup [ref=e247]:
              - row "Archive archive All content, by month. Block Page (/archive) Enable List additional actions" [ref=e248]:
                - cell "Archive" [ref=e249]:
                  - strong [ref=e250]: Archive
                - cell "archive" [ref=e251]
                - cell "All content, by month." [ref=e252]
                - cell "Block Page (/archive)" [ref=e253]:
                  - list [ref=e254]:
                    - listitem [ref=e255]: Block
                    - listitem [ref=e256]: Page (/archive)
                - cell "Enable List additional actions" [ref=e257]:
                  - list [ref=e260]:
                    - listitem [ref=e261]:
                      - link "Enable" [ref=e262] [cursor=pointer]:
                        - /url: /admin/structure/views/view/archive/enable?token=OtGYV2_PdzYkeQmFAUYRsD8JaIW6MO2FvbCGKeMw8NA
                    - listitem:
                      - button "List additional actions" [ref=e263]:
                        - generic [ref=e264]: List additional actions
              - row "Glossary glossary All content, by letter. Page (/glossary) Enable List additional actions" [ref=e265]:
                - cell "Glossary" [ref=e266]:
                  - strong [ref=e267]: Glossary
                - cell "glossary" [ref=e268]
                - cell "All content, by letter." [ref=e269]
                - cell "Page (/glossary)" [ref=e270]:
                  - list [ref=e271]:
                    - listitem [ref=e272]: Page (/glossary)
                - cell "Enable List additional actions" [ref=e273]:
                  - list [ref=e276]:
                    - listitem [ref=e277]:
                      - link "Enable" [ref=e278] [cursor=pointer]:
                        - /url: /admin/structure/views/view/glossary/enable?token=WwfVb8TlBwr46oaAJ2OLsYclyaMjfU0yVy_3CyGskoY
                    - listitem:
                      - button "List additional actions" [ref=e279]:
                        - generic [ref=e280]: List additional actions
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid-dark/vrt/structure.spec.ts/structure-views.png, writing actual.
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