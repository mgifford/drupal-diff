# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-text-formats-basic-html >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow-dark/vrt/config.spec.ts/config-text-formats-basic-html.png, writing actual.
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
              - group [ref=e190]:
                - button "Headings" [expanded] [ref=e191] [cursor=pointer]: Headings
                - group "Enabled Headings" [ref=e194]:
                  - generic [ref=e196]: Enabled Headings
                  - generic [ref=e197]:
                    - generic [ref=e198]:
                      - checkbox "Heading 1" [ref=e199] [cursor=pointer]
                      - text: Heading 1
                    - generic [ref=e200]:
                      - checkbox "Heading 2" [checked] [ref=e201] [cursor=pointer]
                      - text: Heading 2
                    - generic [ref=e202]:
                      - checkbox "Heading 3" [checked] [ref=e203] [cursor=pointer]
                      - text: Heading 3
                    - generic [ref=e204]:
                      - checkbox "Heading 4" [checked] [ref=e205] [cursor=pointer]
                      - text: Heading 4
                    - generic [ref=e206]:
                      - checkbox "Heading 5" [checked] [ref=e207] [cursor=pointer]
                      - text: Heading 5
                    - generic [ref=e208]:
                      - checkbox "Heading 6" [checked] [ref=e209] [cursor=pointer]
                      - text: Heading 6
                    - generic [ref=e210]: These are the headings that will appear in the headings dropdown. If a heading is not chosen here, it does not necessarily mean the corresponding tag is disallowed in the text format.
              - group [ref=e211]:
                - button "Source editing" [expanded] [ref=e212] [cursor=pointer]: Source editing
                - generic [ref=e215]:
                  - generic [ref=e216] [cursor=pointer]: Manually editable HTML tags
                  - textbox "Manually editable HTML tags" [ref=e218]: <cite> <dl> <dt> <dd> <a hreflang> <blockquote cite> <h2 id> <h3 id> <h4 id> <h5 id> <h6 id>
                  - generic [ref=e219]:
                    - text: A list of HTML tags that can be used while editing source. It is only necessary to add tags that are not already supported by other enabled plugins. For example, if "Bold" is enabled, it is not necessary to add the
                    - code [ref=e220]: <strong>
                    - text: tag, but it may be necessary to add
                    - code [ref=e221]: <dl><dt><dd>
                    - text: in a format that does not have a definition list plugin, but requires definition list markup.
              - group [ref=e222]:
                - button "List" [expanded] [ref=e223] [cursor=pointer]: List
                - generic [ref=e225]:
                  - generic [ref=e226]:
                    - checkbox "Allow the user to reverse an ordered list" [ref=e227] [cursor=pointer]
                    - text: Allow the user to reverse an ordered list
                  - generic [ref=e228]:
                    - checkbox "Allow the user to specify the start index of an ordered list" [checked] [ref=e229] [cursor=pointer]
                    - text: Allow the user to specify the start index of an ordered list
                  - generic [ref=e230]:
                    - checkbox "Allow the user to create paragraphs in list items (or other block elements)" [checked] [ref=e231] [cursor=pointer]
                    - text: Allow the user to create paragraphs in list items (or other block elements)
                  - generic [ref=e232]:
                    - checkbox "Allow the user to choose a list style type" [checked] [ref=e233] [cursor=pointer]
                    - text: Allow the user to choose a list style type
                    - generic [ref=e234]: "Available list style types for ordered lists: letters and Roman numerals instead of only numbers. Available list style types for unordered lists: circles and squares instead of only discs."
              - group [ref=e235]:
                - button "Image Images can only be uploaded." [expanded] [ref=e236] [cursor=pointer]:
                  - text: Image
                  - generic [ref=e237]: Images can only be uploaded.
                - generic [ref=e239]:
                  - generic [ref=e240]:
                    - checkbox "Enable image uploads" [checked] [ref=e241] [cursor=pointer]
                    - text: Enable image uploads
                    - generic [ref=e242]: When enabled, images can only be uploaded. When disabled, images can only be added by URL.
                  - generic [ref=e243]:
                    - generic [ref=e244] [cursor=pointer]: Upload directory
                    - textbox "Upload directory" [ref=e245]: inline-images
                    - generic [ref=e246]: A directory relative to Drupal's files directory where uploaded images will be stored.
                  - generic [ref=e247]:
                    - generic [ref=e248] [cursor=pointer]: Maximum file size
                    - textbox "Maximum file size" [ref=e249]:
                      - /placeholder: 100 MB
                    - generic [ref=e250]: If this is left empty, then the file size will be limited by the PHP maximum upload size of 100 MB.
                  - generic [ref=e251]:
                    - generic [ref=e252] [cursor=pointer]: Maximum dimensions
                    - generic [ref=e253]:
                      - generic [ref=e254]:
                        - generic [ref=e255] [cursor=pointer]: Width
                        - spinbutton "Width" [ref=e256]
                        - text: x
                      - generic [ref=e257]:
                        - generic [ref=e258] [cursor=pointer]: Height
                        - spinbutton "Height" [ref=e259]
                        - text: pixels
                    - generic [ref=e260]: Images larger than these dimensions will be scaled down.
              - group [ref=e261]:
                - button "Image resize" [expanded] [ref=e262] [cursor=pointer]: Image resize
                - generic [ref=e265]:
                  - checkbox "Allow the user to resize images" [checked] [ref=e266] [cursor=pointer]
                  - text: Allow the user to resize images
        - generic [ref=e268]:
          - generic [ref=e269] [cursor=pointer]: Enabled filters
          - generic [ref=e270]:
            - checkbox "Limit allowed HTML tags and correct faulty HTML" [checked] [ref=e271] [cursor=pointer]
            - text: Limit allowed HTML tags and correct faulty HTML
          - generic [ref=e272]:
            - checkbox "Display any HTML as plain text" [ref=e273] [cursor=pointer]
            - text: Display any HTML as plain text
          - generic [ref=e274]:
            - checkbox "Entity links" [ref=e275] [cursor=pointer]
            - text: Entity links
            - generic [ref=e276]:
              - text: Updates entity links with
              - code [ref=e277]: data-entity-type
              - text: and
              - code [ref=e278]: data-entity-uuid
              - text: attributes to point to the latest entity URL aliases.
          - generic [ref=e279]:
            - checkbox "Convert line breaks into HTML (i.e. <br> and <p>)" [ref=e280] [cursor=pointer]
            - generic [ref=e281] [cursor=pointer]:
              - text: Convert line breaks into HTML (i.e.
              - code [ref=e282]: <br>
              - text: and
              - code [ref=e283]: <p>
              - text: )
          - generic [ref=e284]:
            - checkbox "Convert URLs into links" [ref=e285] [cursor=pointer]
            - text: Convert URLs into links
          - generic [ref=e286]:
            - checkbox "Align images" [checked] [ref=e287] [cursor=pointer]
            - text: Align images
            - generic [ref=e288]:
              - text: Uses a
              - code [ref=e289]: data-align
              - text: attribute on
              - code [ref=e290]: <img>
              - text: tags to align images.
          - generic [ref=e291]:
            - checkbox "Caption images" [checked] [ref=e292] [cursor=pointer]
            - text: Caption images
            - generic [ref=e293]:
              - text: Uses a
              - code [ref=e294]: data-caption
              - text: attribute on
              - code [ref=e295]: <img>
              - text: tags to caption images.
          - generic [ref=e296]:
            - checkbox "Restrict images to this site" [checked] [ref=e297] [cursor=pointer]
            - text: Restrict images to this site
            - generic [ref=e298]: Disallows usage of <img> tag sources that are not hosted on this site by replacing them with a placeholder image.
          - generic [ref=e299]:
            - checkbox "Correct faulty and chopped off HTML" [ref=e300] [cursor=pointer]
            - text: Correct faulty and chopped off HTML
          - generic [ref=e301]:
            - checkbox "Track images uploaded via a Text Editor" [checked] [ref=e302] [cursor=pointer]
            - text: Track images uploaded via a Text Editor
            - generic [ref=e303]: Ensures that the latest versions of images uploaded via a Text Editor are displayed, along with their dimensions.
          - generic [ref=e304]:
            - checkbox "Lazy load images" [checked] [ref=e305] [cursor=pointer]
            - text: Lazy load images
            - generic [ref=e306]:
              - text: Instruct browsers to lazy load images if dimensions are specified. Use in conjunction with and place after the 'Track images uploaded via a Text Editor' filter that adds image dimensions required for lazy loading. Results can be overridden by
              - code [ref=e307]: <img loading="eager">
              - text: .
        - generic [ref=e308]:
          - generic [ref=e309] [cursor=pointer]: Filter processing order
          - generic [ref=e310]:
            - button "Show row weights" [ref=e312] [cursor=pointer]:
              - generic [ref=e313]: Show row weights
            - table [ref=e314]:
              - rowgroup [ref=e315]:
                - row "Limit allowed HTML tags and correct faulty HTML" [ref=e316]:
                  - cell "Limit allowed HTML tags and correct faulty HTML" [ref=e317]:
                    - generic [ref=e318]:
                      - link "Change order" [ref=e319]:
                        - /url: "#"
                      - generic [ref=e320]: Limit allowed HTML tags and correct faulty HTML
                  - cell [ref=e321]
                  - cell [ref=e322]
                - row "Align images" [ref=e323]:
                  - cell "Align images" [ref=e324]:
                    - generic [ref=e325]:
                      - link "Change order" [ref=e326]:
                        - /url: "#"
                      - generic [ref=e327]: Align images
                  - cell [ref=e328]
                  - cell [ref=e329]
                - row "Caption images" [ref=e330]:
                  - cell "Caption images" [ref=e331]:
                    - generic [ref=e332]:
                      - link "Change order" [ref=e333]:
                        - /url: "#"
                      - generic [ref=e334]: Caption images
                  - cell [ref=e335]
                  - cell [ref=e336]
                - row "Restrict images to this site" [ref=e337]:
                  - cell "Restrict images to this site" [ref=e338]:
                    - generic [ref=e339]:
                      - link "Change order" [ref=e340]:
                        - /url: "#"
                      - generic [ref=e341]: Restrict images to this site
                  - cell [ref=e342]
                  - cell [ref=e343]
                - row "Track images uploaded via a Text Editor" [ref=e344]:
                  - cell "Track images uploaded via a Text Editor" [ref=e345]:
                    - generic [ref=e346]:
                      - link "Change order" [ref=e347]:
                        - /url: "#"
                      - generic [ref=e348]: Track images uploaded via a Text Editor
                  - cell [ref=e349]
                  - cell [ref=e350]
                - row "Lazy load images" [ref=e351]:
                  - cell "Lazy load images" [ref=e352]:
                    - generic [ref=e353]:
                      - link "Change order" [ref=e354]:
                        - /url: "#"
                      - generic [ref=e355]: Lazy load images
                  - cell [ref=e356]
                  - cell [ref=e357]
                - row "Display any HTML as plain text" [ref=e358]:
                  - cell "Display any HTML as plain text" [ref=e359]:
                    - generic [ref=e360]:
                      - link "Change order" [ref=e361]:
                        - /url: "#"
                      - generic [ref=e362]: Display any HTML as plain text
                  - cell [ref=e363]
                  - cell [ref=e364]
                - row "Entity links" [ref=e365]:
                  - cell "Entity links" [ref=e366]:
                    - generic [ref=e367]:
                      - link "Change order" [ref=e368]:
                        - /url: "#"
                      - generic [ref=e369]: Entity links
                  - cell [ref=e370]
                  - cell [ref=e371]
                - row "Convert line breaks into HTML (i.e. <br> and <p> )" [ref=e372]:
                  - cell "Convert line breaks into HTML (i.e. <br> and <p> )" [ref=e373]:
                    - generic [ref=e374]:
                      - link "Change order" [ref=e375]:
                        - /url: "#"
                      - generic [ref=e376]:
                        - text: Convert line breaks into HTML (i.e.
                        - code [ref=e377]: <br>
                        - text: and
                        - code [ref=e378]: <p>
                        - text: )
                  - cell [ref=e379]
                  - cell [ref=e380]
                - row "Convert URLs into links" [ref=e381]:
                  - cell "Convert URLs into links" [ref=e382]:
                    - generic [ref=e383]:
                      - link "Change order" [ref=e384]:
                        - /url: "#"
                      - generic [ref=e385]: Convert URLs into links
                  - cell [ref=e386]
                  - cell [ref=e387]
                - row "Correct faulty and chopped off HTML" [ref=e388]:
                  - cell "Correct faulty and chopped off HTML" [ref=e389]:
                    - generic [ref=e390]:
                      - link "Change order" [ref=e391]:
                        - /url: "#"
                      - generic [ref=e392]: Correct faulty and chopped off HTML
                  - cell [ref=e393]
                  - cell [ref=e394]
        - generic [ref=e395]:
          - generic [ref=e396] [cursor=pointer]: Filter settings
          - generic [ref=e397]:
            - group [ref=e398]:
              - button "Limit allowed HTML tags and correct faulty HTML" [expanded] [ref=e399] [cursor=pointer]: Limit allowed HTML tags and correct faulty HTML
              - generic [ref=e401]:
                - generic [ref=e402]:
                  - generic [ref=e403] [cursor=pointer]: Allowed HTML tags
                  - textbox "Allowed HTML tags" [ref=e405]: <br> <p> <h2 id> <h3 id> <h4 id> <h5 id> <h6 id> <cite> <dl> <dt> <dd> <a hreflang href> <blockquote cite> <ul type> <ol start type> <strong> <em> <code> <li> <img src alt data-entity-uuid data-entity-type height width data-caption data-align>
                  - generic [ref=e406]: With CKEditor 5 this is a read-only field. The allowed HTML tags and attributes are determined by the CKEditor 5 configuration. Manually removing tags would break enabled functionality, and any manually added tags would be removed by CKEditor 5 on render.
                - generic [ref=e407]:
                  - checkbox "Display basic HTML help in long filter tips" [ref=e408] [cursor=pointer]
                  - text: Display basic HTML help in long filter tips
                - generic [ref=e409]:
                  - checkbox "Add rel=\"nofollow\" to all links" [ref=e410] [cursor=pointer]
                  - text: Add rel="nofollow" to all links
            - group [ref=e411]:
              - button "Convert URLs into links" [expanded] [ref=e412] [cursor=pointer]: Convert URLs into links
              - generic [ref=e415]:
                - generic [ref=e416] [cursor=pointer]: Maximum link text length
                - spinbutton "Maximum link text length" [ref=e417]: "72"
                - text: characters
                - generic [ref=e418]: URLs longer than this number of characters will be truncated to prevent long strings that break formatting. The link itself will be retained; just the text portion of the link will be truncated.
        - button "Save configuration" [ref=e420] [cursor=pointer]
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-narrow-dark/vrt/config.spec.ts/config-text-formats-basic-html.png, writing actual.
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