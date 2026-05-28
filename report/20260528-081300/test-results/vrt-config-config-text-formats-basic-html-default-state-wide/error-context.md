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

  Expected an image 1317px by 3666px, received 1280px by 3358px. 141442 pixels (ratio 0.03 of all image pixels) are different.

  Snapshot: config-text-formats-basic-html.png

Call log:
  - Expect "toHaveScreenshot(config-text-formats-basic-html.png)" with timeout 20000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 1317px by 3666px, received 1280px by 3367px. 141442 pixels (ratio 0.03 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 1280px by 3367px, received 1280px by 3358px.
  - waiting 250ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 1317px by 3666px, received 1280px by 3358px. 141442 pixels (ratio 0.03 of all image pixels) are different.

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
                    - /url: /user/logout?token=Yzzb-BjBXNcFnxuGskIoQB5phdaKZ_bySd8T9ReXAn8
                    - generic [ref=e230]: Log out
      - button "Collapse sidebar" [expanded] [ref=e231] [cursor=pointer]:
        - img [ref=e232]
        - generic [ref=e234]: Collapse sidebar
  - main [ref=e236]:
    - generic [ref=e239]:
      - navigation "Breadcrumb" [ref=e242]:
        - heading "Breadcrumb" [level=2] [ref=e243]
        - list [ref=e244]:
          - listitem [ref=e245]:
            - link "Home" [ref=e246] [cursor=pointer]:
              - /url: /
          - listitem [ref=e247]:
            - link "Administration" [ref=e248] [cursor=pointer]:
              - /url: /admin
          - listitem [ref=e249]:
            - link "Configuration" [ref=e250] [cursor=pointer]:
              - /url: /admin/config
          - listitem [ref=e251]:
            - link "Content authoring" [ref=e252] [cursor=pointer]:
              - /url: /admin/config/content
          - listitem [ref=e253]:
            - link "Text formats and editors" [ref=e254] [cursor=pointer]:
              - /url: /admin/config/content/formats
      - heading "Basic HTML" [level=1] [ref=e257]
    - generic [ref=e259]:
      - complementary [ref=e262]:
        - paragraph [ref=e263]: A text format contains filters that change the display of user input; for example, stripping out malicious HTML or making URLs clickable. Filters are executed from top to bottom and the order is important, since one filter may prevent another filter from doing its job. For example, when URLs are converted into links before disallowed HTML tags are removed, all links may be removed. When this happens, the order of filters may need to be rearranged.
      - generic [ref=e266]:
        - generic [ref=e267]:
          - generic [ref=e268] [cursor=pointer]: Name *
          - textbox "Name *" [ref=e269]: Basic HTML
          - generic [ref=e271]: "Machine name: basic_html"
        - text: "*"
        - group "Roles" [ref=e272]:
          - generic [ref=e274]: Roles
          - generic [ref=e276]:
            - generic [ref=e277]:
              - checkbox "Anonymous user" [ref=e278]
              - text: Anonymous user
            - generic [ref=e279]:
              - checkbox "Authenticated user" [checked] [ref=e280]
              - text: Authenticated user
            - generic [ref=e281]:
              - checkbox "Content editor" [ref=e282]
              - text: Content editor
            - generic [ref=e283]:
              - checkbox "Administrator" [checked] [ref=e284]
              - text: Administrator
        - generic [ref=e285]:
          - generic [ref=e286] [cursor=pointer]: Text editor
          - combobox "Text editor" [ref=e287]:
            - option "None"
            - option "CKEditor 5" [selected]
        - generic [ref=e288]:
          - group "Toolbar configuration" [ref=e290]:
            - generic [ref=e291]: Toolbar configuration
            - generic [ref=e292]:
              - generic [ref=e293]:
                - text: Move a button into the
                - emphasis [ref=e294]: Active toolbar
                - text: to enable it, or into the list of
                - emphasis [ref=e295]: Available buttons
                - text: to disable it. Buttons may be moved with the mouse or keyboard arrow keys.
              - generic [ref=e296]:
                - paragraph [ref=e298]: The toolbar buttons that don't fit the user's browser window width will be grouped in a dropdown. If multiple toolbar rows are preferred, those can be configured by adding an explicit wrapping breakpoint wherever you want to start a new row.
                - generic [ref=e299]:
                  - generic [ref=e300]:
                    - text: Available buttons
                    - listbox "Available buttons" [ref=e301]:
                      - option "available button Undo. Press the down arrow key to activate" [ref=e302]:
                        - generic [ref=e304]: available button Undo. Press the down arrow key to activate
                      - option "available button Redo. Press the down arrow key to activate" [ref=e305]:
                        - generic [ref=e307]: available button Redo. Press the down arrow key to activate
                      - option "available button Style. Press the down arrow key to activate" [ref=e308]:
                        - generic [ref=e310]: available button Style. Press the down arrow key to activate
                      - option "available button Special characters. Press the down arrow key to activate" [ref=e311]:
                        - generic [ref=e313]: available button Special characters. Press the down arrow key to activate
                      - option "available button Underline. Press the down arrow key to activate" [ref=e314]:
                        - generic [ref=e316]: available button Underline. Press the down arrow key to activate
                      - option "available button Code Block. Press the down arrow key to activate" [ref=e317]:
                        - generic [ref=e319]: available button Code Block. Press the down arrow key to activate
                      - option "available button Strikethrough. Press the down arrow key to activate" [ref=e320]:
                        - generic [ref=e322]: available button Strikethrough. Press the down arrow key to activate
                      - option "available button Subscript. Press the down arrow key to activate" [ref=e323]:
                        - generic [ref=e325]: available button Subscript. Press the down arrow key to activate
                      - option "available button Superscript. Press the down arrow key to activate" [ref=e326]:
                        - generic [ref=e328]: available button Superscript. Press the down arrow key to activate
                      - option "available button Horizontal line. Press the down arrow key to activate" [ref=e329]:
                        - generic [ref=e331]: available button Horizontal line. Press the down arrow key to activate
                      - option "available button Text alignment. Press the down arrow key to activate" [ref=e332]:
                        - generic [ref=e334]: available button Text alignment. Press the down arrow key to activate
                      - option "available button Remove Format. Press the down arrow key to activate" [ref=e335]:
                        - generic [ref=e337]: available button Remove Format. Press the down arrow key to activate
                      - option "available button table. Press the down arrow key to activate" [ref=e338]:
                        - generic [ref=e340]: available button table. Press the down arrow key to activate
                      - option "available button Indent. Press the down arrow key to activate" [ref=e341]:
                        - generic [ref=e343]: available button Indent. Press the down arrow key to activate
                      - option "available button Outdent. Press the down arrow key to activate" [ref=e344]:
                        - generic [ref=e346]: available button Outdent. Press the down arrow key to activate
                      - option "available button Language. Press the down arrow key to activate" [ref=e347]:
                        - generic [ref=e349]: available button Language. Press the down arrow key to activate
                      - option "available button Show blocks. Press the down arrow key to activate" [ref=e350]:
                        - generic [ref=e352]: available button Show blocks. Press the down arrow key to activate
                      - option "available button Fullscreen. Press the down arrow key to activate" [ref=e353]:
                        - generic [ref=e355]: available button Fullscreen. Press the down arrow key to activate
                  - generic [ref=e356]:
                    - text: Button divider
                    - listbox "Button divider" [ref=e357]:
                      - option "available button Divider. Press the down arrow key to use this divider in the active button list" [ref=e358]:
                        - generic [ref=e360]: available button Divider. Press the down arrow key to use this divider in the active button list
                      - option "available button Wrapping. Press the down arrow key to use this divider in the active button list" [ref=e361]:
                        - generic [ref=e363]: available button Wrapping. Press the down arrow key to use this divider in the active button list
                - generic [ref=e364]:
                  - text: Active toolbar
                  - listbox "Active toolbar" [ref=e365]:
                    - option "active button Bold. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e366]:
                      - generic [ref=e368]: active button Bold. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Italic. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e369]:
                      - generic [ref=e371]: active button Italic. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e372]:
                      - generic [ref=e374]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Link. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e375]:
                      - generic [ref=e377]: active button Link. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e378]:
                      - generic [ref=e380]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Bulleted list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e381]:
                      - generic [ref=e383]: active button Bulleted list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Numbered list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e384]:
                      - generic [ref=e386]: active button Numbered list. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e387]:
                      - generic [ref=e389]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Block quote. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e390]:
                      - generic [ref=e392]: active button Block quote. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Image. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e393]:
                      - generic [ref=e395]: active button Image. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e396]:
                      - generic [ref=e398]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Heading. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e399]:
                      - generic [ref=e401]: active button Heading. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Code. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e402]:
                      - generic [ref=e404]: active button Code. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e405]:
                      - generic [ref=e407]: active button Divider. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
                    - option "active button Source. Press the up arrow key to deactivate. Use the right and left arrow keys to move position" [ref=e408]:
                      - generic [ref=e410]: active button Source. Press the up arrow key to deactivate. Use the right and left arrow keys to move position
              - generic [ref=e411]: "{\"undo\":{\"label\":\"Undo\"},\"redo\":{\"label\":\"Redo\"},\"heading\":{\"label\":\"Heading\"},\"style\":{\"label\":\"Style\"},\"specialCharacters\":{\"label\":\"Special characters\"},\"sourceEditing\":{\"label\":\"Source\"},\"bold\":{\"label\":\"Bold\"},\"italic\":{\"label\":\"Italic\"},\"underline\":{\"label\":\"Underline\"},\"code\":{\"label\":\"Code\"},\"codeBlock\":{\"label\":\"Code Block\"},\"strikethrough\":{\"label\":\"Strikethrough\"},\"subscript\":{\"label\":\"Subscript\"},\"superscript\":{\"label\":\"Superscript\"},\"blockQuote\":{\"label\":\"Block quote\"},\"link\":{\"label\":\"Link\"},\"bulletedList\":{\"label\":\"Bulleted list\"},\"numberedList\":{\"label\":\"Numbered list\"},\"horizontalLine\":{\"label\":\"Horizontal line\"},\"alignment\":{\"label\":\"Text alignment\"},\"removeFormat\":{\"label\":\"Remove Format\"},\"insertTable\":{\"label\":\"table\"},\"drupalInsertImage\":{\"label\":\"Image\"},\"indent\":{\"label\":\"Indent\"},\"outdent\":{\"label\":\"Outdent\"},\"textPartLanguage\":{\"label\":\"Language\"},\"showBlocks\":{\"label\":\"Show blocks\"},\"fullscreen\":{\"label\":\"Fullscreen\"}}"
              - generic [ref=e412]:
                - generic [ref=e413] [cursor=pointer]: Toolbar items
                - textbox [ref=e415]: "[\"bold\",\"italic\",\"|\",\"link\",\"|\",\"bulletedList\",\"numberedList\",\"|\",\"blockQuote\",\"drupalInsertImage\",\"|\",\"heading\",\"code\",\"|\",\"sourceEditing\"]"
          - generic [ref=e416]: Press the down arrow key to add to the toolbar.
          - generic [ref=e417]: Move this button in the toolbar by pressing the left or right arrow keys. Press the up arrow key to remove from the toolbar.
          - generic [ref=e418]:
            - generic [ref=e419] [cursor=pointer]: CKEditor 5 plugin settings
            - generic [ref=e420]:
              - list [ref=e421]:
                - listitem [ref=e422]:
                  - link "Headings" [ref=e423] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-heading"
                    - strong [ref=e425]: Headings
                - listitem [ref=e426]:
                  - link "Source editing" [ref=e427] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-sourceediting"
                    - strong [ref=e429]: Source editing
                - listitem [ref=e430]:
                  - link "List" [ref=e431] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-list"
                    - strong [ref=e433]: List
                - listitem [ref=e434]:
                  - link "Image Images can only be uploaded." [ref=e435] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-image"
                    - generic [ref=e436]:
                      - strong [ref=e437]: Image
                      - generic [ref=e438]: Images can only be uploaded.
                - listitem [ref=e439]:
                  - link "Image resize" [ref=e440] [cursor=pointer]:
                    - /url: "#edit-editor-settings-plugins-ckeditor5-imageresize"
                    - strong [ref=e442]: Image resize
              - group [ref=e444]:
                - group "Enabled Headings" [ref=e447]:
                  - generic [ref=e449]: Enabled Headings
                  - generic [ref=e450]:
                    - generic [ref=e451]:
                      - checkbox "Heading 1" [ref=e452]
                      - text: Heading 1
                    - generic [ref=e453]:
                      - checkbox "Heading 2" [checked] [ref=e454]
                      - text: Heading 2
                    - generic [ref=e455]:
                      - checkbox "Heading 3" [checked] [ref=e456]
                      - text: Heading 3
                    - generic [ref=e457]:
                      - checkbox "Heading 4" [checked] [ref=e458]
                      - text: Heading 4
                    - generic [ref=e459]:
                      - checkbox "Heading 5" [checked] [ref=e460]
                      - text: Heading 5
                    - generic [ref=e461]:
                      - checkbox "Heading 6" [checked] [ref=e462]
                      - text: Heading 6
                    - generic [ref=e463]: These are the headings that will appear in the headings dropdown. If a heading is not chosen here, it does not necessarily mean the corresponding tag is disallowed in the text format.
        - generic [ref=e465]:
          - generic [ref=e466] [cursor=pointer]: Enabled filters
          - generic [ref=e467]:
            - checkbox "Limit allowed HTML tags and correct faulty HTML" [checked] [ref=e468]
            - text: Limit allowed HTML tags and correct faulty HTML
          - generic [ref=e469]:
            - checkbox "Display any HTML as plain text" [ref=e470]
            - text: Display any HTML as plain text
          - generic [ref=e471]:
            - checkbox "Entity links" [ref=e472]
            - text: Entity links
            - generic [ref=e473]:
              - text: Updates entity links with
              - code [ref=e474]: data-entity-type
              - text: and
              - code [ref=e475]: data-entity-uuid
              - text: attributes to point to the latest entity URL aliases.
          - generic [ref=e476]:
            - checkbox "Convert line breaks into HTML (i.e. <br> and <p>)" [ref=e477]
            - generic [ref=e478] [cursor=pointer]:
              - text: Convert line breaks into HTML (i.e.
              - code [ref=e479]: <br>
              - text: and
              - code [ref=e480]: <p>
              - text: )
          - generic [ref=e481]:
            - checkbox "Convert URLs into links" [ref=e482]
            - text: Convert URLs into links
          - generic [ref=e483]:
            - checkbox "Align images" [checked] [ref=e484]
            - text: Align images
            - generic [ref=e485]:
              - text: Uses a
              - code [ref=e486]: data-align
              - text: attribute on
              - code [ref=e487]: <img>
              - text: tags to align images.
          - generic [ref=e488]:
            - checkbox "Caption images" [checked] [ref=e489]
            - text: Caption images
            - generic [ref=e490]:
              - text: Uses a
              - code [ref=e491]: data-caption
              - text: attribute on
              - code [ref=e492]: <img>
              - text: tags to caption images.
          - generic [ref=e493]:
            - checkbox "Restrict images to this site" [checked] [ref=e494]
            - text: Restrict images to this site
            - generic [ref=e495]: Disallows usage of <img> tag sources that are not hosted on this site by replacing them with a placeholder image.
          - generic [ref=e496]:
            - checkbox "Correct faulty and chopped off HTML" [ref=e497]
            - text: Correct faulty and chopped off HTML
          - generic [ref=e498]:
            - checkbox "Track images uploaded via a Text Editor" [checked] [ref=e499]
            - text: Track images uploaded via a Text Editor
            - generic [ref=e500]: Ensures that the latest versions of images uploaded via a Text Editor are displayed, along with their dimensions.
          - generic [ref=e501]:
            - checkbox "Lazy load images" [checked] [ref=e502]
            - text: Lazy load images
            - generic [ref=e503]:
              - text: Instruct browsers to lazy load images if dimensions are specified. Use in conjunction with and place after the 'Track images uploaded via a Text Editor' filter that adds image dimensions required for lazy loading. Results can be overridden by
              - code [ref=e504]: <img loading="eager">
              - text: .
        - generic [ref=e505]:
          - generic [ref=e506] [cursor=pointer]: Filter processing order
          - button "Show row weights" [ref=e508] [cursor=pointer]:
            - generic [ref=e509]: Show row weights
          - table [ref=e510]:
            - rowgroup [ref=e511]:
              - row "Limit allowed HTML tags and correct faulty HTML" [ref=e512]:
                - cell "Limit allowed HTML tags and correct faulty HTML" [ref=e513]:
                  - generic [ref=e514]:
                    - link "Change order" [ref=e515]:
                      - /url: "#"
                    - generic [ref=e516]: Limit allowed HTML tags and correct faulty HTML
                - cell [ref=e517]
                - cell [ref=e518]
              - row "Align images" [ref=e519]:
                - cell "Align images" [ref=e520]:
                  - generic [ref=e521]:
                    - link "Change order" [ref=e522]:
                      - /url: "#"
                    - generic [ref=e523]: Align images
                - cell [ref=e524]
                - cell [ref=e525]
              - row "Caption images" [ref=e526]:
                - cell "Caption images" [ref=e527]:
                  - generic [ref=e528]:
                    - link "Change order" [ref=e529]:
                      - /url: "#"
                    - generic [ref=e530]: Caption images
                - cell [ref=e531]
                - cell [ref=e532]
              - row "Restrict images to this site" [ref=e533]:
                - cell "Restrict images to this site" [ref=e534]:
                  - generic [ref=e535]:
                    - link "Change order" [ref=e536]:
                      - /url: "#"
                    - generic [ref=e537]: Restrict images to this site
                - cell [ref=e538]
                - cell [ref=e539]
              - row "Track images uploaded via a Text Editor" [ref=e540]:
                - cell "Track images uploaded via a Text Editor" [ref=e541]:
                  - generic [ref=e542]:
                    - link "Change order" [ref=e543]:
                      - /url: "#"
                    - generic [ref=e544]: Track images uploaded via a Text Editor
                - cell [ref=e545]
                - cell [ref=e546]
              - row "Lazy load images" [ref=e547]:
                - cell "Lazy load images" [ref=e548]:
                  - generic [ref=e549]:
                    - link "Change order" [ref=e550]:
                      - /url: "#"
                    - generic [ref=e551]: Lazy load images
                - cell [ref=e552]
                - cell [ref=e553]
        - generic [ref=e554]:
          - generic [ref=e555] [cursor=pointer]: Filter settings
          - generic [ref=e556]:
            - list [ref=e557]:
              - listitem [ref=e558]:
                - link "Limit allowed HTML tags and correct faulty HTML Enabled (active tab)" [ref=e559] [cursor=pointer]:
                  - /url: "#edit-filters-filter-html-settings"
                  - generic [ref=e560]:
                    - strong [ref=e561]: Limit allowed HTML tags and correct faulty HTML
                    - generic [ref=e562]: Enabled
                  - generic [ref=e563]: (active tab)
            - group [ref=e565]:
              - generic [ref=e567]:
                - generic [ref=e568]:
                  - generic [ref=e569] [cursor=pointer]: Allowed HTML tags
                  - textbox "Allowed HTML tags" [ref=e571]: <br> <p> <h2 id> <h3 id> <h4 id> <h5 id> <h6 id> <cite> <dl> <dt> <dd> <a hreflang href> <blockquote cite> <ul type> <ol start type> <strong> <em> <code> <li> <img src alt data-entity-uuid data-entity-type height width data-caption data-align>
                  - generic [ref=e572]: With CKEditor 5 this is a read-only field. The allowed HTML tags and attributes are determined by the CKEditor 5 configuration. Manually removing tags would break enabled functionality, and any manually added tags would be removed by CKEditor 5 on render.
                - generic [ref=e573]:
                  - checkbox "Display basic HTML help in long filter tips" [ref=e574]
                  - text: Display basic HTML help in long filter tips
                - generic [ref=e575]:
                  - checkbox "Add rel=\"nofollow\" to all links" [ref=e576]
                  - text: Add rel="nofollow" to all links
        - button "Save configuration" [ref=e578] [cursor=pointer]
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