# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-block-layout >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-wide/vrt/structure.spec.ts/structure-block-layout.png, writing actual.
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
            - button "Collapse Structure" [ref=e52] [cursor=pointer]:
              - img [ref=e53]
              - generic [ref=e55]: Collapse
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
                    - /url: /user/logout?token=eo89YCrv2zKQc3N32SW-D_UUgmk2ti5UPbpdR-kaC2Q
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
        - link "Structure" [ref=e243] [cursor=pointer]:
          - /url: /admin/structure
  - generic [ref=e244]:
    - banner [ref=e245]:
      - heading "Block layout" [level=1] [ref=e249]
    - generic [ref=e250]:
      - generic [ref=e252]:
        - heading "Secondary tabs" [level=2] [ref=e253]
        - navigation "Secondary tabs" [ref=e254]:
          - list [ref=e255]:
            - listitem [ref=e256]:
              - link "Olivero" [ref=e257] [cursor=pointer]:
                - /url: /admin/structure/block
            - listitem [ref=e258]:
              - link "Claro" [ref=e259] [cursor=pointer]:
                - /url: /admin/structure/block/list/claro
            - listitem [ref=e260]:
              - link "Default Admin" [ref=e261] [cursor=pointer]:
                - /url: /admin/structure/block/list/default_admin
      - main [ref=e262]:
        - complementary [ref=e266]:
          - paragraph [ref=e267]:
            - text: Block placement is specific to each theme on your site. Changes will not be saved until you click
            - emphasis [ref=e268]: Save blocks
            - text: at the bottom of the page.
          - paragraph [ref=e269]:
            - link "Demonstrate block regions (Olivero)" [ref=e270] [cursor=pointer]:
              - /url: /admin/structure/block/demo/olivero
        - generic [ref=e273]:
          - generic [ref=e274]:
            - button "Show row weights" [ref=e276] [cursor=pointer]:
              - generic [ref=e277]: Show row weights
            - table [ref=e279]:
              - rowgroup [ref=e280]:
                - row "Block Category Region Operations" [ref=e281]:
                  - columnheader "Block" [ref=e282]
                  - columnheader "Category" [ref=e283]
                  - columnheader "Region" [ref=e284]
                  - columnheader "Operations" [ref=e285]
              - rowgroup [ref=e286]:
                - row "Header Place block in the Header region" [ref=e287]:
                  - cell "Header Place block in the Header region" [ref=e288]:
                    - text: Header
                    - link "Place block in the Header region" [ref=e290] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=header
                      - text: Place block
                      - generic [ref=e291]:
                        - text: in the
                        - emphasis [ref=e292]: Header
                        - text: region
                - row "Site branding System Region for Site branding block * Header Edit Site branding List additional actions" [ref=e293]:
                  - cell "Site branding" [ref=e294]:
                    - generic [ref=e295]:
                      - link "Change order" [ref=e296]:
                        - /url: "#"
                      - generic [ref=e297]: Site branding
                  - cell "System" [ref=e298]
                  - cell "Region for Site branding block * Header" [ref=e299]:
                    - generic [ref=e300]:
                      - generic [ref=e301] [cursor=pointer]: Region for Site branding block *
                      - combobox "Region for Site branding block *" [ref=e302]:
                        - option "Header" [selected]
                        - option "Primary menu"
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted"
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above"
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit Site branding List additional actions" [ref=e303]:
                    - list [ref=e306]:
                      - listitem [ref=e307]:
                        - link "Edit Site branding" [ref=e308] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_site_branding?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e309]:
                          - generic [ref=e310]: List additional actions
                - row "Primary menu Place block in the Primary menu region" [ref=e311]:
                  - cell "Primary menu Place block in the Primary menu region" [ref=e312]:
                    - text: Primary menu
                    - link "Place block in the Primary menu region" [ref=e314] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=primary_menu
                      - text: Place block
                      - generic [ref=e315]:
                        - text: in the
                        - emphasis [ref=e316]: Primary menu
                        - text: region
                - row "Main navigation Menus Region for Main navigation block * Primary menu Edit Main navigation List additional actions" [ref=e317]:
                  - cell "Main navigation" [ref=e318]:
                    - generic [ref=e319]:
                      - link "Change order" [ref=e320]:
                        - /url: "#"
                      - generic [ref=e321]: Main navigation
                  - cell "Menus" [ref=e322]
                  - cell "Region for Main navigation block * Primary menu" [ref=e323]:
                    - generic [ref=e324]:
                      - generic [ref=e325] [cursor=pointer]: Region for Main navigation block *
                      - combobox "Region for Main navigation block *" [ref=e326]:
                        - option "Header"
                        - option "Primary menu" [selected]
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted"
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above"
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit Main navigation List additional actions" [ref=e327]:
                    - list [ref=e330]:
                      - listitem [ref=e331]:
                        - link "Edit Main navigation" [ref=e332] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_main_menu?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e333]:
                          - generic [ref=e334]: List additional actions
                - row "Secondary menu Place block in the Secondary menu region" [ref=e335]:
                  - cell "Secondary menu Place block in the Secondary menu region" [ref=e336]:
                    - text: Secondary menu
                    - link "Place block in the Secondary menu region" [ref=e338] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=secondary_menu
                      - text: Place block
                      - generic [ref=e339]:
                        - text: in the
                        - emphasis [ref=e340]: Secondary menu
                        - text: region
                - row "User account menu Menus Region for User account menu block * Secondary menu Edit User account menu List additional actions" [ref=e341]:
                  - cell "User account menu" [ref=e342]:
                    - generic [ref=e343]:
                      - link "Change order" [ref=e344]:
                        - /url: "#"
                      - generic [ref=e345]: User account menu
                  - cell "Menus" [ref=e346]
                  - cell "Region for User account menu block * Secondary menu" [ref=e347]:
                    - generic [ref=e348]:
                      - generic [ref=e349] [cursor=pointer]: Region for User account menu block *
                      - combobox "Region for User account menu block *" [ref=e350]:
                        - option "Header"
                        - option "Primary menu"
                        - option "Secondary menu" [selected]
                        - option "Hero (full width)"
                        - option "Highlighted"
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above"
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit User account menu List additional actions" [ref=e351]:
                    - list [ref=e354]:
                      - listitem [ref=e355]:
                        - link "Edit User account menu" [ref=e356] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_account_menu?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e357]:
                          - generic [ref=e358]: List additional actions
                - row "Hero (full width) Place block in the Hero (full width) region" [ref=e359]:
                  - cell "Hero (full width) Place block in the Hero (full width) region" [ref=e360]:
                    - text: Hero (full width)
                    - link "Place block in the Hero (full width) region" [ref=e362] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=hero
                      - text: Place block
                      - generic [ref=e363]:
                        - text: in the
                        - emphasis [ref=e364]: Hero (full width)
                        - text: region
                - row "No blocks in this region" [ref=e365]:
                  - cell "No blocks in this region" [ref=e366]:
                    - emphasis [ref=e367]: No blocks in this region
                - row "Highlighted Place block in the Highlighted region" [ref=e368]:
                  - cell "Highlighted Place block in the Highlighted region" [ref=e369]:
                    - text: Highlighted
                    - link "Place block in the Highlighted region" [ref=e371] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=highlighted
                      - text: Place block
                      - generic [ref=e372]:
                        - text: in the
                        - emphasis [ref=e373]: Highlighted
                        - text: region
                - row "Primary admin actions core Region for Primary admin actions block * Highlighted Edit Primary admin actions List additional actions" [ref=e374]:
                  - cell "Primary admin actions" [ref=e375]:
                    - generic [ref=e376]:
                      - link "Change order" [ref=e377]:
                        - /url: "#"
                      - generic [ref=e378]: Primary admin actions
                  - cell "core" [ref=e379]
                  - cell "Region for Primary admin actions block * Highlighted" [ref=e380]:
                    - generic [ref=e381]:
                      - generic [ref=e382] [cursor=pointer]: Region for Primary admin actions block *
                      - combobox "Region for Primary admin actions block *" [ref=e383]:
                        - option "Header"
                        - option "Primary menu"
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted" [selected]
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above"
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit Primary admin actions List additional actions" [ref=e384]:
                    - list [ref=e387]:
                      - listitem [ref=e388]:
                        - link "Edit Primary admin actions" [ref=e389] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_primary_admin_actions?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e390]:
                          - generic [ref=e391]: List additional actions
                - row "Status messages System Region for Status messages block * Highlighted Edit Status messages List additional actions" [ref=e392]:
                  - cell "Status messages" [ref=e393]:
                    - generic [ref=e394]:
                      - link "Change order" [ref=e395]:
                        - /url: "#"
                      - generic [ref=e396]: Status messages
                  - cell "System" [ref=e397]
                  - cell "Region for Status messages block * Highlighted" [ref=e398]:
                    - generic [ref=e399]:
                      - generic [ref=e400] [cursor=pointer]: Region for Status messages block *
                      - combobox "Region for Status messages block *" [ref=e401]:
                        - option "Header"
                        - option "Primary menu"
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted" [selected]
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above"
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit Status messages List additional actions" [ref=e402]:
                    - list [ref=e405]:
                      - listitem [ref=e406]:
                        - link "Edit Status messages" [ref=e407] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_messages?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e408]:
                          - generic [ref=e409]: List additional actions
                - row "Primary tabs core Region for Primary tabs block * Highlighted Edit Primary tabs List additional actions" [ref=e410]:
                  - cell "Primary tabs" [ref=e411]:
                    - generic [ref=e412]:
                      - link "Change order" [ref=e413]:
                        - /url: "#"
                      - generic [ref=e414]: Primary tabs
                  - cell "core" [ref=e415]
                  - cell "Region for Primary tabs block * Highlighted" [ref=e416]:
                    - generic [ref=e417]:
                      - generic [ref=e418] [cursor=pointer]: Region for Primary tabs block *
                      - combobox "Region for Primary tabs block *" [ref=e419]:
                        - option "Header"
                        - option "Primary menu"
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted" [selected]
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above"
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit Primary tabs List additional actions" [ref=e420]:
                    - list [ref=e423]:
                      - listitem [ref=e424]:
                        - link "Edit Primary tabs" [ref=e425] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_primary_local_tasks?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e426]:
                          - generic [ref=e427]: List additional actions
                - row "Secondary tabs core Region for Secondary tabs block * Highlighted Edit Secondary tabs List additional actions" [ref=e428]:
                  - cell "Secondary tabs" [ref=e429]:
                    - generic [ref=e430]:
                      - link "Change order" [ref=e431]:
                        - /url: "#"
                      - generic [ref=e432]: Secondary tabs
                  - cell "core" [ref=e433]
                  - cell "Region for Secondary tabs block * Highlighted" [ref=e434]:
                    - generic [ref=e435]:
                      - generic [ref=e436] [cursor=pointer]: Region for Secondary tabs block *
                      - combobox "Region for Secondary tabs block *" [ref=e437]:
                        - option "Header"
                        - option "Primary menu"
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted" [selected]
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above"
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit Secondary tabs List additional actions" [ref=e438]:
                    - list [ref=e441]:
                      - listitem [ref=e442]:
                        - link "Edit Secondary tabs" [ref=e443] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_secondary_local_tasks?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e444]:
                          - generic [ref=e445]: List additional actions
                - row "Breadcrumb Place block in the Breadcrumb region" [ref=e446]:
                  - cell "Breadcrumb Place block in the Breadcrumb region" [ref=e447]:
                    - text: Breadcrumb
                    - link "Place block in the Breadcrumb region" [ref=e449] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=breadcrumb
                      - text: Place block
                      - generic [ref=e450]:
                        - text: in the
                        - emphasis [ref=e451]: Breadcrumb
                        - text: region
                - row "Breadcrumbs System Region for Breadcrumbs block * Breadcrumb Edit Breadcrumbs List additional actions" [ref=e452]:
                  - cell "Breadcrumbs" [ref=e453]:
                    - generic [ref=e454]:
                      - link "Change order" [ref=e455]:
                        - /url: "#"
                      - generic [ref=e456]: Breadcrumbs
                  - cell "System" [ref=e457]
                  - cell "Region for Breadcrumbs block * Breadcrumb" [ref=e458]:
                    - generic [ref=e459]:
                      - generic [ref=e460] [cursor=pointer]: Region for Breadcrumbs block *
                      - combobox "Region for Breadcrumbs block *" [ref=e461]:
                        - option "Header"
                        - option "Primary menu"
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted"
                        - option "Breadcrumb" [selected]
                        - option "Social Bar"
                        - option "Content Above"
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit Breadcrumbs List additional actions" [ref=e462]:
                    - list [ref=e465]:
                      - listitem [ref=e466]:
                        - link "Edit Breadcrumbs" [ref=e467] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_breadcrumbs?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e468]:
                          - generic [ref=e469]: List additional actions
                - row "Social Bar Place block in the Social Bar region" [ref=e470]:
                  - cell "Social Bar Place block in the Social Bar region" [ref=e471]:
                    - text: Social Bar
                    - link "Place block in the Social Bar region" [ref=e473] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=social
                      - text: Place block
                      - generic [ref=e474]:
                        - text: in the
                        - emphasis [ref=e475]: Social Bar
                        - text: region
                - row "No blocks in this region" [ref=e476]:
                  - cell "No blocks in this region" [ref=e477]:
                    - emphasis [ref=e478]: No blocks in this region
                - row "Content Above Place block in the Content Above region" [ref=e479]:
                  - cell "Content Above Place block in the Content Above region" [ref=e480]:
                    - text: Content Above
                    - link "Place block in the Content Above region" [ref=e482] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=content_above
                      - text: Place block
                      - generic [ref=e483]:
                        - text: in the
                        - emphasis [ref=e484]: Content Above
                        - text: region
                - row "Page title core Region for Page title block * Content Above Edit Page title List additional actions" [ref=e485]:
                  - cell "Page title" [ref=e486]:
                    - generic [ref=e487]:
                      - link "Change order" [ref=e488]:
                        - /url: "#"
                      - generic [ref=e489]: Page title
                  - cell "core" [ref=e490]
                  - cell "Region for Page title block * Content Above" [ref=e491]:
                    - generic [ref=e492]:
                      - generic [ref=e493] [cursor=pointer]: Region for Page title block *
                      - combobox "Region for Page title block *" [ref=e494]:
                        - option "Header"
                        - option "Primary menu"
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted"
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above" [selected]
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit Page title List additional actions" [ref=e495]:
                    - list [ref=e498]:
                      - listitem [ref=e499]:
                        - link "Edit Page title" [ref=e500] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_page_title?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e501]:
                          - generic [ref=e502]: List additional actions
                - row "Help Help Region for Help block * Content Above Edit Help List additional actions" [ref=e503]:
                  - cell "Help" [ref=e504]:
                    - generic [ref=e505]:
                      - link "Change order" [ref=e506]:
                        - /url: "#"
                      - generic [ref=e507]: Help
                  - cell "Help" [ref=e508]
                  - cell "Region for Help block * Content Above" [ref=e509]:
                    - generic [ref=e510]:
                      - generic [ref=e511] [cursor=pointer]: Region for Help block *
                      - combobox "Region for Help block *" [ref=e512]:
                        - option "Header"
                        - option "Primary menu"
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted"
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above" [selected]
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit Help List additional actions" [ref=e513]:
                    - list [ref=e516]:
                      - listitem [ref=e517]:
                        - link "Edit Help" [ref=e518] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_help?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e519]:
                          - generic [ref=e520]: List additional actions
                - row "Content Place block in the Content region" [ref=e521]:
                  - cell "Content Place block in the Content region" [ref=e522]:
                    - text: Content
                    - link "Place block in the Content region" [ref=e524] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=content
                      - text: Place block
                      - generic [ref=e525]:
                        - text: in the
                        - emphasis [ref=e526]: Content
                        - text: region
                - row "Main page content System Region for Main page content block * Content Edit Main page content List additional actions" [ref=e527]:
                  - cell "Main page content" [ref=e528]:
                    - generic [ref=e529]:
                      - link "Change order" [ref=e530]:
                        - /url: "#"
                      - generic [ref=e531]: Main page content
                  - cell "System" [ref=e532]
                  - cell "Region for Main page content block * Content" [ref=e533]:
                    - generic [ref=e534]:
                      - generic [ref=e535] [cursor=pointer]: Region for Main page content block *
                      - combobox "Region for Main page content block *" [ref=e536]:
                        - option "Header"
                        - option "Primary menu"
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted"
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above"
                        - option "Content" [selected]
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom"
                  - cell "Edit Main page content List additional actions" [ref=e537]:
                    - list [ref=e540]:
                      - listitem [ref=e541]:
                        - link "Edit Main page content" [ref=e542] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_content?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e543]:
                          - generic [ref=e544]: List additional actions
                - row "Sidebar Place block in the Sidebar region" [ref=e545]:
                  - cell "Sidebar Place block in the Sidebar region" [ref=e546]:
                    - text: Sidebar
                    - link "Place block in the Sidebar region" [ref=e548] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=sidebar
                      - text: Place block
                      - generic [ref=e549]:
                        - text: in the
                        - emphasis [ref=e550]: Sidebar
                        - text: region
                - row "No blocks in this region" [ref=e551]:
                  - cell "No blocks in this region" [ref=e552]:
                    - emphasis [ref=e553]: No blocks in this region
                - row "Content Below Place block in the Content Below region" [ref=e554]:
                  - cell "Content Below Place block in the Content Below region" [ref=e555]:
                    - text: Content Below
                    - link "Place block in the Content Below region" [ref=e557] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=content_below
                      - text: Place block
                      - generic [ref=e558]:
                        - text: in the
                        - emphasis [ref=e559]: Content Below
                        - text: region
                - row "No blocks in this region" [ref=e560]:
                  - cell "No blocks in this region" [ref=e561]:
                    - emphasis [ref=e562]: No blocks in this region
                - row "Footer Top Place block in the Footer Top region" [ref=e563]:
                  - cell "Footer Top Place block in the Footer Top region" [ref=e564]:
                    - text: Footer Top
                    - link "Place block in the Footer Top region" [ref=e566] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=footer_top
                      - text: Place block
                      - generic [ref=e567]:
                        - text: in the
                        - emphasis [ref=e568]: Footer Top
                        - text: region
                - row "No blocks in this region" [ref=e569]:
                  - cell "No blocks in this region" [ref=e570]:
                    - emphasis [ref=e571]: No blocks in this region
                - row "Footer Bottom Place block in the Footer Bottom region" [ref=e572]:
                  - cell "Footer Bottom Place block in the Footer Bottom region" [ref=e573]:
                    - text: Footer Bottom
                    - link "Place block in the Footer Bottom region" [ref=e575] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=footer_bottom
                      - text: Place block
                      - generic [ref=e576]:
                        - text: in the
                        - emphasis [ref=e577]: Footer Bottom
                        - text: region
                - row "Powered by Drupal System Region for Powered by Drupal block * Footer Bottom Edit Powered by Drupal List additional actions" [ref=e578]:
                  - cell "Powered by Drupal" [ref=e579]:
                    - generic [ref=e580]:
                      - link "Change order" [ref=e581]:
                        - /url: "#"
                      - generic [ref=e582]: Powered by Drupal
                  - cell "System" [ref=e583]
                  - cell "Region for Powered by Drupal block * Footer Bottom" [ref=e584]:
                    - generic [ref=e585]:
                      - generic [ref=e586] [cursor=pointer]: Region for Powered by Drupal block *
                      - combobox "Region for Powered by Drupal block *" [ref=e587]:
                        - option "Header"
                        - option "Primary menu"
                        - option "Secondary menu"
                        - option "Hero (full width)"
                        - option "Highlighted"
                        - option "Breadcrumb"
                        - option "Social Bar"
                        - option "Content Above"
                        - option "Content"
                        - option "Sidebar"
                        - option "Content Below"
                        - option "Footer Top"
                        - option "Footer Bottom" [selected]
                  - cell "Edit Powered by Drupal List additional actions" [ref=e588]:
                    - list [ref=e591]:
                      - listitem [ref=e592]:
                        - link "Edit Powered by Drupal" [ref=e593] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_powered?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e594]:
                          - generic [ref=e595]: List additional actions
          - button "Save blocks" [ref=e597] [cursor=pointer]
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-wide/vrt/structure.spec.ts/structure-block-layout.png, writing actual.
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