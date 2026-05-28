# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-text-formats-basic-html >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 638px by 6535px, received 375px by 6029px. 181411 pixels (ratio 0.05 of all image pixels) are different.

  Snapshot: config-text-formats-basic-html.png

Call log:
  - Expect "toHaveScreenshot(config-text-formats-basic-html.png)" with timeout 20000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 638px by 6535px, received 375px by 6045px. 181411 pixels (ratio 0.05 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 375px by 6045px, received 375px by 6029px.
  - waiting 250ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 638px by 6535px, received 375px by 6029px. 181411 pixels (ratio 0.05 of all image pixels) are different.

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
            - link "Configuration" [ref=e24] [cursor=pointer]:
              - /url: /admin/config
          - listitem [ref=e25]:
            - link "Content authoring" [ref=e26] [cursor=pointer]:
              - /url: /admin/config/content
          - listitem [ref=e27]:
            - link "Text formats and editors" [ref=e28] [cursor=pointer]:
              - /url: /admin/config/content/formats
      - heading "Basic HTML" [level=1] [ref=e31]
    - generic [ref=e33]:
      - complementary [ref=e36]:
        - paragraph [ref=e37]: A text format contains filters that change the display of user input; for example, stripping out malicious HTML or making URLs clickable. Filters are executed from top to bottom and the order is important, since one filter may prevent another filter from doing its job. For example, when URLs are converted into links before disallowed HTML tags are removed, all links may be removed. When this happens, the order of filters may need to be rearranged.
      - generic [ref=e40]:
        - generic [ref=e41]:
          - generic [ref=e42] [cursor=pointer]: Name *
          - textbox "Name *" [ref=e43]: Basic HTML
          - generic [ref=e45]: "Machine name: basic_html"
        - text: "*"
        - group "Roles" [ref=e46]:
          - generic [ref=e48]: Roles
          - generic [ref=e50]:
            - generic [ref=e51]:
              - checkbox "Anonymous user" [ref=e52]
              - text: Anonymous user
            - generic [ref=e53]:
              - checkbox "Authenticated user" [checked] [ref=e54]
              - text: Authenticated user
            - generic [ref=e55]:
              - checkbox "Content editor" [ref=e56]
              - text: Content editor
            - generic [ref=e57]:
              - checkbox "Administrator" [checked] [ref=e58]
              - text: Administrator
        - generic [ref=e59]:
          - generic [ref=e60] [cursor=pointer]: Text editor
          - combobox "Text editor" [ref=e61]:
            - option "None"
            - option "CKEditor 5" [selected]
        - generic [ref=e62]:
          - group "Toolbar configuration" [ref=e64]:
            - generic [ref=e65]: Toolbar configuration
            - generic [ref=e66]:
              - generic [ref=e67]:
                - text: Move a button into the
                - emphasis [ref=e68]: Active toolbar
                - text: to enable it, or into the list of
                - emphasis [ref=e69]: Available buttons
                - text: to disable it. Buttons may be moved with the mouse or keyboard arrow keys.
              - generic [ref=e70]:
                - paragraph [ref=e72]: The toolbar buttons that don't fit the user's browser window width will be grouped in a dropdown. If multiple toolbar rows are preferred, those can be configured by adding an explicit wrapping breakpoint wherever you want to start a new row.
                - generic [ref=e73]:
                  - generic [ref=e74]:
                    - text: Available buttons
                    - listbox "Available buttons" [ref=e75]:
                      - option "available button Undo. Press the down arrow key to activate" [ref=e76]:
                        - generic [ref=e78]: available button Undo. Press the down arrow key to activate
                      - option "available button Redo. Press the down arrow key to activate" [ref=e79]:
                        - generic [ref=e81]: available button Redo. Press the down arrow key to activate
                      - option "available button Style. Press the down arrow key to activate" [ref=e82]:
                        - generic [ref=e84]: available button Style. Press the down arrow key to activate
                      - option "available button Special characters. Press the down arrow key to activate" [ref=e85]:
                        - generic [ref=e87]: available button Special characters. Press the down arrow key to activate
                      - option "available button Underline. Press the down arrow key to activate" [ref=e88]:
                        - generic [ref=e90]: available button Underline. Press the down arrow key to activate
                      - option "available button Code Block. Press the down arrow key to activate" [ref=e91]:
                        - generic [ref=e93]: available button Code Block. Press the down arrow key to activate
                      - option "available button Strikethrough. Press the down arrow key to activate" [ref=e94]:
                        - generic [ref=e96]: available button Strikethrough. Press the down arrow key to activate
                      - option "available button Subscript. Press the down arrow key to activate" [ref=e97]:
                        - generic [ref=e99]: available button Subscript. Press the down arrow key to activate
                      - option "available button Superscript. Press the down arrow key to activate" [ref=e100]:
                        - generic [ref=e102]: available button Superscript. Press the down arrow key to activate
                      - option "available button Horizontal line. Press the down arrow key to activate" [ref=e103]:
                        - generic [ref=e105]: available button Horizontal line. Press the down arrow key to activate
                      - option "available button Text alignment. Press the down arrow key to activate" [ref=e106]:
                        - generic [ref=e108]: available button Text alignment. Press the down arrow key to activate
                      - option "available button Remove Format. Press the down arrow key to activate" [ref=e109]:
                        - generic [ref=e111]: available button Remove Format. Press the down arrow key to activate
                      - option "available button table. Press the down arrow key to activate" [ref=e112]:
                        - generic [ref=e114]: available button table. Press the down arrow key to activate
                      - option "available button Indent. Press the down arrow key to activate" [ref=e115]:
                        - generic [ref=e117]: available button Indent. Press the down arrow key to activate
                      - option "available button Outdent. Press the down arrow key to activate" [ref=e118]:
                        - generic [ref=e120]: available button Outdent. Press the down arrow key to activate
                      - option "available button Language. Press the down arrow key to activate" [ref=e121]:
                        - generic [ref=e123]: available button Language. Press the down arrow key to activate
                      - option "available button Show blocks. Press the down arrow key to activate" [ref=e124]:
                        - generic [ref=e126]: available button Show blocks. Press the down arrow key to activate
                      - option "available button Fullscreen. Press the down arrow key to activate" [ref=e127]:
                        - generic [ref=e129]: available button Fullscreen. Press the down arrow key to activate
                  - generic [ref=e130]:
                    - text: Button divider
                    - listbox "Button divider" [ref=e131]:
                      - option "available button Divider. Press the down arrow key to use this divider in the active button list" [ref=e132]:
                        - generic [ref=e134]: available button Divider. Press the down arrow key to use this divider in the active button list
                      - option "available button Wrapping. Press the down arrow key to use this divider in the active button list" [ref=e135]:
                        - generic [ref=e137]: available button Wrapping. Press the down arrow key to use this divider in the active button list
                - generic [ref=e138]:
                  - text: Active toolbar
                  - listbox "Active toolbar" [ref=e139]:
                    - option "active button Bold. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e140]:
                      - generic [ref=e142]: active button Bold. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Italic. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e143]:
                      - generic [ref=e145]: active button Italic. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e146]:
                      - generic [ref=e148]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Link. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e149]:
                      - generic [ref=e151]: active button Link. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e152]:
                      - generic [ref=e154]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Bulleted list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e155]:
                      - generic [ref=e157]: active button Bulleted list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Numbered list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e158]:
                      - generic [ref=e160]: active button Numbered list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e161]:
                      - generic [ref=e163]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Block quote. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e164]:
                      - generic [ref=e166]: active button Block quote. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Image. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e167]:
                      - generic [ref=e169]: active button Image. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e170]:
                      - generic [ref=e172]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Heading. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e173]:
                      - generic [ref=e175]: active button Heading. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Code. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e176]:
                      - generic [ref=e178]: active button Code. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e179]:
                      - generic [ref=e181]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Source. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e182]:
                      - generic [ref=e184]: active button Source. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
              - generic [ref=e185]: "{\"undo\":{\"label\":\"Undo\"},\"redo\":{\"label\":\"Redo\"},\"heading\":{\"label\":\"Heading\"},\"style\":{\"label\":\"Style\"},\"specialCharacters\":{\"label\":\"Special characters\"},\"sourceEditing\":{\"label\":\"Source\"},\"bold\":{\"label\":\"Bold\"},\"italic\":{\"label\":\"Italic\"},\"underline\":{\"label\":\"Underline\"},\"code\":{\"label\":\"Code\"},\"codeBlock\":{\"label\":\"Code Block\"},\"strikethrough\":{\"label\":\"Strikethrough\"},\"subscript\":{\"label\":\"Subscript\"},\"superscript\":{\"label\":\"Superscript\"},\"blockQuote\":{\"label\":\"Block quote\"},\"link\":{\"label\":\"Link\"},\"bulletedList\":{\"label\":\"Bulleted list\"},\"numberedList\":{\"label\":\"Numbered list\"},\"horizontalLine\":{\"label\":\"Horizontal line\"},\"alignment\":{\"label\":\"Text alignment\"},\"removeFormat\":{\"label\":\"Remove Format\"},\"insertTable\":{\"label\":\"table\"},\"drupalInsertImage\":{\"label\":\"Image\"},\"indent\":{\"label\":\"Indent\"},\"outdent\":{\"label\":\"Outdent\"},\"textPartLanguage\":{\"label\":\"Language\"},\"showBlocks\":{\"label\":\"Show blocks\"},\"fullscreen\":{\"label\":\"Fullscreen\"}}"
              - generic [ref=e186]:
                - generic [ref=e187] [cursor=pointer]: Toolbar items
                - textbox [ref=e189]: "[\"bold\",\"italic\",\"|\",\"link\",\"|\",\"bulletedList\",\"numberedList\",\"|\",\"blockQuote\",\"drupalInsertImage\",\"|\",\"heading\",\"code\",\"|\",\"sourceEditing\"]"
          - generic [ref=e190]: Press the down arrow key to add to the toolbar.
          - generic [ref=e191]: Move this button in the toolbar by pressing the left or right arrow keys. Press the up arrow key to remove from the toolbar.
          - generic [ref=e192]:
            - generic [ref=e193] [cursor=pointer]: CKEditor 5 plugin settings
            - generic [ref=e194]:
              - group [ref=e195]:
                - button "Headings" [expanded] [ref=e196] [cursor=pointer]: Headings
                - group "Enabled Headings" [ref=e199]:
                  - generic [ref=e201]: Enabled Headings
                  - generic [ref=e202]:
                    - generic [ref=e203]:
                      - checkbox "Heading 1" [ref=e204]
                      - text: Heading 1
                    - generic [ref=e205]:
                      - checkbox "Heading 2" [checked] [ref=e206]
                      - text: Heading 2
                    - generic [ref=e207]:
                      - checkbox "Heading 3" [checked] [ref=e208]
                      - text: Heading 3
                    - generic [ref=e209]:
                      - checkbox "Heading 4" [checked] [ref=e210]
                      - text: Heading 4
                    - generic [ref=e211]:
                      - checkbox "Heading 5" [checked] [ref=e212]
                      - text: Heading 5
                    - generic [ref=e213]:
                      - checkbox "Heading 6" [checked] [ref=e214]
                      - text: Heading 6
                    - generic [ref=e215]: These are the headings that will appear in the headings dropdown. If a heading is not chosen here, it does not necessarily mean the corresponding tag is disallowed in the text format.
              - group [ref=e216]:
                - button "Source editing" [expanded] [ref=e217] [cursor=pointer]: Source editing
                - generic [ref=e220]:
                  - generic [ref=e221] [cursor=pointer]: Manually editable HTML tags
                  - textbox "Manually editable HTML tags" [ref=e223]: <cite> <dl> <dt> <dd> <a hreflang> <blockquote cite> <h2 id> <h3 id> <h4 id> <h5 id> <h6 id>
                  - generic [ref=e224]:
                    - text: A list of HTML tags that can be used while editing source. It is only necessary to add tags that are not already supported by other enabled plugins. For example, if "Bold" is enabled, it is not necessary to add the
                    - code [ref=e225]: <strong>
                    - text: tag, but it may be necessary to add
                    - code [ref=e226]: <dl><dt><dd>
                    - text: in a format that does not have a definition list plugin, but requires definition list markup.
              - group [ref=e227]:
                - button "List" [expanded] [ref=e228] [cursor=pointer]: List
                - generic [ref=e230]:
                  - generic [ref=e231]:
                    - checkbox "Allow the user to reverse an ordered list" [ref=e232]
                    - text: Allow the user to reverse an ordered list
                  - generic [ref=e233]:
                    - checkbox "Allow the user to specify the start index of an ordered list" [checked] [ref=e234]
                    - text: Allow the user to specify the start index of an ordered list
                  - generic [ref=e235]:
                    - checkbox "Allow the user to create paragraphs in list items (or other block elements)" [checked] [ref=e236]
                    - text: Allow the user to create paragraphs in list items (or other block elements)
                  - generic [ref=e237]:
                    - checkbox "Allow the user to choose a list style type" [checked] [ref=e238]
                    - text: Allow the user to choose a list style type
                    - generic [ref=e239]: "Available list style types for ordered lists: letters and Roman numerals instead of only numbers. Available list style types for unordered lists: circles and squares instead of only discs."
              - group [ref=e240]:
                - button "Image Images can only be uploaded." [expanded] [ref=e241] [cursor=pointer]:
                  - text: Image
                  - generic [ref=e242]: Images can only be uploaded.
                - generic [ref=e244]:
                  - generic [ref=e245]:
                    - checkbox "Enable image uploads" [checked] [ref=e246]
                    - text: Enable image uploads
                    - generic [ref=e247]: When enabled, images can only be uploaded. When disabled, images can only be added by URL.
                  - generic [ref=e248]:
                    - generic [ref=e249] [cursor=pointer]: Upload directory
                    - textbox "Upload directory" [ref=e250]: inline-images
                    - generic [ref=e251]: A directory relative to Drupal's files directory where uploaded images will be stored.
                  - generic [ref=e252]:
                    - generic [ref=e253] [cursor=pointer]: Maximum file size
                    - textbox "Maximum file size" [ref=e254]:
                      - /placeholder: 100 MB
                    - generic [ref=e255]: If this is left empty, then the file size will be limited by the PHP maximum upload size of 100 MB.
                  - generic [ref=e256]:
                    - generic [ref=e257] [cursor=pointer]: Maximum dimensions
                    - generic [ref=e258]:
                      - generic [ref=e259]:
                        - generic [ref=e260] [cursor=pointer]: Width
                        - spinbutton "Width" [ref=e261]
                        - text: x
                      - generic [ref=e262]:
                        - generic [ref=e263] [cursor=pointer]: Height
                        - spinbutton "Height" [ref=e264]
                        - text: pixels
                    - generic [ref=e265]: Images larger than these dimensions will be scaled down.
              - group [ref=e266]:
                - button "Image resize" [expanded] [ref=e267] [cursor=pointer]: Image resize
                - generic [ref=e270]:
                  - checkbox "Allow the user to resize images" [checked] [ref=e271]
                  - text: Allow the user to resize images
        - generic [ref=e273]:
          - generic [ref=e274] [cursor=pointer]: Enabled filters
          - generic [ref=e275]:
            - checkbox "Limit allowed HTML tags and correct faulty HTML" [checked] [ref=e276]
            - text: Limit allowed HTML tags and correct faulty HTML
          - generic [ref=e277]:
            - checkbox "Display any HTML as plain text" [ref=e278]
            - text: Display any HTML as plain text
          - generic [ref=e279]:
            - checkbox "Entity links" [ref=e280]
            - text: Entity links
            - generic [ref=e281]:
              - text: Updates entity links with
              - code [ref=e282]: data-entity-type
              - text: and
              - code [ref=e283]: data-entity-uuid
              - text: attributes to point to the latest entity URL aliases.
          - generic [ref=e284]:
            - checkbox "Convert line breaks into HTML (i.e. <br> and <p>)" [ref=e285]
            - generic [ref=e286] [cursor=pointer]:
              - text: Convert line breaks into HTML (i.e.
              - code [ref=e287]: <br>
              - text: and
              - code [ref=e288]: <p>
              - text: )
          - generic [ref=e289]:
            - checkbox "Convert URLs into links" [ref=e290]
            - text: Convert URLs into links
          - generic [ref=e291]:
            - checkbox "Align images" [checked] [ref=e292]
            - text: Align images
            - generic [ref=e293]:
              - text: Uses a
              - code [ref=e294]: data-align
              - text: attribute on
              - code [ref=e295]: <img>
              - text: tags to align images.
          - generic [ref=e296]:
            - checkbox "Caption images" [checked] [ref=e297]
            - text: Caption images
            - generic [ref=e298]:
              - text: Uses a
              - code [ref=e299]: data-caption
              - text: attribute on
              - code [ref=e300]: <img>
              - text: tags to caption images.
          - generic [ref=e301]:
            - checkbox "Restrict images to this site" [checked] [ref=e302]
            - text: Restrict images to this site
            - generic [ref=e303]: Disallows usage of <img> tag sources that are not hosted on this site by replacing them with a placeholder image.
          - generic [ref=e304]:
            - checkbox "Correct faulty and chopped off HTML" [ref=e305]
            - text: Correct faulty and chopped off HTML
          - generic [ref=e306]:
            - checkbox "Track images uploaded via a Text Editor" [checked] [ref=e307]
            - text: Track images uploaded via a Text Editor
            - generic [ref=e308]: Ensures that the latest versions of images uploaded via a Text Editor are displayed, along with their dimensions.
          - generic [ref=e309]:
            - checkbox "Lazy load images" [checked] [ref=e310]
            - text: Lazy load images
            - generic [ref=e311]:
              - text: Instruct browsers to lazy load images if dimensions are specified. Use in conjunction with and place after the 'Track images uploaded via a Text Editor' filter that adds image dimensions required for lazy loading. Results can be overridden by
              - code [ref=e312]: <img loading="eager">
              - text: .
        - generic [ref=e313]:
          - generic [ref=e314] [cursor=pointer]: Filter processing order
          - button "Show row weights" [ref=e316] [cursor=pointer]:
            - generic [ref=e317]: Show row weights
          - table [ref=e318]:
            - rowgroup [ref=e319]:
              - row "Limit allowed HTML tags and correct faulty HTML" [ref=e320]:
                - cell "Limit allowed HTML tags and correct faulty HTML" [ref=e321]:
                  - generic [ref=e322]:
                    - link "Change order" [ref=e323]:
                      - /url: "#"
                    - generic [ref=e324]: Limit allowed HTML tags and correct faulty HTML
                - cell [ref=e325]
                - cell [ref=e326]
              - row "Align images" [ref=e327]:
                - cell "Align images" [ref=e328]:
                  - generic [ref=e329]:
                    - link "Change order" [ref=e330]:
                      - /url: "#"
                    - generic [ref=e331]: Align images
                - cell [ref=e332]
                - cell [ref=e333]
              - row "Caption images" [ref=e334]:
                - cell "Caption images" [ref=e335]:
                  - generic [ref=e336]:
                    - link "Change order" [ref=e337]:
                      - /url: "#"
                    - generic [ref=e338]: Caption images
                - cell [ref=e339]
                - cell [ref=e340]
              - row "Restrict images to this site" [ref=e341]:
                - cell "Restrict images to this site" [ref=e342]:
                  - generic [ref=e343]:
                    - link "Change order" [ref=e344]:
                      - /url: "#"
                    - generic [ref=e345]: Restrict images to this site
                - cell [ref=e346]
                - cell [ref=e347]
              - row "Track images uploaded via a Text Editor" [ref=e348]:
                - cell "Track images uploaded via a Text Editor" [ref=e349]:
                  - generic [ref=e350]:
                    - link "Change order" [ref=e351]:
                      - /url: "#"
                    - generic [ref=e352]: Track images uploaded via a Text Editor
                - cell [ref=e353]
                - cell [ref=e354]
              - row "Lazy load images" [ref=e355]:
                - cell "Lazy load images" [ref=e356]:
                  - generic [ref=e357]:
                    - link "Change order" [ref=e358]:
                      - /url: "#"
                    - generic [ref=e359]: Lazy load images
                - cell [ref=e360]
                - cell [ref=e361]
        - generic [ref=e362]:
          - generic [ref=e363] [cursor=pointer]: Filter settings
          - group [ref=e365]:
            - button "Limit allowed HTML tags and correct faulty HTML" [expanded] [ref=e366] [cursor=pointer]: Limit allowed HTML tags and correct faulty HTML
            - generic [ref=e368]:
              - generic [ref=e369]:
                - generic [ref=e370] [cursor=pointer]: Allowed HTML tags
                - textbox "Allowed HTML tags" [ref=e372]: <br> <p> <h2 id> <h3 id> <h4 id> <h5 id> <h6 id> <cite> <dl> <dt> <dd> <a hreflang href> <blockquote cite> <ul type> <ol start type> <strong> <em> <code> <li> <img src alt data-entity-uuid data-entity-type height width data-caption data-align>
                - generic [ref=e373]: With CKEditor 5 this is a read-only field. The allowed HTML tags and attributes are determined by the CKEditor 5 configuration. Manually removing tags would break enabled functionality, and any manually added tags would be removed by CKEditor 5 on render.
              - generic [ref=e374]:
                - checkbox "Display basic HTML help in long filter tips" [ref=e375]
                - text: Display basic HTML help in long filter tips
              - generic [ref=e376]:
                - checkbox "Add rel=\"nofollow\" to all links" [ref=e377]
                - text: Add rel="nofollow" to all links
        - button "Save configuration" [ref=e379] [cursor=pointer]
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