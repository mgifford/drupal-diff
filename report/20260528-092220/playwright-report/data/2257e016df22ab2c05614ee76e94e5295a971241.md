# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/people.spec.ts >> people-list >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 375px by 1367px, received 375px by 1597px. 42705 pixels (ratio 0.08 of all image pixels) are different.

  Snapshot: people-list.png

Call log:
  - Expect "toHaveScreenshot(people-list.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 375px by 1367px, received 375px by 1597px. 42705 pixels (ratio 0.08 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 375px by 1367px, received 375px by 1597px. 42705 pixels (ratio 0.08 of all image pixels) are different.

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
    - list [ref=e18]:
      - listitem [ref=e19]:
        - link "+Add user" [ref=e20] [cursor=pointer]:
          - /url: /admin/people/create
  - generic [ref=e21]:
    - banner [ref=e22]:
      - heading "People" [level=1] [ref=e26]
    - generic [ref=e30]:
      - heading "Primary tabs" [level=2] [ref=e31]
      - navigation "Primary tabs" [ref=e32]:
        - list [ref=e33]:
          - listitem [ref=e34]:
            - link "List" [ref=e35] [cursor=pointer]:
              - /url: /admin/people
            - button "Tabs display toggle" [ref=e36]:
              - img [ref=e37]
    - main [ref=e40]:
      - contentinfo "Error message" [ref=e45]:
        - heading "Error message" [level=2] [ref=e47]
        - list [ref=e49]:
          - listitem [ref=e50]:
            - group [ref=e51]:
              - 'generic "Deprecated function: Using null as an array offset is deprecated, use an empty string instead in Drupal\\Core\\Entity\\ContentEntityBase->hasTranslation() (line 984 of core/lib/Drupal/Core/Entity/ContentEntityBase.php)." [ref=e52]':
                - emphasis [ref=e53]: Deprecated function
                - text: ": Using null as an array offset is deprecated, use an empty string instead in"
                - emphasis [ref=e54]: Drupal\Core\Entity\ContentEntityBase->hasTranslation()
                - text: (line
                - emphasis [ref=e55]: "984"
                - text: of
                - emphasis [ref=e56]: core/lib/Drupal/Core/Entity/ContentEntityBase.php
                - text: ).
          - listitem [ref=e57]:
            - group [ref=e58]:
              - 'generic "Deprecated function: Using null as an array offset is deprecated, use an empty string instead in Drupal\\Core\\Entity\\ContentEntityBase->hasTranslation() (line 984 of core/lib/Drupal/Core/Entity/ContentEntityBase.php)." [ref=e59]':
                - emphasis [ref=e60]: Deprecated function
                - text: ": Using null as an array offset is deprecated, use an empty string instead in"
                - emphasis [ref=e61]: Drupal\Core\Entity\ContentEntityBase->hasTranslation()
                - text: (line
                - emphasis [ref=e62]: "984"
                - text: of
                - emphasis [ref=e63]: core/lib/Drupal/Core/Entity/ContentEntityBase.php
                - text: ).
        - button "Hide" [ref=e64] [cursor=pointer]: Hide
      - generic [ref=e69]:
        - form "Filter the contents of the People view" [ref=e71]:
          - generic [ref=e72]:
            - generic [ref=e73] [cursor=pointer]: Name or email contains
            - textbox "Name or email contains" [ref=e74]
          - generic [ref=e75]:
            - generic [ref=e76] [cursor=pointer]: Status
            - combobox "Status" [ref=e77]:
              - option "- Any -" [selected]
              - option "Active"
              - option "Blocked"
          - generic [ref=e78]:
            - generic [ref=e79] [cursor=pointer]: Role
            - combobox "Role" [ref=e80]:
              - option "- Any -" [selected]
              - option "Content editor"
              - option "Administrator"
          - generic [ref=e81]:
            - generic [ref=e82] [cursor=pointer]: Permission
            - combobox "Permission" [ref=e83]:
              - option "- Any -" [selected]
              - option "View official announcements related to Drupal"
              - option "Administer blocks"
              - 'option "Basic block: Create new content block"'
              - 'option "Basic block: Delete content block"'
              - 'option "Basic block: Delete content block revisions"'
              - 'option "Basic block: Edit content block"'
              - 'option "Basic block: Revert content block revisions"'
              - 'option "Basic block: View content block history pages"'
              - option "Access the Content blocks overview page"
              - option "Administer block content"
              - option "Administer block types"
              - option "Export configuration"
              - option "Import configuration"
              - option "Synchronize configuration"
              - option "Use contextual links"
              - 'option "Content: Administer display"'
              - 'option "Content block: Administer display"'
              - 'option "Taxonomy term: Administer display"'
              - 'option "User: Administer display"'
              - 'option "Content: Administer fields"'
              - 'option "Content block: Administer fields"'
              - 'option "Taxonomy term: Administer fields"'
              - 'option "User: Administer fields"'
              - 'option "Content: Administer form display"'
              - 'option "Content block: Administer form display"'
              - 'option "Taxonomy term: Administer form display"'
              - 'option "User: Administer form display"'
              - option "Add, edit, and delete custom display modes."
              - option "Access the Files overview page"
              - option "Delete any file"
              - option "Delete own files"
              - option "Administer text formats and filters"
              - option "Use the Basic HTML text format"
              - option "Use the Full HTML text format"
              - option "Use the Restricted HTML text format"
              - option "Use help pages"
              - option "Administer image styles"
              - option "Configure any layout"
              - option "Create and edit content blocks"
              - option "Access navigation bar"
              - option "Configure navigation layout"
              - 'option "Article: Create new content"'
              - 'option "Basic page: Create new content"'
              - 'option "Article: Delete any content"'
              - 'option "Basic page: Delete any content"'
              - 'option "Article: Delete own content"'
              - 'option "Basic page: Delete own content"'
              - 'option "Article: Delete revisions"'
              - 'option "Basic page: Delete revisions"'
              - 'option "Article: Edit any content"'
              - 'option "Basic page: Edit any content"'
              - 'option "Article: Edit own content"'
              - 'option "Basic page: Edit own content"'
              - 'option "Article: Revert revisions"'
              - 'option "Basic page: Revert revisions"'
              - 'option "Article: View revisions"'
              - 'option "Basic page: View revisions"'
              - option "Access the Content overview page"
              - option "Administer content"
              - option "Administer content types"
              - option "Administer node published status"
              - option "Bypass content access control"
              - option "Delete all revisions"
              - option "Rebuild content access permissions"
              - option "Revert all revisions"
              - option "View all revisions"
              - option "View own unpublished content"
              - option "Administer URL aliases"
              - option "Create and edit URL aliases"
              - option "Administer actions"
              - option "Administer menus and menu links"
              - option "Administer modules"
              - option "Administer site configuration"
              - option "Administer software updates"
              - option "Administer themes"
              - option "Link to any page"
              - option "Use the administration pages"
              - option "Use the site in maintenance mode"
              - option "View published content"
              - option "View site reports"
              - option "View the administration theme"
              - 'option "Tags: Create terms"'
              - 'option "Tags: Delete term revisions"'
              - 'option "Tags: Delete terms"'
              - 'option "Tags: Edit terms"'
              - 'option "Tags: Revert term revisions"'
              - 'option "Tags: View term revisions"'
              - option "Access the taxonomy vocabulary overview page"
              - option "Administer vocabularies and terms"
              - option "Delete all term revisions"
              - option "Revert all term revisions"
              - option "View all term revisions"
              - option "View vocabulary labels"
              - option "View software update notifications"
              - option "Administer account settings"
              - option "Administer roles and permissions"
              - option "Administer users"
              - option "Cancel own user account"
              - option "Change own username"
              - option "Select method for cancelling account"
              - option "View user email addresses"
              - option "View user information"
              - option "Administer views"
          - button "Filter" [ref=e85] [cursor=pointer]
        - generic [ref=e88]:
          - generic [ref=e89]:
            - button "Show all columns" [ref=e91] [cursor=pointer]
            - table [ref=e92]:
              - rowgroup [ref=e93]:
                - row "Select all rows in this table Username Roles Operations" [ref=e94]:
                  - columnheader "Select all rows in this table" [ref=e95]:
                    - checkbox "Select all rows in this table" [ref=e96]
                  - columnheader "Username" [ref=e97]:
                    - link "Username" [ref=e98] [cursor=pointer]:
                      - /url: "?user=&role=All&order=name&sort=asc"
                  - columnheader "Roles" [ref=e99]
                  - columnheader "Operations" [ref=e100]
              - rowgroup [ref=e101]:
                - row "Update the user editor1 editor1 Edit editor1 List additional actions" [ref=e102]:
                  - cell "Update the user editor1" [ref=e103]:
                    - generic [ref=e104]:
                      - generic [ref=e105] [cursor=pointer]:
                        - text: Update the user
                        - emphasis [ref=e106]: editor1
                      - checkbox "Update the user editor1" [ref=e107]
                  - cell "editor1" [ref=e108]:
                    - link "editor1" [ref=e109] [cursor=pointer]:
                      - /url: /user/2
                  - cell [ref=e110]
                  - cell "Edit editor1 List additional actions" [ref=e111]:
                    - list [ref=e114]:
                      - listitem [ref=e115]:
                        - link "Edit editor1" [ref=e116] [cursor=pointer]:
                          - /url: /user/2/edit?destination=/admin/people
                          - text: Edit
                      - listitem:
                        - button "List additional actions" [ref=e117]:
                          - generic [ref=e118]: List additional actions
                - row "Update the user admin admin Administrator Edit admin List additional actions" [ref=e119]:
                  - cell "Update the user admin" [ref=e120]:
                    - generic [ref=e121]:
                      - generic [ref=e122] [cursor=pointer]:
                        - text: Update the user
                        - emphasis [ref=e123]: admin
                      - checkbox "Update the user admin" [ref=e124]
                  - cell "admin" [ref=e125]:
                    - link "admin" [ref=e126] [cursor=pointer]:
                      - /url: /user/1
                  - cell "Administrator" [ref=e127]:
                    - list [ref=e128]:
                      - listitem [ref=e129]: Administrator
                  - cell "Edit admin List additional actions" [ref=e130]:
                    - list [ref=e133]:
                      - listitem [ref=e134]:
                        - link "Edit admin" [ref=e135] [cursor=pointer]:
                          - /url: /user/1/edit?destination=/admin/people
                          - text: Edit
                      - listitem:
                        - button "List additional actions" [ref=e136]:
                          - generic [ref=e137]: List additional actions
          - group "Perform actions on the selected items in the People view" [ref=e138]:
            - generic [ref=e139]:
              - text: Perform actions on the selected items in the
              - emphasis [ref=e140]: People
              - text: view
            - generic [ref=e141]: No items selected
            - generic [ref=e142]:
              - text: "Action:"
              - combobox "Action:" [ref=e143]:
                - option "- Select -" [selected]
                - option "Add the Administrator role to the selected user(s)"
                - option "Add the Content editor role to the selected user(s)"
                - option "Block the selected user(s)"
                - option "Cancel the selected user account(s)"
                - option "Remove the Administrator role from the selected user(s)"
                - option "Remove the Content editor role from the selected user(s)"
                - option "Unblock the selected user(s)"
            - button "Apply to selected items" [ref=e145] [cursor=pointer]
  - generic [ref=e146]: No items selected
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