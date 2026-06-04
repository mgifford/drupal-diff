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

  Expected an image 864px by 2629px, received 799px by 2463px. 86603 pixels (ratio 0.04 of all image pixels) are different.

  Snapshot: structure-views.png

Call log:
  - Expect "toHaveScreenshot(structure-views.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 864px by 2629px, received 799px by 2463px. 86603 pixels (ratio 0.04 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 864px by 2629px, received 799px by 2463px. 86603 pixels (ratio 0.04 of all image pixels) are different.

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
            - button "Tabs display toggle" [ref=e37]:
              - img [ref=e38]
    - main [ref=e41]:
      - generic [ref=e45]:
        - generic [ref=e47]:
          - generic [ref=e48]: Filter
          - searchbox "Enter a part of the view name, machine name, description, or display path to filter by." [ref=e49]
        - generic [ref=e50]:
          - heading "Enabled" [level=2] [ref=e51]
          - table [ref=e52]:
            - rowgroup [ref=e53]:
              - row "View name Machine name Description Displays Operations" [ref=e54]:
                - columnheader "View name" [ref=e55]
                - columnheader "Machine name" [ref=e56]
                - columnheader "Description" [ref=e57]
                - columnheader "Displays" [ref=e58]
                - columnheader "Operations" [ref=e59]
            - rowgroup [ref=e60]:
              - row "Content content Find and manage content. Page (/admin/content) Edit List additional actions" [ref=e61]:
                - cell "Content" [ref=e62]:
                  - strong [ref=e63]: Content
                - cell "content" [ref=e64]
                - cell "Find and manage content." [ref=e65]
                - cell "Page (/admin/content)" [ref=e66]:
                  - list [ref=e67]:
                    - listitem [ref=e68]:
                      - text: Page
                      - generic [ref=e69]:
                        - text: (
                        - link "/admin/content" [ref=e70] [cursor=pointer]:
                          - /url: /admin/content
                        - text: )
                - cell "Edit List additional actions" [ref=e71]:
                  - list [ref=e74]:
                    - listitem [ref=e75]:
                      - link "Edit" [ref=e76] [cursor=pointer]:
                        - /url: /admin/structure/views/view/content
                    - listitem:
                      - button "List additional actions" [ref=e77]:
                        - generic [ref=e78]: List additional actions
              - row "Content blocks block_content Find and manage content blocks. Page (/admin/content/block) Edit List additional actions" [ref=e79]:
                - cell "Content blocks" [ref=e80]:
                  - strong [ref=e81]: Content blocks
                - cell "block_content" [ref=e82]
                - cell "Find and manage content blocks." [ref=e83]
                - cell "Page (/admin/content/block)" [ref=e84]:
                  - list [ref=e85]:
                    - listitem [ref=e86]:
                      - text: Page
                      - generic [ref=e87]:
                        - text: (
                        - link "/admin/content/block" [ref=e88] [cursor=pointer]:
                          - /url: /admin/content/block
                        - text: )
                - cell "Edit List additional actions" [ref=e89]:
                  - list [ref=e92]:
                    - listitem [ref=e93]:
                      - link "Edit" [ref=e94] [cursor=pointer]:
                        - /url: /admin/structure/views/view/block_content
                    - listitem:
                      - button "List additional actions" [ref=e95]:
                        - generic [ref=e96]: List additional actions
              - row "Files files Find and manage files. Page (/admin/content/files/usage/%) Page (/admin/content/files) Edit List additional actions" [ref=e97]:
                - cell "Files" [ref=e98]:
                  - strong [ref=e99]: Files
                - cell "files" [ref=e100]
                - cell "Find and manage files." [ref=e101]
                - cell "Page (/admin/content/files/usage/%) Page (/admin/content/files)" [ref=e102]:
                  - list [ref=e103]:
                    - listitem [ref=e104]: Page (/admin/content/files/usage/%)
                    - listitem [ref=e105]:
                      - text: Page
                      - generic [ref=e106]:
                        - text: (
                        - link "/admin/content/files" [ref=e107] [cursor=pointer]:
                          - /url: /admin/content/files
                        - text: )
                - cell "Edit List additional actions" [ref=e108]:
                  - list [ref=e111]:
                    - listitem [ref=e112]:
                      - link "Edit" [ref=e113] [cursor=pointer]:
                        - /url: /admin/structure/views/view/files
                    - listitem:
                      - button "List additional actions" [ref=e114]:
                        - generic [ref=e115]: List additional actions
              - row "Frontpage frontpage All content promoted to the front page. Feed (/rss.xml) Page (/node) Edit List additional actions" [ref=e116]:
                - cell "Frontpage" [ref=e117]:
                  - strong [ref=e118]: Frontpage
                - cell "frontpage" [ref=e119]
                - cell "All content promoted to the front page." [ref=e120]
                - cell "Feed (/rss.xml) Page (/node)" [ref=e121]:
                  - list [ref=e122]:
                    - listitem [ref=e123]:
                      - text: Feed
                      - generic [ref=e124]:
                        - text: (
                        - link "/rss.xml" [ref=e125] [cursor=pointer]:
                          - /url: /rss.xml
                        - text: )
                    - listitem [ref=e126]:
                      - text: Page
                      - generic [ref=e127]:
                        - text: (
                        - link "/node" [ref=e128] [cursor=pointer]:
                          - /url: /node
                        - text: )
                - cell "Edit List additional actions" [ref=e129]:
                  - list [ref=e132]:
                    - listitem [ref=e133]:
                      - link "Edit" [ref=e134] [cursor=pointer]:
                        - /url: /admin/structure/views/view/frontpage
                    - listitem:
                      - button "List additional actions" [ref=e135]:
                        - generic [ref=e136]: List additional actions
              - row "People user_admin_people Find and manage people interacting with your site. Page (/admin/people) Edit List additional actions" [ref=e137]:
                - cell "People" [ref=e138]:
                  - strong [ref=e139]: People
                - cell "user_admin_people" [ref=e140]
                - cell "Find and manage people interacting with your site." [ref=e141]
                - cell "Page (/admin/people)" [ref=e142]:
                  - list [ref=e143]:
                    - listitem [ref=e144]:
                      - text: Page
                      - generic [ref=e145]:
                        - text: (
                        - link "/admin/people" [ref=e146] [cursor=pointer]:
                          - /url: /admin/people
                        - text: )
                - cell "Edit List additional actions" [ref=e147]:
                  - list [ref=e150]:
                    - listitem [ref=e151]:
                      - link "Edit" [ref=e152] [cursor=pointer]:
                        - /url: /admin/structure/views/view/user_admin_people
                    - listitem:
                      - button "List additional actions" [ref=e153]:
                        - generic [ref=e154]: List additional actions
              - row "Recent content content_recent Recent content. Block Edit List additional actions" [ref=e155]:
                - cell "Recent content" [ref=e156]:
                  - strong [ref=e157]: Recent content
                - cell "content_recent" [ref=e158]
                - cell "Recent content." [ref=e159]
                - cell "Block" [ref=e160]:
                  - list [ref=e161]:
                    - listitem [ref=e162]: Block
                - cell "Edit List additional actions" [ref=e163]:
                  - list [ref=e166]:
                    - listitem [ref=e167]:
                      - link "Edit" [ref=e168] [cursor=pointer]:
                        - /url: /admin/structure/views/view/content_recent
                    - listitem:
                      - button "List additional actions" [ref=e169]:
                        - generic [ref=e170]: List additional actions
              - row "Taxonomy term taxonomy_term Content belonging to a certain taxonomy term. Feed (/taxonomy/term/%/feed) Page (/taxonomy/term/%) Edit List additional actions" [ref=e171]:
                - cell "Taxonomy term" [ref=e172]:
                  - strong [ref=e173]: Taxonomy term
                - cell "taxonomy_term" [ref=e174]
                - cell "Content belonging to a certain taxonomy term." [ref=e175]
                - cell "Feed (/taxonomy/term/%/feed) Page (/taxonomy/term/%)" [ref=e176]:
                  - list [ref=e177]:
                    - listitem [ref=e178]: Feed (/taxonomy/term/%/feed)
                    - listitem [ref=e179]: Page (/taxonomy/term/%)
                - cell "Edit List additional actions" [ref=e180]:
                  - list [ref=e183]:
                    - listitem [ref=e184]:
                      - link "Edit" [ref=e185] [cursor=pointer]:
                        - /url: /admin/structure/views/view/taxonomy_term
                    - listitem:
                      - button "List additional actions" [ref=e186]:
                        - generic [ref=e187]: List additional actions
              - row "Watchdog watchdog Recent log messages Page (/admin/reports/dblog) Edit List additional actions" [ref=e188]:
                - cell "Watchdog" [ref=e189]:
                  - strong [ref=e190]: Watchdog
                - cell "watchdog" [ref=e191]
                - cell "Recent log messages" [ref=e192]
                - cell "Page (/admin/reports/dblog)" [ref=e193]:
                  - list [ref=e194]:
                    - listitem [ref=e195]:
                      - text: Page
                      - generic [ref=e196]:
                        - text: (
                        - link "/admin/reports/dblog" [ref=e197] [cursor=pointer]:
                          - /url: /admin/reports/dblog
                        - text: )
                - cell "Edit List additional actions" [ref=e198]:
                  - list [ref=e201]:
                    - listitem [ref=e202]:
                      - link "Edit" [ref=e203] [cursor=pointer]:
                        - /url: /admin/structure/views/view/watchdog
                    - listitem:
                      - button "List additional actions" [ref=e204]:
                        - generic [ref=e205]: List additional actions
              - row "Who's new who_s_new Shows a list of the newest user accounts on the site. Block Edit List additional actions" [ref=e206]:
                - cell "Who's new" [ref=e207]:
                  - strong [ref=e208]: Who's new
                - cell "who_s_new" [ref=e209]
                - cell "Shows a list of the newest user accounts on the site." [ref=e210]
                - cell "Block" [ref=e211]:
                  - list [ref=e212]:
                    - listitem [ref=e213]: Block
                - cell "Edit List additional actions" [ref=e214]:
                  - list [ref=e217]:
                    - listitem [ref=e218]:
                      - link "Edit" [ref=e219] [cursor=pointer]:
                        - /url: /admin/structure/views/view/who_s_new
                    - listitem:
                      - button "List additional actions" [ref=e220]:
                        - generic [ref=e221]: List additional actions
              - row "Who's online block who_s_online Shows the user names of the most recently active users, and the total number of active users. Block Edit List additional actions" [ref=e222]:
                - cell "Who's online block" [ref=e223]:
                  - strong [ref=e224]: Who's online block
                - cell "who_s_online" [ref=e225]
                - cell "Shows the user names of the most recently active users, and the total number of active users." [ref=e226]
                - cell "Block" [ref=e227]:
                  - list [ref=e228]:
                    - listitem [ref=e229]: Block
                - cell "Edit List additional actions" [ref=e230]:
                  - list [ref=e233]:
                    - listitem [ref=e234]:
                      - link "Edit" [ref=e235] [cursor=pointer]:
                        - /url: /admin/structure/views/view/who_s_online
                    - listitem:
                      - button "List additional actions" [ref=e236]:
                        - generic [ref=e237]: List additional actions
        - generic [ref=e238]:
          - heading "Disabled" [level=2] [ref=e239]
          - table [ref=e240]:
            - rowgroup [ref=e241]:
              - row "View name Machine name Description Displays Operations" [ref=e242]:
                - columnheader "View name" [ref=e243]
                - columnheader "Machine name" [ref=e244]
                - columnheader "Description" [ref=e245]
                - columnheader "Displays" [ref=e246]
                - columnheader "Operations" [ref=e247]
            - rowgroup [ref=e248]:
              - row "Archive archive All content, by month. Block Page (/archive) Enable List additional actions" [ref=e249]:
                - cell "Archive" [ref=e250]:
                  - strong [ref=e251]: Archive
                - cell "archive" [ref=e252]
                - cell "All content, by month." [ref=e253]
                - cell "Block Page (/archive)" [ref=e254]:
                  - list [ref=e255]:
                    - listitem [ref=e256]: Block
                    - listitem [ref=e257]: Page (/archive)
                - cell "Enable List additional actions" [ref=e258]:
                  - list [ref=e261]:
                    - listitem [ref=e262]:
                      - link "Enable" [ref=e263] [cursor=pointer]:
                        - /url: /admin/structure/views/view/archive/enable?token=Do-NkwCJW_x_1leaeQuj2DpYHatlYhAHXcveu_uD-TA
                    - listitem:
                      - button "List additional actions" [ref=e264]:
                        - generic [ref=e265]: List additional actions
              - row "Glossary glossary All content, by letter. Page (/glossary) Enable List additional actions" [ref=e266]:
                - cell "Glossary" [ref=e267]:
                  - strong [ref=e268]: Glossary
                - cell "glossary" [ref=e269]
                - cell "All content, by letter." [ref=e270]
                - cell "Page (/glossary)" [ref=e271]:
                  - list [ref=e272]:
                    - listitem [ref=e273]: Page (/glossary)
                - cell "Enable List additional actions" [ref=e274]:
                  - list [ref=e277]:
                    - listitem [ref=e278]:
                      - link "Enable" [ref=e279] [cursor=pointer]:
                        - /url: /admin/structure/views/view/glossary/enable?token=Ab2sv-nGmEJopW4eRxaZk-70fn9FpU4v27WeGZO9a6o
                    - listitem:
                      - button "List additional actions" [ref=e280]:
                        - generic [ref=e281]: List additional actions
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