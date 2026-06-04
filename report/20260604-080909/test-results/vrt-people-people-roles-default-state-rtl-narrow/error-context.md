# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/people.spec.ts >> people-roles >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow/vrt/people.spec.ts/people-roles.png, writing actual.
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
            - link "Roles" [ref=e36] [cursor=pointer]:
              - /url: /admin/people/roles
            - button "Tabs display toggle" [ref=e37]:
              - img [ref=e38]
    - main [ref=e41]:
      - complementary [ref=e45]:
        - paragraph [ref=e46]:
          - text: A role defines a group of users that have certain privileges. These privileges are defined on the
          - link "Permissions page" [ref=e47] [cursor=pointer]:
            - /url: /admin/people/permissions
          - text: . Here, you can define the names and the display sort order of the roles on your site. It is recommended to order roles from least permissive (for example, Anonymous user) to most permissive (for example, Administrator user). Users who are not logged in have the Anonymous user role. Users who are logged in have the Authenticated user role, plus any other roles granted to their user account.
      - generic [ref=e50]:
        - generic [ref=e51]:
          - button "Show row weights" [ref=e53] [cursor=pointer]:
            - generic [ref=e54]: Show row weights
          - table [ref=e56]:
            - rowgroup [ref=e57]:
              - row "Name Operations" [ref=e58]:
                - columnheader "Name" [ref=e59]
                - columnheader "Operations" [ref=e60]
            - rowgroup [ref=e61]:
              - row "Anonymous user Edit Anonymous user List additional actions" [ref=e62]:
                - cell "Anonymous user" [ref=e63]:
                  - generic [ref=e64]:
                    - link "Change order" [ref=e65]:
                      - /url: "#"
                    - generic [ref=e66]: Anonymous user
                - cell "Edit Anonymous user List additional actions" [ref=e67]:
                  - list [ref=e70]:
                    - listitem [ref=e71]:
                      - link "Edit Anonymous user" [ref=e72] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/anonymous?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e73]:
                        - generic [ref=e74]: List additional actions
              - row "Authenticated user Edit Authenticated user List additional actions" [ref=e75]:
                - cell "Authenticated user" [ref=e76]:
                  - generic [ref=e77]:
                    - link "Change order" [ref=e78]:
                      - /url: "#"
                    - generic [ref=e79]: Authenticated user
                - cell "Edit Authenticated user List additional actions" [ref=e80]:
                  - list [ref=e83]:
                    - listitem [ref=e84]:
                      - link "Edit Authenticated user" [ref=e85] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/authenticated?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e86]:
                        - generic [ref=e87]: List additional actions
              - row "Content editor Edit Content editor List additional actions" [ref=e88]:
                - cell "Content editor" [ref=e89]:
                  - generic [ref=e90]:
                    - link "Change order" [ref=e91]:
                      - /url: "#"
                    - generic [ref=e92]: Content editor
                - cell "Edit Content editor List additional actions" [ref=e93]:
                  - list [ref=e96]:
                    - listitem [ref=e97]:
                      - link "Edit Content editor" [ref=e98] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/content_editor?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e99]:
                        - generic [ref=e100]: List additional actions
              - row "Administrator Edit Administrator List additional actions" [ref=e101]:
                - cell "Administrator" [ref=e102]:
                  - generic [ref=e103]:
                    - link "Change order" [ref=e104]:
                      - /url: "#"
                    - generic [ref=e105]: Administrator
                - cell "Edit Administrator List additional actions" [ref=e106]:
                  - list [ref=e109]:
                    - listitem [ref=e110]:
                      - link "Edit Administrator" [ref=e111] [cursor=pointer]:
                        - /url: /admin/people/roles/manage/administrator?destination=/admin/people/roles
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e112]:
                        - generic [ref=e113]: List additional actions
        - button "Save" [ref=e115] [cursor=pointer]
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow/vrt/people.spec.ts/people-roles.png, writing actual.
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