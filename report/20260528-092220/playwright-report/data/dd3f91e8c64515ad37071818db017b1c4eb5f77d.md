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

  Expected an image 1280px by 976px, received 1280px by 1056px. 42980 pixels (ratio 0.04 of all image pixels) are different.

  Snapshot: people-list.png

Call log:
  - Expect "toHaveScreenshot(people-list.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 1280px by 976px, received 1280px by 1056px. 42980 pixels (ratio 0.04 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 1280px by 976px, received 1280px by 1056px. 42980 pixels (ratio 0.04 of all image pixels) are different.

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
            - button "Extend Configuration" [ref=e97] [cursor=pointer]:
              - img [ref=e98]
              - generic [ref=e100]: Extend
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
                  - button "Development" [ref=e129] [cursor=pointer]:
                    - generic [ref=e130]: Development
                    - img [ref=e131]
                - listitem [ref=e133]:
                  - button "Media" [ref=e134] [cursor=pointer]:
                    - generic [ref=e135]: Media
                    - img [ref=e136]
                - listitem [ref=e138]:
                  - button "Search and metadata" [ref=e139] [cursor=pointer]:
                    - generic [ref=e140]: Search and metadata
                    - img [ref=e141]
                - listitem [ref=e143]:
                  - button "Region and language" [ref=e144] [cursor=pointer]:
                    - generic [ref=e145]: Region and language
                    - img [ref=e146]
                - listitem [ref=e148]:
                  - button "Web services" [ref=e149] [cursor=pointer]:
                    - generic [ref=e150]: Web services
                    - img [ref=e151]
          - listitem [ref=e153]:
            - link "People" [ref=e154] [cursor=pointer]:
              - /url: /admin/people
              - img [ref=e155]
              - generic [ref=e157]: People
          - listitem [ref=e158]:
            - button "Extend Reports" [ref=e159] [cursor=pointer]:
              - img [ref=e160]
              - generic [ref=e162]: Extend
              - generic [ref=e163]: Reports
              - img [ref=e164]
            - generic [ref=e166]:
              - link "Reports" [ref=e167] [cursor=pointer]:
                - /url: /admin/reports
                - generic [ref=e168]: Reports
              - list [ref=e169]:
                - listitem [ref=e170]:
                  - link "Status report" [ref=e171] [cursor=pointer]:
                    - /url: /admin/reports/status
                    - generic [ref=e172]: Status report
                - listitem [ref=e173]:
                  - link "Available updates" [ref=e174] [cursor=pointer]:
                    - /url: /admin/reports/updates
                    - generic [ref=e175]: Available updates
                - listitem [ref=e176]:
                  - link "Recent log messages" [ref=e177] [cursor=pointer]:
                    - /url: /admin/reports/dblog
                    - generic [ref=e178]: Recent log messages
                - listitem [ref=e179]:
                  - link "Field list" [ref=e180] [cursor=pointer]:
                    - /url: /admin/reports/fields
                    - generic [ref=e181]: Field list
                - listitem [ref=e182]:
                  - link "Top 'access denied' errors" [ref=e183] [cursor=pointer]:
                    - /url: /admin/reports/access-denied
                    - generic [ref=e184]: Top 'access denied' errors
                - listitem [ref=e185]:
                  - link "Top 'page not found' errors" [ref=e186] [cursor=pointer]:
                    - /url: /admin/reports/page-not-found
                    - generic [ref=e187]: Top 'page not found' errors
                - listitem [ref=e188]:
                  - link "Views plugins" [ref=e189] [cursor=pointer]:
                    - /url: /admin/reports/views-plugins
                    - generic [ref=e190]: Views plugins
          - listitem [ref=e191]:
            - link "Announcements" [ref=e192] [cursor=pointer]:
              - /url: /admin/announcements_feed
              - img [ref=e193]
              - generic [ref=e197]: Announcements
    - generic [ref=e198]:
      - generic [ref=e199]:
        - heading "Help" [level=3] [ref=e200]
        - list [ref=e201]:
          - listitem [ref=e202]:
            - link "Help" [ref=e203] [cursor=pointer]:
              - /url: /admin/help
              - img [ref=e204]
              - generic [ref=e206]: Help
      - generic [ref=e207]:
        - heading "User" [level=3] [ref=e208]
        - list [ref=e209]:
          - listitem [ref=e210]:
            - button "Extend admin" [ref=e211] [cursor=pointer]:
              - img [ref=e212]
              - generic [ref=e214]: Extend
              - generic [ref=e215]: admin
              - img [ref=e216]
            - generic [ref=e218]:
              - link "admin" [ref=e219] [cursor=pointer]:
                - /url: /user
                - generic [ref=e220]: admin
              - list [ref=e221]:
                - listitem [ref=e222]:
                  - link "View profile" [ref=e223] [cursor=pointer]:
                    - /url: /user
                    - generic [ref=e224]: View profile
                - listitem [ref=e225]:
                  - link "Edit profile" [ref=e226] [cursor=pointer]:
                    - /url: /user/edit
                    - generic [ref=e227]: Edit profile
                - listitem [ref=e228]:
                  - link "Log out" [ref=e229] [cursor=pointer]:
                    - /url: /user/logout?token=I-8dwIAZNAi4NSqeYWX8wIaVVlyoFcDs-0tsQ5K_lHY
                    - generic [ref=e230]: Log out
      - button "Collapse sidebar" [expanded] [ref=e231] [cursor=pointer]:
        - img [ref=e232]
        - generic [ref=e234]: Collapse sidebar
  - generic [ref=e236]:
    - navigation "Breadcrumb" [ref=e238]:
      - heading "Breadcrumb" [level=2] [ref=e239]
      - list [ref=e240]:
        - listitem:
          - link "Back to site" [ref=e241] [cursor=pointer]:
            - /url: /
        - listitem:
          - link "Administration" [ref=e242] [cursor=pointer]:
            - /url: /admin
    - list [ref=e244]:
      - listitem [ref=e245]:
        - link "+Add user" [ref=e246] [cursor=pointer]:
          - /url: /admin/people/create
  - generic [ref=e247]:
    - banner [ref=e248]:
      - heading "People" [level=1] [ref=e252]
    - generic [ref=e256]:
      - heading "Primary tabs" [level=2] [ref=e257]
      - navigation "Primary tabs" [ref=e258]:
        - list [ref=e259]:
          - listitem [ref=e260]:
            - link "List" [ref=e261] [cursor=pointer]:
              - /url: /admin/people
          - listitem [ref=e262]:
            - link "Permissions" [ref=e263] [cursor=pointer]:
              - /url: /admin/people/permissions
          - listitem [ref=e264]:
            - link "Roles" [ref=e265] [cursor=pointer]:
              - /url: /admin/people/roles
          - listitem [ref=e266]:
            - link "Role settings" [ref=e267] [cursor=pointer]:
              - /url: /admin/people/role-settings
    - main [ref=e269]:
      - contentinfo "Error message" [ref=e274]:
        - heading "Error message" [level=2] [ref=e276]
        - list [ref=e278]:
          - listitem [ref=e279]:
            - group [ref=e280]:
              - 'generic "Deprecated function: Using null as an array offset is deprecated, use an empty string instead in Drupal\\Core\\Entity\\ContentEntityBase->hasTranslation() (line 984 of core/lib/Drupal/Core/Entity/ContentEntityBase.php)." [ref=e281]':
                - emphasis [ref=e282]: Deprecated function
                - text: ": Using null as an array offset is deprecated, use an empty string instead in"
                - emphasis [ref=e283]: Drupal\Core\Entity\ContentEntityBase->hasTranslation()
                - text: (line
                - emphasis [ref=e284]: "984"
                - text: of
                - emphasis [ref=e285]: core/lib/Drupal/Core/Entity/ContentEntityBase.php
                - text: ).
          - listitem [ref=e286]:
            - group [ref=e287]:
              - 'generic "Deprecated function: Using null as an array offset is deprecated, use an empty string instead in Drupal\\Core\\Entity\\ContentEntityBase->hasTranslation() (line 984 of core/lib/Drupal/Core/Entity/ContentEntityBase.php)." [ref=e288]':
                - emphasis [ref=e289]: Deprecated function
                - text: ": Using null as an array offset is deprecated, use an empty string instead in"
                - emphasis [ref=e290]: Drupal\Core\Entity\ContentEntityBase->hasTranslation()
                - text: (line
                - emphasis [ref=e291]: "984"
                - text: of
                - emphasis [ref=e292]: core/lib/Drupal/Core/Entity/ContentEntityBase.php
                - text: ).
        - button "Hide" [ref=e293] [cursor=pointer]: Hide
      - generic [ref=e298]:
        - form "Filter the contents of the People view" [ref=e300]:
          - generic [ref=e301]:
            - generic [ref=e302] [cursor=pointer]: Name or email contains
            - textbox "Name or email contains" [ref=e303]
          - generic [ref=e304]:
            - generic [ref=e305] [cursor=pointer]: Status
            - combobox "Status" [ref=e306]:
              - option "- Any -" [selected]
              - option "Active"
              - option "Blocked"
          - generic [ref=e307]:
            - generic [ref=e308] [cursor=pointer]: Role
            - combobox "Role" [ref=e309]:
              - option "- Any -" [selected]
              - option "Content editor"
              - option "Administrator"
          - generic [ref=e310]:
            - generic [ref=e311] [cursor=pointer]: Permission
            - combobox "Permission" [ref=e312]:
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
          - button "Filter" [ref=e314] [cursor=pointer]
        - generic [ref=e317]:
          - table [ref=e319]:
            - rowgroup [ref=e320]:
              - row "Select all rows in this table Username Status Roles Member for Sort ascending Last access Operations" [ref=e321]:
                - columnheader "Select all rows in this table" [ref=e322]:
                  - checkbox "Select all rows in this table" [ref=e323]
                - columnheader "Username" [ref=e324]:
                  - link "Username" [ref=e325] [cursor=pointer]:
                    - /url: "?user=&role=All&order=name&sort=asc"
                - columnheader "Status" [ref=e326]:
                  - link "Status" [ref=e327] [cursor=pointer]:
                    - /url: "?user=&role=All&order=status&sort=asc"
                - columnheader "Roles" [ref=e328]
                - columnheader "Member for Sort ascending" [ref=e329]:
                  - link "Member for Sort ascending" [ref=e330] [cursor=pointer]:
                    - /url: "?user=&role=All&order=created&sort=asc"
                    - text: Member for
                    - generic [ref=e332]: Sort ascending
                - columnheader "Last access" [ref=e333]:
                  - link "Last access" [ref=e334] [cursor=pointer]:
                    - /url: "?user=&role=All&order=access&sort=desc"
                - columnheader "Operations" [ref=e335]
            - rowgroup [ref=e336]:
              - row "Update the user editor1 editor1 Active 1 hour 41 minutes never Edit editor1 List additional actions" [ref=e337]:
                - cell "Update the user editor1" [ref=e338]:
                  - generic [ref=e339]:
                    - generic [ref=e340] [cursor=pointer]:
                      - text: Update the user
                      - emphasis [ref=e341]: editor1
                    - checkbox "Update the user editor1" [ref=e342]
                - cell "editor1" [ref=e343]:
                  - link "editor1" [ref=e344] [cursor=pointer]:
                    - /url: /user/2
                - cell "Active" [ref=e345]:
                  - generic [ref=e346]: Active
                - cell [ref=e347]
                - cell "1 hour 41 minutes" [ref=e348]
                - cell "never" [ref=e349]
                - cell "Edit editor1 List additional actions" [ref=e350]:
                  - list [ref=e353]:
                    - listitem [ref=e354]:
                      - link "Edit editor1" [ref=e355] [cursor=pointer]:
                        - /url: /user/2/edit?destination=/admin/people
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e356]:
                        - generic [ref=e357]: List additional actions
              - row "Update the user admin admin Active Administrator 19 hours 47 minutes 15 seconds ago Edit admin List additional actions" [ref=e358]:
                - cell "Update the user admin" [ref=e359]:
                  - generic [ref=e360]:
                    - generic [ref=e361] [cursor=pointer]:
                      - text: Update the user
                      - emphasis [ref=e362]: admin
                    - checkbox "Update the user admin" [ref=e363]
                - cell "admin" [ref=e364]:
                  - link "admin" [ref=e365] [cursor=pointer]:
                    - /url: /user/1
                - cell "Active" [ref=e366]:
                  - generic [ref=e367]: Active
                - cell "Administrator" [ref=e368]:
                  - list [ref=e369]:
                    - listitem [ref=e370]: Administrator
                - cell "19 hours 47 minutes" [ref=e371]
                - cell "15 seconds ago" [ref=e372]
                - cell "Edit admin List additional actions" [ref=e373]:
                  - list [ref=e376]:
                    - listitem [ref=e377]:
                      - link "Edit admin" [ref=e378] [cursor=pointer]:
                        - /url: /user/1/edit?destination=/admin/people
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e379]:
                        - generic [ref=e380]: List additional actions
          - group "Perform actions on the selected items in the People view" [ref=e381]:
            - generic [ref=e382]:
              - text: Perform actions on the selected items in the
              - emphasis [ref=e383]: People
              - text: view
            - generic [ref=e384]: No items selected
            - generic [ref=e385]:
              - text: "Action:"
              - combobox "Action:" [ref=e386]:
                - option "- Select -" [selected]
                - option "Add the Administrator role to the selected user(s)"
                - option "Add the Content editor role to the selected user(s)"
                - option "Block the selected user(s)"
                - option "Cancel the selected user account(s)"
                - option "Remove the Administrator role from the selected user(s)"
                - option "Remove the Content editor role from the selected user(s)"
                - option "Unblock the selected user(s)"
            - button "Apply to selected items" [ref=e388] [cursor=pointer]
  - generic [ref=e389]: No items selected
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