# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/people.spec.ts >> people-roles >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 375px by 1104px, received 375px by 1112px. 46120 pixels (ratio 0.12 of all image pixels) are different.

  Snapshot: people-roles.png

Call log:
  - Expect "toHaveScreenshot(people-roles.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 375px by 1104px, received 375px by 1112px. 46120 pixels (ratio 0.12 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 375px by 1104px, received 375px by 1112px. 46120 pixels (ratio 0.12 of all image pixels) are different.

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
            - link "People" [ref=e24] [cursor=pointer]:
              - /url: /admin/people
      - generic [ref=e25]:
        - heading "Roles" [level=1] [ref=e27]
        - generic [ref=e28]:
          - heading "Primary tabs" [level=2] [ref=e29]
          - navigation "Primary tabs" [ref=e30]:
            - list [ref=e31]:
              - listitem [ref=e32]:
                - link "Roles" [ref=e33] [cursor=pointer]:
                  - /url: /admin/people/roles
                - button "Tabs display toggle" [ref=e34]:
                  - img [ref=e36]
    - generic [ref=e39]:
      - complementary [ref=e42]:
        - paragraph [ref=e43]:
          - text: A role defines a group of users that have certain privileges. These privileges are defined on the
          - link "Permissions page" [ref=e44] [cursor=pointer]:
            - /url: /admin/people/permissions
          - text: . Here, you can define the names and the display sort order of the roles on your site. It is recommended to order roles from least permissive (for example, Anonymous user) to most permissive (for example, Administrator user). Users who are not logged in have the Anonymous user role. Users who are logged in have the Authenticated user role, plus any other roles granted to their user account.
      - generic [ref=e45]:
        - list [ref=e47]:
          - listitem [ref=e48]:
            - link "+Add role" [ref=e49] [cursor=pointer]:
              - /url: /admin/people/roles/add
        - generic [ref=e51]:
          - button "Show row weights" [ref=e53] [cursor=pointer]:
            - generic [ref=e54]: Show row weights
          - table [ref=e55]:
            - rowgroup [ref=e56]:
              - row "Name Operations" [ref=e57]:
                - columnheader "Name" [ref=e58]
                - columnheader "Operations" [ref=e59]
            - rowgroup [ref=e60]:
              - row "Anonymous user Edit Anonymous user List additional actions" [ref=e61]:
                - cell "Anonymous user" [ref=e62]:
                  - generic [ref=e63]:
                    - link "Change order" [ref=e64]:
                      - /url: "#"
                    - generic [ref=e65]: Anonymous user
                - cell "Edit Anonymous user List additional actions" [ref=e66]:
                  - list [ref=e69]:
                    - listitem [ref=e70]:
                      - link "Edit Anonymous user" [ref=e71] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/anonymous?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e72]:
                        - generic [ref=e73]: List additional actions
              - row "Authenticated user Edit Authenticated user List additional actions" [ref=e74]:
                - cell "Authenticated user" [ref=e75]:
                  - generic [ref=e76]:
                    - link "Change order" [ref=e77]:
                      - /url: "#"
                    - generic [ref=e78]: Authenticated user
                - cell "Edit Authenticated user List additional actions" [ref=e79]:
                  - list [ref=e82]:
                    - listitem [ref=e83]:
                      - link "Edit Authenticated user" [ref=e84] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/authenticated?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e85]:
                        - generic [ref=e86]: List additional actions
              - row "Content editor Edit Content editor List additional actions" [ref=e87]:
                - cell "Content editor" [ref=e88]:
                  - generic [ref=e89]:
                    - link "Change order" [ref=e90]:
                      - /url: "#"
                    - generic [ref=e91]: Content editor
                - cell "Edit Content editor List additional actions" [ref=e92]:
                  - list [ref=e95]:
                    - listitem [ref=e96]:
                      - link "Edit Content editor" [ref=e97] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/content_editor?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e98]:
                        - generic [ref=e99]: List additional actions
              - row "Administrator Edit Administrator List additional actions" [ref=e100]:
                - cell "Administrator" [ref=e101]:
                  - generic [ref=e102]:
                    - link "Change order" [ref=e103]:
                      - /url: "#"
                    - generic [ref=e104]: Administrator
                - cell "Edit Administrator List additional actions" [ref=e105]:
                  - list [ref=e108]:
                    - listitem [ref=e109]:
                      - link "Edit Administrator" [ref=e110] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/administrator?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e111]:
                        - generic [ref=e112]: List additional actions
          - button "Save" [ref=e114] [cursor=pointer]
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