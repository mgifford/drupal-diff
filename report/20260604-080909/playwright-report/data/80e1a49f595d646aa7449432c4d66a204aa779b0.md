# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-text-formats-basic-html >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid-dark/vrt/config.spec.ts/config-text-formats-basic-html.png, writing actual.
```

# Page snapshot

```yaml
- generic [active] [ref=e1]:
  - link "Skip to main content" [ref=e2] [cursor=pointer]:
    - /url: "#main-content"
  - button "Expand sidebar" [ref=e5] [cursor=pointer]:
    - img [ref=e6]
    - generic [ref=e8]: Expand sidebar
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
        - link "Configuration" [ref=e17] [cursor=pointer]:
          - /url: /admin/config
      - listitem:
        - text: /
        - link "Content authoring" [ref=e18] [cursor=pointer]:
          - /url: /admin/config/content
      - listitem:
        - text: /
        - link "Text formats and editors" [ref=e19] [cursor=pointer]:
          - /url: /admin/config/content/formats
  - generic [ref=e20]:
    - banner [ref=e21]:
      - heading "Basic HTML" [level=1] [ref=e25]
    - main [ref=e27]:
      - complementary [ref=e31]:
        - paragraph [ref=e32]: A text format contains filters that change the display of user input; for example, stripping out malicious HTML or making URLs clickable. Filters are executed from top to bottom and the order is important, since one filter may prevent another filter from doing its job. For example, when URLs are converted into links before disallowed HTML tags are removed, all links may be removed. When this happens, the order of filters may need to be rearranged.
      - generic [ref=e35]:
        - generic [ref=e36]:
          - generic [ref=e37] [cursor=pointer]: Name *
          - textbox "Name *" [ref=e38]: Basic HTML
          - generic [ref=e40]: "Machine name: basic_html"
        - text: "*"
        - group "Roles" [ref=e41]:
          - generic [ref=e43]: Roles
          - generic [ref=e45]:
            - generic [ref=e46]:
              - checkbox "Anonymous user" [ref=e47]
              - text: Anonymous user
            - generic [ref=e48]:
              - checkbox "Authenticated user" [checked] [ref=e49]
              - text: Authenticated user
            - generic [ref=e50]:
              - checkbox "Content editor" [ref=e51]
              - text: Content editor
            - generic [ref=e52]:
              - checkbox "Administrator" [checked] [ref=e53]
              - text: Administrator
        - generic [ref=e54]:
          - generic [ref=e55] [cursor=pointer]: Text editor
          - combobox "Text editor" [ref=e56]:
            - option "None"
            - option "CKEditor 5" [selected]
        - generic [ref=e57]:
          - group "Toolbar configuration" [ref=e59]:
            - generic [ref=e60]: Toolbar configuration
            - generic [ref=e61]:
              - generic [ref=e62]:
                - text: Move a button into the
                - emphasis [ref=e63]: Active toolbar
                - text: to enable it, or into the list of
                - emphasis [ref=e64]: Available buttons
                - text: to disable it. Buttons may be moved with the mouse or keyboard arrow keys.
              - generic [ref=e65]:
                - paragraph [ref=e67]: The toolbar buttons that don't fit the user's browser window width will be grouped in a dropdown. If multiple toolbar rows are preferred, those can be configured by adding an explicit wrapping breakpoint wherever you want to start a new row.
                - generic [ref=e68]:
                  - generic [ref=e69]:
                    - text: Available buttons
                    - listbox "Available buttons" [ref=e70]:
                      - option "available button Undo. Press the down arrow key to activate" [ref=e71]:
                        - generic [ref=e73]: available button Undo. Press the down arrow key to activate
                      - option "available button Redo. Press the down arrow key to activate" [ref=e74]:
                        - generic [ref=e76]: available button Redo. Press the down arrow key to activate
                      - option "available button Style. Press the down arrow key to activate" [ref=e77]:
                        - generic [ref=e79]: available button Style. Press the down arrow key to activate
                      - option "available button Special characters. Press the down arrow key to activate" [ref=e80]:
                        - generic [ref=e82]: available button Special characters. Press the down arrow key to activate
                      - option "available button Underline. Press the down arrow key to activate" [ref=e83]:
                        - generic [ref=e85]: available button Underline. Press the down arrow key to activate
                      - option "available button Code Block. Press the down arrow key to activate" [ref=e86]:
                        - generic [ref=e88]: available button Code Block. Press the down arrow key to activate
                      - option "available button Strikethrough. Press the down arrow key to activate" [ref=e89]:
                        - generic [ref=e91]: available button Strikethrough. Press the down arrow key to activate
                      - option "available button Subscript. Press the down arrow key to activate" [ref=e92]:
                        - generic [ref=e94]: available button Subscript. Press the down arrow key to activate
                      - option "available button Superscript. Press the down arrow key to activate" [ref=e95]:
                        - generic [ref=e97]: available button Superscript. Press the down arrow key to activate
                      - option "available button Horizontal line. Press the down arrow key to activate" [ref=e98]:
                        - generic [ref=e100]: available button Horizontal line. Press the down arrow key to activate
                      - option "available button Text alignment. Press the down arrow key to activate" [ref=e101]:
                        - generic [ref=e103]: available button Text alignment. Press the down arrow key to activate
                      - option "available button Remove Format. Press the down arrow key to activate" [ref=e104]:
                        - generic [ref=e106]: available button Remove Format. Press the down arrow key to activate
                      - option "available button table. Press the down arrow key to activate" [ref=e107]:
                        - generic [ref=e109]: available button table. Press the down arrow key to activate
                      - option "available button Indent. Press the down arrow key to activate" [ref=e110]:
                        - generic [ref=e112]: available button Indent. Press the down arrow key to activate
                      - option "available button Outdent. Press the down arrow key to activate" [ref=e113]:
                        - generic [ref=e115]: available button Outdent. Press the down arrow key to activate
                      - option "available button Language. Press the down arrow key to activate" [ref=e116]:
                        - generic [ref=e118]: available button Language. Press the down arrow key to activate
                      - option "available button Show blocks. Press the down arrow key to activate" [ref=e119]:
                        - generic [ref=e121]: available button Show blocks. Press the down arrow key to activate
                      - option "available button Fullscreen. Press the down arrow key to activate" [ref=e122]:
                        - generic [ref=e124]: available button Fullscreen. Press the down arrow key to activate
                  - generic [ref=e125]:
                    - text: Button divider
                    - listbox "Button divider" [ref=e126]:
                      - option "available button Divider. Press the down arrow key to use this divider in the active button list" [ref=e127]:
                        - generic [ref=e129]: available button Divider. Press the down arrow key to use this divider in the active button list
                      - option "available button Wrapping. Press the down arrow key to use this divider in the active button list" [ref=e130]:
                        - generic [ref=e132]: available button Wrapping. Press the down arrow key to use this divider in the active button list
                - generic [ref=e133]:
                  - text: Active toolbar
                  - listbox "Active toolbar" [ref=e134]:
                    - option "active button Bold. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e135]:
                      - generic [ref=e137]: active button Bold. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Italic. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e138]:
                      - generic [ref=e140]: active button Italic. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e141]:
                      - generic [ref=e143]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Link. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e144]:
                      - generic [ref=e146]: active button Link. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e147]:
                      - generic [ref=e149]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Bulleted list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e150]:
                      - generic [ref=e152]: active button Bulleted list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Numbered list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e153]:
                      - generic [ref=e155]: active button Numbered list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e156]:
                      - generic [ref=e158]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Block quote. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e159]:
                      - generic [ref=e161]: active button Block quote. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Image. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e162]:
                      - generic [ref=e164]: active button Image. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e165]:
                      - generic [ref=e167]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Heading. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e168]:
                      - generic [ref=e170]: active button Heading. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Code. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e171]:
                      - generic [ref=e173]: active button Code. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e174]:
                      - generic [ref=e176]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Source. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e177]:
                      - generic [ref=e179]: active button Source. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
              - generic [ref=e180]: "{\"undo\":{\"label\":\"Undo\"},\"redo\":{\"label\":\"Redo\"},\"heading\":{\"label\":\"Heading\"},\"style\":{\"label\":\"Style\"},\"specialCharacters\":{\"label\":\"Special characters\"},\"sourceEditing\":{\"label\":\"Source\"},\"bold\":{\"label\":\"Bold\"},\"italic\":{\"label\":\"Italic\"},\"underline\":{\"label\":\"Underline\"},\"code\":{\"label\":\"Code\"},\"codeBlock\":{\"label\":\"Code Block\"},\"strikethrough\":{\"label\":\"Strikethrough\"},\"subscript\":{\"label\":\"Subscript\"},\"superscript\":{\"label\":\"Superscript\"},\"blockQuote\":{\"label\":\"Block quote\"},\"link\":{\"label\":\"Link\"},\"bulletedList\":{\"label\":\"Bulleted list\"},\"numberedList\":{\"label\":\"Numbered list\"},\"horizontalLine\":{\"label\":\"Horizontal line\"},\"alignment\":{\"label\":\"Text alignment\"},\"removeFormat\":{\"label\":\"Remove Format\"},\"insertTable\":{\"label\":\"table\"},\"drupalInsertImage\":{\"label\":\"Image\"},\"indent\":{\"label\":\"Indent\"},\"outdent\":{\"label\":\"Outdent\"},\"textPartLanguage\":{\"label\":\"Language\"},\"showBlocks\":{\"label\":\"Show blocks\"},\"fullscreen\":{\"label\":\"Fullscreen\"}}"
              - generic [ref=e181]:
                - generic [ref=e182] [cursor=pointer]: Toolbar items
                - textbox [ref=e184]: "[\"bold\",\"italic\",\"|\",\"link\",\"|\",\"bulletedList\",\"numberedList\",\"|\",\"blockQuote\",\"drupalInsertImage\",\"|\",\"heading\",\"code\",\"|\",\"sourceEditing\"]"
          - generic [ref=e185]: Press the down arrow key to add to the toolbar.
          - generic [ref=e186]: Move this button in the toolbar by pressing the left or right arrow keys. Press the up arrow key to remove from the toolbar.
          - generic [ref=e187]:
            - generic [ref=e188] [cursor=pointer]: CKEditor 5 plugin settings
            - generic [ref=e189]:
              - list [ref=e190]:
                - listitem [ref=e191]:
                  - link "Headings" [ref=e192] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-heading"
                    - strong [ref=e194]: Headings
                - listitem [ref=e195]:
                  - link "Source editing" [ref=e196] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-sourceediting"
                    - strong [ref=e198]: Source editing
                - listitem [ref=e199]:
                  - link "List" [ref=e200] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-list"
                    - strong [ref=e202]: List
                - listitem [ref=e203]:
                  - link "Image Images can only be uploaded." [ref=e204] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-image"
                    - generic [ref=e205]:
                      - strong [ref=e206]: Image
                      - generic [ref=e207]: Images can only be uploaded.
                - listitem [ref=e208]:
                  - link "Image resize" [ref=e209] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-imageresize"
                    - strong [ref=e211]: Image resize
              - group [ref=e213]:
                - group "Enabled Headings" [ref=e216]:
                  - generic [ref=e218]: Enabled Headings
                  - generic [ref=e219]:
                    - generic [ref=e220]:
                      - checkbox "Heading 1" [ref=e221] [cursor=pointer]
                      - text: Heading 1
                    - generic [ref=e222]:
                      - checkbox "Heading 2" [checked] [ref=e223] [cursor=pointer]
                      - text: Heading 2
                    - generic [ref=e224]:
                      - checkbox "Heading 3" [checked] [ref=e225] [cursor=pointer]
                      - text: Heading 3
                    - generic [ref=e226]:
                      - checkbox "Heading 4" [checked] [ref=e227] [cursor=pointer]
                      - text: Heading 4
                    - generic [ref=e228]:
                      - checkbox "Heading 5" [checked] [ref=e229] [cursor=pointer]
                      - text: Heading 5
                    - generic [ref=e230]:
                      - checkbox "Heading 6" [checked] [ref=e231] [cursor=pointer]
                      - text: Heading 6
                    - generic [ref=e232]: These are the headings that will appear in the headings dropdown. If a heading is not chosen here, it does not necessarily mean the corresponding tag is disallowed in the text format.
        - generic [ref=e234]:
          - generic [ref=e235] [cursor=pointer]: Enabled filters
          - generic [ref=e236]:
            - checkbox "Limit allowed HTML tags and correct faulty HTML" [checked] [ref=e237] [cursor=pointer]
            - text: Limit allowed HTML tags and correct faulty HTML
          - generic [ref=e238]:
            - checkbox "Display any HTML as plain text" [ref=e239] [cursor=pointer]
            - text: Display any HTML as plain text
          - generic [ref=e240]:
            - checkbox "Entity links" [ref=e241] [cursor=pointer]
            - text: Entity links
            - generic [ref=e242]:
              - text: Updates entity links with
              - code [ref=e243]: data-entity-type
              - text: and
              - code [ref=e244]: data-entity-uuid
              - text: attributes to point to the latest entity URL aliases.
          - generic [ref=e245]:
            - checkbox "Convert line breaks into HTML (i.e. <br> and <p>)" [ref=e246] [cursor=pointer]
            - generic [ref=e247] [cursor=pointer]:
              - text: Convert line breaks into HTML (i.e.
              - code [ref=e248]: <br>
              - text: and
              - code [ref=e249]: <p>
              - text: )
          - generic [ref=e250]:
            - checkbox "Convert URLs into links" [ref=e251] [cursor=pointer]
            - text: Convert URLs into links
          - generic [ref=e252]:
            - checkbox "Align images" [checked] [ref=e253] [cursor=pointer]
            - text: Align images
            - generic [ref=e254]:
              - text: Uses a
              - code [ref=e255]: data-align
              - text: attribute on
              - code [ref=e256]: <img>
              - text: tags to align images.
          - generic [ref=e257]:
            - checkbox "Caption images" [checked] [ref=e258] [cursor=pointer]
            - text: Caption images
            - generic [ref=e259]:
              - text: Uses a
              - code [ref=e260]: data-caption
              - text: attribute on
              - code [ref=e261]: <img>
              - text: tags to caption images.
          - generic [ref=e262]:
            - checkbox "Restrict images to this site" [checked] [ref=e263] [cursor=pointer]
            - text: Restrict images to this site
            - generic [ref=e264]: Disallows usage of <img> tag sources that are not hosted on this site by replacing them with a placeholder image.
          - generic [ref=e265]:
            - checkbox "Correct faulty and chopped off HTML" [ref=e266] [cursor=pointer]
            - text: Correct faulty and chopped off HTML
          - generic [ref=e267]:
            - checkbox "Track images uploaded via a Text Editor" [checked] [ref=e268] [cursor=pointer]
            - text: Track images uploaded via a Text Editor
            - generic [ref=e269]: Ensures that the latest versions of images uploaded via a Text Editor are displayed, along with their dimensions.
          - generic [ref=e270]:
            - checkbox "Lazy load images" [checked] [ref=e271] [cursor=pointer]
            - text: Lazy load images
            - generic [ref=e272]:
              - text: Instruct browsers to lazy load images if dimensions are specified. Use in conjunction with and place after the 'Track images uploaded via a Text Editor' filter that adds image dimensions required for lazy loading. Results can be overridden by
              - code [ref=e273]: <img loading="eager">
              - text: .
        - generic [ref=e274]:
          - generic [ref=e275] [cursor=pointer]: Filter processing order
          - generic [ref=e276]:
            - button "Show row weights" [ref=e278] [cursor=pointer]:
              - generic [ref=e279]: Show row weights
            - table [ref=e280]:
              - rowgroup [ref=e281]:
                - row "Limit allowed HTML tags and correct faulty HTML" [ref=e282]:
                  - cell "Limit allowed HTML tags and correct faulty HTML" [ref=e283]:
                    - generic [ref=e284]:
                      - link "Change order" [ref=e285]:
                        - /url: "#"
                      - generic [ref=e286]: Limit allowed HTML tags and correct faulty HTML
                  - cell [ref=e287]
                  - cell [ref=e288]
                - row "Align images" [ref=e289]:
                  - cell "Align images" [ref=e290]:
                    - generic [ref=e291]:
                      - link "Change order" [ref=e292]:
                        - /url: "#"
                      - generic [ref=e293]: Align images
                  - cell [ref=e294]
                  - cell [ref=e295]
                - row "Caption images" [ref=e296]:
                  - cell "Caption images" [ref=e297]:
                    - generic [ref=e298]:
                      - link "Change order" [ref=e299]:
                        - /url: "#"
                      - generic [ref=e300]: Caption images
                  - cell [ref=e301]
                  - cell [ref=e302]
                - row "Restrict images to this site" [ref=e303]:
                  - cell "Restrict images to this site" [ref=e304]:
                    - generic [ref=e305]:
                      - link "Change order" [ref=e306]:
                        - /url: "#"
                      - generic [ref=e307]: Restrict images to this site
                  - cell [ref=e308]
                  - cell [ref=e309]
                - row "Track images uploaded via a Text Editor" [ref=e310]:
                  - cell "Track images uploaded via a Text Editor" [ref=e311]:
                    - generic [ref=e312]:
                      - link "Change order" [ref=e313]:
                        - /url: "#"
                      - generic [ref=e314]: Track images uploaded via a Text Editor
                  - cell [ref=e315]
                  - cell [ref=e316]
                - row "Lazy load images" [ref=e317]:
                  - cell "Lazy load images" [ref=e318]:
                    - generic [ref=e319]:
                      - link "Change order" [ref=e320]:
                        - /url: "#"
                      - generic [ref=e321]: Lazy load images
                  - cell [ref=e322]
                  - cell [ref=e323]
                - row "Display any HTML as plain text" [ref=e324]:
                  - cell "Display any HTML as plain text" [ref=e325]:
                    - generic [ref=e326]:
                      - link "Change order" [ref=e327]:
                        - /url: "#"
                      - generic [ref=e328]: Display any HTML as plain text
                  - cell [ref=e329]
                  - cell [ref=e330]
                - row "Entity links" [ref=e331]:
                  - cell "Entity links" [ref=e332]:
                    - generic [ref=e333]:
                      - link "Change order" [ref=e334]:
                        - /url: "#"
                      - generic [ref=e335]: Entity links
                  - cell [ref=e336]
                  - cell [ref=e337]
                - row "Convert line breaks into HTML (i.e. <br> and <p> )" [ref=e338]:
                  - cell "Convert line breaks into HTML (i.e. <br> and <p> )" [ref=e339]:
                    - generic [ref=e340]:
                      - link "Change order" [ref=e341]:
                        - /url: "#"
                      - generic [ref=e342]:
                        - text: Convert line breaks into HTML (i.e.
                        - code [ref=e343]: <br>
                        - text: and
                        - code [ref=e344]: <p>
                        - text: )
                  - cell [ref=e345]
                  - cell [ref=e346]
                - row "Convert URLs into links" [ref=e347]:
                  - cell "Convert URLs into links" [ref=e348]:
                    - generic [ref=e349]:
                      - link "Change order" [ref=e350]:
                        - /url: "#"
                      - generic [ref=e351]: Convert URLs into links
                  - cell [ref=e352]
                  - cell [ref=e353]
                - row "Correct faulty and chopped off HTML" [ref=e354]:
                  - cell "Correct faulty and chopped off HTML" [ref=e355]:
                    - generic [ref=e356]:
                      - link "Change order" [ref=e357]:
                        - /url: "#"
                      - generic [ref=e358]: Correct faulty and chopped off HTML
                  - cell [ref=e359]
                  - cell [ref=e360]
        - generic [ref=e361]:
          - generic [ref=e362] [cursor=pointer]: Filter settings
          - generic [ref=e363]:
            - list [ref=e364]:
              - listitem [ref=e365]:
                - link "Limit allowed HTML tags and correct faulty HTML Enabled (active tab)" [ref=e366] [cursor=pointer]:
                  - /url: "#edit-filters-filter-html-settings"
                  - generic [ref=e367]:
                    - strong [ref=e368]: Limit allowed HTML tags and correct faulty HTML
                    - generic [ref=e369]: Enabled
                  - generic [ref=e370]: (active tab)
              - listitem [ref=e371]:
                - link "Convert URLs into links" [ref=e372] [cursor=pointer]:
                  - /url: "#edit-filters-filter-url-settings"
                  - strong [ref=e374]: Convert URLs into links
            - group [ref=e376]:
              - generic [ref=e378]:
                - generic [ref=e379]:
                  - generic [ref=e380] [cursor=pointer]: Allowed HTML tags
                  - textbox "Allowed HTML tags" [ref=e382]: <br> <p> <h2 id> <h3 id> <h4 id> <h5 id> <h6 id> <cite> <dl> <dt> <dd> <a hreflang href> <blockquote cite> <ul type> <ol start type> <strong> <em> <code> <li> <img src alt data-entity-uuid data-entity-type height width data-caption data-align>
                  - generic [ref=e383]: With CKEditor 5 this is a read-only field. The allowed HTML tags and attributes are determined by the CKEditor 5 configuration. Manually removing tags would break enabled functionality, and any manually added tags would be removed by CKEditor 5 on render.
                - generic [ref=e384]:
                  - checkbox "Display basic HTML help in long filter tips" [ref=e385] [cursor=pointer]
                  - text: Display basic HTML help in long filter tips
                - generic [ref=e386]:
                  - checkbox "Add rel=\"nofollow\" to all links" [ref=e387] [cursor=pointer]
                  - text: Add rel="nofollow" to all links
        - button "Save configuration" [ref=e389] [cursor=pointer]
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid-dark/vrt/config.spec.ts/config-text-formats-basic-html.png, writing actual.
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