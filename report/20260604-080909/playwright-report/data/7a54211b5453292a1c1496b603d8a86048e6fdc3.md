# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/people.spec.ts >> people-roles >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid/vrt/people.spec.ts/people-roles.png, writing actual.
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
          - link "People" [ref=e17] [cursor=pointer]:
            - /url: /admin/people
    - list [ref=e19]:
      - listitem [ref=e20]:
        - link "+Add role" [ref=e21] [cursor=pointer]:
          - /url: /admin/people/roles/add
  - generic [ref=e22]:
    - banner [ref=e23]:
      - heading "Roles" [level=1] [ref=e27]
    - generic [ref=e31]:
      - heading "Primary tabs" [level=2] [ref=e32]
      - navigation "Primary tabs" [ref=e33]:
        - list [ref=e34]:
          - listitem [ref=e35]:
            - link "List" [ref=e36] [cursor=pointer]:
              - /url: /admin/people
          - listitem [ref=e37]:
            - link "Permissions" [ref=e38] [cursor=pointer]:
              - /url: /admin/people/permissions
          - listitem [ref=e39]:
            - link "Roles" [ref=e40] [cursor=pointer]:
              - /url: /admin/people/roles
          - listitem [ref=e41]:
            - link "Role settings" [ref=e42] [cursor=pointer]:
              - /url: /admin/people/role-settings
    - main [ref=e44]:
      - complementary [ref=e48]:
        - paragraph [ref=e49]:
          - text: A role defines a group of users that have certain privileges. These privileges are defined on the
          - link "Permissions page" [ref=e50] [cursor=pointer]:
            - /url: /admin/people/permissions
          - text: . Here, you can define the names and the display sort order of the roles on your site. It is recommended to order roles from least permissive (for example, Anonymous user) to most permissive (for example, Administrator user). Users who are not logged in have the Anonymous user role. Users who are logged in have the Authenticated user role, plus any other roles granted to their user account.
      - generic [ref=e53]:
        - generic [ref=e54]:
          - button "Show row weights" [ref=e56] [cursor=pointer]:
            - generic [ref=e57]: Show row weights
          - table [ref=e59]:
            - rowgroup [ref=e60]:
              - row "Name Operations" [ref=e61]:
                - columnheader "Name" [ref=e62]
                - columnheader "Operations" [ref=e63]
            - rowgroup [ref=e64]:
              - row "Anonymous user Edit Anonymous user List additional actions" [ref=e65]:
                - cell "Anonymous user" [ref=e66]:
                  - generic [ref=e67]:
                    - link "Change order" [ref=e68]:
                      - /url: "#"
                    - generic [ref=e69]: Anonymous user
                - cell "Edit Anonymous user List additional actions" [ref=e70]:
                  - list [ref=e73]:
                    - listitem [ref=e74]:
                      - link "Edit Anonymous user" [ref=e75] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/anonymous?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e76]:
                        - generic [ref=e77]: List additional actions
              - row "Authenticated user Edit Authenticated user List additional actions" [ref=e78]:
                - cell "Authenticated user" [ref=e79]:
                  - generic [ref=e80]:
                    - link "Change order" [ref=e81]:
                      - /url: "#"
                    - generic [ref=e82]: Authenticated user
                - cell "Edit Authenticated user List additional actions" [ref=e83]:
                  - list [ref=e86]:
                    - listitem [ref=e87]:
                      - link "Edit Authenticated user" [ref=e88] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/authenticated?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e89]:
                        - generic [ref=e90]: List additional actions
              - row "Content editor Edit Content editor List additional actions" [ref=e91]:
                - cell "Content editor" [ref=e92]:
                  - generic [ref=e93]:
                    - link "Change order" [ref=e94]:
                      - /url: "#"
                    - generic [ref=e95]: Content editor
                - cell "Edit Content editor List additional actions" [ref=e96]:
                  - list [ref=e99]:
                    - listitem [ref=e100]:
                      - link "Edit Content editor" [ref=e101] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/content_editor?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e102]:
                        - generic [ref=e103]: List additional actions
              - row "Administrator Edit Administrator List additional actions" [ref=e104]:
                - cell "Administrator" [ref=e105]:
                  - generic [ref=e106]:
                    - link "Change order" [ref=e107]:
                      - /url: "#"
                    - generic [ref=e108]: Administrator
                - cell "Edit Administrator List additional actions" [ref=e109]:
                  - list [ref=e112]:
                    - listitem [ref=e113]:
                      - link "Edit Administrator" [ref=e114] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/administrator?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e115]:
                        - generic [ref=e116]: List additional actions
        - button "Save" [ref=e118] [cursor=pointer]
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid/vrt/people.spec.ts/people-roles.png, writing actual.
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