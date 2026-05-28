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

  Expected an image 1317px by 3666px, received 1280px by 3986px. 141536 pixels (ratio 0.03 of all image pixels) are different.

  Snapshot: config-text-formats-basic-html.png

Call log:
  - Expect "toHaveScreenshot(config-text-formats-basic-html.png)" with timeout 20000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 1317px by 3666px, received 1280px by 3996px. 141536 pixels (ratio 0.03 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 1280px by 3996px, received 1280px by 3986px.
  - waiting 250ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 1317px by 3666px, received 1280px by 3986px. 141536 pixels (ratio 0.03 of all image pixels) are different.

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
  - navigation "Breadcrumb" [ref=e238]:
    - heading "Breadcrumb" [level=2] [ref=e239]
    - list [ref=e240]:
      - listitem:
        - link "Back to site" [ref=e241] [cursor=pointer]:
          - /url: /
      - listitem:
        - link "Administration" [ref=e242] [cursor=pointer]:
          - /url: /admin
      - listitem:
        - text: /
        - link "Configuration" [ref=e243] [cursor=pointer]:
          - /url: /admin/config
      - listitem:
        - text: /
        - link "Content authoring" [ref=e244] [cursor=pointer]:
          - /url: /admin/config/content
      - listitem:
        - text: /
        - link "Text formats and editors" [ref=e245] [cursor=pointer]:
          - /url: /admin/config/content/formats
  - generic [ref=e246]:
    - banner [ref=e247]:
      - heading "Basic HTML" [level=1] [ref=e251]
    - main [ref=e253]:
      - complementary [ref=e257]:
        - paragraph [ref=e258]: A text format contains filters that change the display of user input; for example, stripping out malicious HTML or making URLs clickable. Filters are executed from top to bottom and the order is important, since one filter may prevent another filter from doing its job. For example, when URLs are converted into links before disallowed HTML tags are removed, all links may be removed. When this happens, the order of filters may need to be rearranged.
      - generic [ref=e261]:
        - generic [ref=e262]:
          - generic [ref=e263] [cursor=pointer]: Name *
          - textbox "Name *" [ref=e264]: Basic HTML
          - generic [ref=e266]: "Machine name: basic_html"
        - text: "*"
        - group "Roles" [ref=e267]:
          - generic [ref=e269]: Roles
          - generic [ref=e271]:
            - generic [ref=e272]:
              - checkbox "Anonymous user" [ref=e273]
              - text: Anonymous user
            - generic [ref=e274]:
              - checkbox "Authenticated user" [checked] [ref=e275]
              - text: Authenticated user
            - generic [ref=e276]:
              - checkbox "Content editor" [ref=e277]
              - text: Content editor
            - generic [ref=e278]:
              - checkbox "Administrator" [checked] [ref=e279]
              - text: Administrator
        - generic [ref=e280]:
          - generic [ref=e281] [cursor=pointer]: Text editor
          - combobox "Text editor" [ref=e282]:
            - option "None"
            - option "CKEditor 5" [selected]
        - generic [ref=e283]:
          - group "Toolbar configuration" [ref=e285]:
            - generic [ref=e286]: Toolbar configuration
            - generic [ref=e287]:
              - generic [ref=e288]:
                - text: Move a button into the
                - emphasis [ref=e289]: Active toolbar
                - text: to enable it, or into the list of
                - emphasis [ref=e290]: Available buttons
                - text: to disable it. Buttons may be moved with the mouse or keyboard arrow keys.
              - generic [ref=e291]:
                - paragraph [ref=e293]: The toolbar buttons that don't fit the user's browser window width will be grouped in a dropdown. If multiple toolbar rows are preferred, those can be configured by adding an explicit wrapping breakpoint wherever you want to start a new row.
                - generic [ref=e294]:
                  - generic [ref=e295]:
                    - text: Available buttons
                    - listbox "Available buttons" [ref=e296]:
                      - option "available button Undo. Press the down arrow key to activate" [ref=e297]:
                        - generic [ref=e299]: available button Undo. Press the down arrow key to activate
                      - option "available button Redo. Press the down arrow key to activate" [ref=e300]:
                        - generic [ref=e302]: available button Redo. Press the down arrow key to activate
                      - option "available button Style. Press the down arrow key to activate" [ref=e303]:
                        - generic [ref=e305]: available button Style. Press the down arrow key to activate
                      - option "available button Special characters. Press the down arrow key to activate" [ref=e306]:
                        - generic [ref=e308]: available button Special characters. Press the down arrow key to activate
                      - option "available button Underline. Press the down arrow key to activate" [ref=e309]:
                        - generic [ref=e311]: available button Underline. Press the down arrow key to activate
                      - option "available button Code Block. Press the down arrow key to activate" [ref=e312]:
                        - generic [ref=e314]: available button Code Block. Press the down arrow key to activate
                      - option "available button Strikethrough. Press the down arrow key to activate" [ref=e315]:
                        - generic [ref=e317]: available button Strikethrough. Press the down arrow key to activate
                      - option "available button Subscript. Press the down arrow key to activate" [ref=e318]:
                        - generic [ref=e320]: available button Subscript. Press the down arrow key to activate
                      - option "available button Superscript. Press the down arrow key to activate" [ref=e321]:
                        - generic [ref=e323]: available button Superscript. Press the down arrow key to activate
                      - option "available button Horizontal line. Press the down arrow key to activate" [ref=e324]:
                        - generic [ref=e326]: available button Horizontal line. Press the down arrow key to activate
                      - option "available button Text alignment. Press the down arrow key to activate" [ref=e327]:
                        - generic [ref=e329]: available button Text alignment. Press the down arrow key to activate
                      - option "available button Remove Format. Press the down arrow key to activate" [ref=e330]:
                        - generic [ref=e332]: available button Remove Format. Press the down arrow key to activate
                      - option "available button table. Press the down arrow key to activate" [ref=e333]:
                        - generic [ref=e335]: available button table. Press the down arrow key to activate
                      - option "available button Indent. Press the down arrow key to activate" [ref=e336]:
                        - generic [ref=e338]: available button Indent. Press the down arrow key to activate
                      - option "available button Outdent. Press the down arrow key to activate" [ref=e339]:
                        - generic [ref=e341]: available button Outdent. Press the down arrow key to activate
                      - option "available button Language. Press the down arrow key to activate" [ref=e342]:
                        - generic [ref=e344]: available button Language. Press the down arrow key to activate
                      - option "available button Show blocks. Press the down arrow key to activate" [ref=e345]:
                        - generic [ref=e347]: available button Show blocks. Press the down arrow key to activate
                      - option "available button Fullscreen. Press the down arrow key to activate" [ref=e348]:
                        - generic [ref=e350]: available button Fullscreen. Press the down arrow key to activate
                  - generic [ref=e351]:
                    - text: Button divider
                    - listbox "Button divider" [ref=e352]:
                      - option "available button Divider. Press the down arrow key to use this divider in the active button list" [ref=e353]:
                        - generic [ref=e355]: available button Divider. Press the down arrow key to use this divider in the active button list
                      - option "available button Wrapping. Press the down arrow key to use this divider in the active button list" [ref=e356]:
                        - generic [ref=e358]: available button Wrapping. Press the down arrow key to use this divider in the active button list
                - generic [ref=e359]:
                  - text: Active toolbar
                  - listbox "Active toolbar" [ref=e360]:
                    - option "active button Bold. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e361]:
                      - generic [ref=e363]: active button Bold. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Italic. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e364]:
                      - generic [ref=e366]: active button Italic. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e367]:
                      - generic [ref=e369]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Link. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e370]:
                      - generic [ref=e372]: active button Link. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e373]:
                      - generic [ref=e375]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Bulleted list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e376]:
                      - generic [ref=e378]: active button Bulleted list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Numbered list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e379]:
                      - generic [ref=e381]: active button Numbered list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e382]:
                      - generic [ref=e384]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Block quote. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e385]:
                      - generic [ref=e387]: active button Block quote. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Image. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e388]:
                      - generic [ref=e390]: active button Image. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e391]:
                      - generic [ref=e393]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Heading. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e394]:
                      - generic [ref=e396]: active button Heading. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Code. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e397]:
                      - generic [ref=e399]: active button Code. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e400]:
                      - generic [ref=e402]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Source. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e403]:
                      - generic [ref=e405]: active button Source. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
              - generic [ref=e406]: "{\"undo\":{\"label\":\"Undo\"},\"redo\":{\"label\":\"Redo\"},\"heading\":{\"label\":\"Heading\"},\"style\":{\"label\":\"Style\"},\"specialCharacters\":{\"label\":\"Special characters\"},\"sourceEditing\":{\"label\":\"Source\"},\"bold\":{\"label\":\"Bold\"},\"italic\":{\"label\":\"Italic\"},\"underline\":{\"label\":\"Underline\"},\"code\":{\"label\":\"Code\"},\"codeBlock\":{\"label\":\"Code Block\"},\"strikethrough\":{\"label\":\"Strikethrough\"},\"subscript\":{\"label\":\"Subscript\"},\"superscript\":{\"label\":\"Superscript\"},\"blockQuote\":{\"label\":\"Block quote\"},\"link\":{\"label\":\"Link\"},\"bulletedList\":{\"label\":\"Bulleted list\"},\"numberedList\":{\"label\":\"Numbered list\"},\"horizontalLine\":{\"label\":\"Horizontal line\"},\"alignment\":{\"label\":\"Text alignment\"},\"removeFormat\":{\"label\":\"Remove Format\"},\"insertTable\":{\"label\":\"table\"},\"drupalInsertImage\":{\"label\":\"Image\"},\"indent\":{\"label\":\"Indent\"},\"outdent\":{\"label\":\"Outdent\"},\"textPartLanguage\":{\"label\":\"Language\"},\"showBlocks\":{\"label\":\"Show blocks\"},\"fullscreen\":{\"label\":\"Fullscreen\"}}"
              - generic [ref=e407]:
                - generic [ref=e408] [cursor=pointer]: Toolbar items
                - textbox [ref=e410]: "[\"bold\",\"italic\",\"|\",\"link\",\"|\",\"bulletedList\",\"numberedList\",\"|\",\"blockQuote\",\"drupalInsertImage\",\"|\",\"heading\",\"code\",\"|\",\"sourceEditing\"]"
          - generic [ref=e411]: Press the down arrow key to add to the toolbar.
          - generic [ref=e412]: Move this button in the toolbar by pressing the left or right arrow keys. Press the up arrow key to remove from the toolbar.
          - generic [ref=e413]:
            - generic [ref=e414] [cursor=pointer]: CKEditor 5 plugin settings
            - generic [ref=e415]:
              - list [ref=e416]:
                - listitem [ref=e417]:
                  - link "Headings" [ref=e418] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-heading"
                    - strong [ref=e420]: Headings
                - listitem [ref=e421]:
                  - link "Source editing" [ref=e422] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-sourceediting"
                    - strong [ref=e424]: Source editing
                - listitem [ref=e425]:
                  - link "List" [ref=e426] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-list"
                    - strong [ref=e428]: List
                - listitem [ref=e429]:
                  - link "Image Images can only be uploaded." [ref=e430] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-image"
                    - generic [ref=e431]:
                      - strong [ref=e432]: Image
                      - generic [ref=e433]: Images can only be uploaded.
                - listitem [ref=e434]:
                  - link "Image resize" [ref=e435] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-imageresize"
                    - strong [ref=e437]: Image resize
              - group [ref=e439]:
                - group "Enabled Headings" [ref=e442]:
                  - generic [ref=e444]: Enabled Headings
                  - generic [ref=e445]:
                    - generic [ref=e446]:
                      - checkbox "Heading 1" [ref=e447] [cursor=pointer]
                      - text: Heading 1
                    - generic [ref=e448]:
                      - checkbox "Heading 2" [checked] [ref=e449] [cursor=pointer]
                      - text: Heading 2
                    - generic [ref=e450]:
                      - checkbox "Heading 3" [checked] [ref=e451] [cursor=pointer]
                      - text: Heading 3
                    - generic [ref=e452]:
                      - checkbox "Heading 4" [checked] [ref=e453] [cursor=pointer]
                      - text: Heading 4
                    - generic [ref=e454]:
                      - checkbox "Heading 5" [checked] [ref=e455] [cursor=pointer]
                      - text: Heading 5
                    - generic [ref=e456]:
                      - checkbox "Heading 6" [checked] [ref=e457] [cursor=pointer]
                      - text: Heading 6
                    - generic [ref=e458]: These are the headings that will appear in the headings dropdown. If a heading is not chosen here, it does not necessarily mean the corresponding tag is disallowed in the text format.
        - generic [ref=e460]:
          - generic [ref=e461] [cursor=pointer]: Enabled filters
          - generic [ref=e462]:
            - checkbox "Limit allowed HTML tags and correct faulty HTML" [checked] [ref=e463] [cursor=pointer]
            - text: Limit allowed HTML tags and correct faulty HTML
          - generic [ref=e464]:
            - checkbox "Display any HTML as plain text" [ref=e465] [cursor=pointer]
            - text: Display any HTML as plain text
          - generic [ref=e466]:
            - checkbox "Entity links" [ref=e467] [cursor=pointer]
            - text: Entity links
            - generic [ref=e468]:
              - text: Updates entity links with
              - code [ref=e469]: data-entity-type
              - text: and
              - code [ref=e470]: data-entity-uuid
              - text: attributes to point to the latest entity URL aliases.
          - generic [ref=e471]:
            - checkbox "Convert line breaks into HTML (i.e. <br> and <p>)" [ref=e472] [cursor=pointer]
            - generic [ref=e473] [cursor=pointer]:
              - text: Convert line breaks into HTML (i.e.
              - code [ref=e474]: <br>
              - text: and
              - code [ref=e475]: <p>
              - text: )
          - generic [ref=e476]:
            - checkbox "Convert URLs into links" [ref=e477] [cursor=pointer]
            - text: Convert URLs into links
          - generic [ref=e478]:
            - checkbox "Align images" [checked] [ref=e479] [cursor=pointer]
            - text: Align images
            - generic [ref=e480]:
              - text: Uses a
              - code [ref=e481]: data-align
              - text: attribute on
              - code [ref=e482]: <img>
              - text: tags to align images.
          - generic [ref=e483]:
            - checkbox "Caption images" [checked] [ref=e484] [cursor=pointer]
            - text: Caption images
            - generic [ref=e485]:
              - text: Uses a
              - code [ref=e486]: data-caption
              - text: attribute on
              - code [ref=e487]: <img>
              - text: tags to caption images.
          - generic [ref=e488]:
            - checkbox "Restrict images to this site" [checked] [ref=e489] [cursor=pointer]
            - text: Restrict images to this site
            - generic [ref=e490]: Disallows usage of <img> tag sources that are not hosted on this site by replacing them with a placeholder image.
          - generic [ref=e491]:
            - checkbox "Correct faulty and chopped off HTML" [ref=e492] [cursor=pointer]
            - text: Correct faulty and chopped off HTML
          - generic [ref=e493]:
            - checkbox "Track images uploaded via a Text Editor" [checked] [ref=e494] [cursor=pointer]
            - text: Track images uploaded via a Text Editor
            - generic [ref=e495]: Ensures that the latest versions of images uploaded via a Text Editor are displayed, along with their dimensions.
          - generic [ref=e496]:
            - checkbox "Lazy load images" [checked] [ref=e497] [cursor=pointer]
            - text: Lazy load images
            - generic [ref=e498]:
              - text: Instruct browsers to lazy load images if dimensions are specified. Use in conjunction with and place after the 'Track images uploaded via a Text Editor' filter that adds image dimensions required for lazy loading. Results can be overridden by
              - code [ref=e499]: <img loading="eager">
              - text: .
        - generic [ref=e500]:
          - generic [ref=e501] [cursor=pointer]: Filter processing order
          - generic [ref=e502]:
            - button "Show row weights" [ref=e504] [cursor=pointer]:
              - generic [ref=e505]: Show row weights
            - table [ref=e506]:
              - rowgroup [ref=e507]:
                - row "Limit allowed HTML tags and correct faulty HTML" [ref=e508]:
                  - cell "Limit allowed HTML tags and correct faulty HTML" [ref=e509]:
                    - generic [ref=e510]:
                      - link "Change order" [ref=e511]:
                        - /url: "#"
                      - generic [ref=e512]: Limit allowed HTML tags and correct faulty HTML
                  - cell [ref=e513]
                  - cell [ref=e514]
                - row "Align images" [ref=e515]:
                  - cell "Align images" [ref=e516]:
                    - generic [ref=e517]:
                      - link "Change order" [ref=e518]:
                        - /url: "#"
                      - generic [ref=e519]: Align images
                  - cell [ref=e520]
                  - cell [ref=e521]
                - row "Caption images" [ref=e522]:
                  - cell "Caption images" [ref=e523]:
                    - generic [ref=e524]:
                      - link "Change order" [ref=e525]:
                        - /url: "#"
                      - generic [ref=e526]: Caption images
                  - cell [ref=e527]
                  - cell [ref=e528]
                - row "Restrict images to this site" [ref=e529]:
                  - cell "Restrict images to this site" [ref=e530]:
                    - generic [ref=e531]:
                      - link "Change order" [ref=e532]:
                        - /url: "#"
                      - generic [ref=e533]: Restrict images to this site
                  - cell [ref=e534]
                  - cell [ref=e535]
                - row "Track images uploaded via a Text Editor" [ref=e536]:
                  - cell "Track images uploaded via a Text Editor" [ref=e537]:
                    - generic [ref=e538]:
                      - link "Change order" [ref=e539]:
                        - /url: "#"
                      - generic [ref=e540]: Track images uploaded via a Text Editor
                  - cell [ref=e541]
                  - cell [ref=e542]
                - row "Lazy load images" [ref=e543]:
                  - cell "Lazy load images" [ref=e544]:
                    - generic [ref=e545]:
                      - link "Change order" [ref=e546]:
                        - /url: "#"
                      - generic [ref=e547]: Lazy load images
                  - cell [ref=e548]
                  - cell [ref=e549]
                - row "Display any HTML as plain text" [ref=e550]:
                  - cell "Display any HTML as plain text" [ref=e551]:
                    - generic [ref=e552]:
                      - link "Change order" [ref=e553]:
                        - /url: "#"
                      - generic [ref=e554]: Display any HTML as plain text
                  - cell [ref=e555]
                  - cell [ref=e556]
                - row "Entity links" [ref=e557]:
                  - cell "Entity links" [ref=e558]:
                    - generic [ref=e559]:
                      - link "Change order" [ref=e560]:
                        - /url: "#"
                      - generic [ref=e561]: Entity links
                  - cell [ref=e562]
                  - cell [ref=e563]
                - row "Convert line breaks into HTML (i.e. <br> and <p> )" [ref=e564]:
                  - cell "Convert line breaks into HTML (i.e. <br> and <p> )" [ref=e565]:
                    - generic [ref=e566]:
                      - link "Change order" [ref=e567]:
                        - /url: "#"
                      - generic [ref=e568]:
                        - text: Convert line breaks into HTML (i.e.
                        - code [ref=e569]: <br>
                        - text: and
                        - code [ref=e570]: <p>
                        - text: )
                  - cell [ref=e571]
                  - cell [ref=e572]
                - row "Convert URLs into links" [ref=e573]:
                  - cell "Convert URLs into links" [ref=e574]:
                    - generic [ref=e575]:
                      - link "Change order" [ref=e576]:
                        - /url: "#"
                      - generic [ref=e577]: Convert URLs into links
                  - cell [ref=e578]
                  - cell [ref=e579]
                - row "Correct faulty and chopped off HTML" [ref=e580]:
                  - cell "Correct faulty and chopped off HTML" [ref=e581]:
                    - generic [ref=e582]:
                      - link "Change order" [ref=e583]:
                        - /url: "#"
                      - generic [ref=e584]: Correct faulty and chopped off HTML
                  - cell [ref=e585]
                  - cell [ref=e586]
        - generic [ref=e587]:
          - generic [ref=e588] [cursor=pointer]: Filter settings
          - generic [ref=e589]:
            - list [ref=e590]:
              - listitem [ref=e591]:
                - link "Limit allowed HTML tags and correct faulty HTML Enabled (active tab)" [ref=e592] [cursor=pointer]:
                  - /url: "#edit-filters-filter-html-settings"
                  - generic [ref=e593]:
                    - strong [ref=e594]: Limit allowed HTML tags and correct faulty HTML
                    - generic [ref=e595]: Enabled
                  - generic [ref=e596]: (active tab)
              - listitem [ref=e597]:
                - link "Convert URLs into links" [ref=e598] [cursor=pointer]:
                  - /url: "#edit-filters-filter-url-settings"
                  - strong [ref=e600]: Convert URLs into links
            - group [ref=e602]:
              - generic [ref=e604]:
                - generic [ref=e605]:
                  - generic [ref=e606] [cursor=pointer]: Allowed HTML tags
                  - textbox "Allowed HTML tags" [ref=e608]: <br> <p> <h2 id> <h3 id> <h4 id> <h5 id> <h6 id> <cite> <dl> <dt> <dd> <a hreflang href> <blockquote cite> <ul type> <ol start type> <strong> <em> <code> <li> <img src alt data-entity-uuid data-entity-type height width data-caption data-align>
                  - generic [ref=e609]: With CKEditor 5 this is a read-only field. The allowed HTML tags and attributes are determined by the CKEditor 5 configuration. Manually removing tags would break enabled functionality, and any manually added tags would be removed by CKEditor 5 on render.
                - generic [ref=e610]:
                  - checkbox "Display basic HTML help in long filter tips" [ref=e611] [cursor=pointer]
                  - text: Display basic HTML help in long filter tips
                - generic [ref=e612]:
                  - checkbox "Add rel=\"nofollow\" to all links" [ref=e613] [cursor=pointer]
                  - text: Add rel="nofollow" to all links
        - button "Save configuration" [ref=e615] [cursor=pointer]
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