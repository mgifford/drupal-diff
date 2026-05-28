# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-block-layout >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 1280px by 3179px, received 1280px by 2613px. 109205 pixels (ratio 0.03 of all image pixels) are different.

  Snapshot: structure-block-layout.png

Call log:
  - Expect "toHaveScreenshot(structure-block-layout.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 1280px by 3179px, received 1280px by 2613px. 109194 pixels (ratio 0.03 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 1280px by 3179px, received 1280px by 2613px. 109205 pixels (ratio 0.03 of all image pixels) are different.

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
            - link "Structure" [ref=e250] [cursor=pointer]:
              - /url: /admin/structure
      - heading "Block layout" [level=1] [ref=e253]
    - generic [ref=e254]:
      - generic [ref=e256]:
        - heading "Secondary tabs" [level=2] [ref=e257]
        - navigation "Secondary tabs" [ref=e258]:
          - list [ref=e259]:
            - listitem [ref=e260]:
              - link "Olivero" [ref=e261] [cursor=pointer]:
                - /url: /admin/structure/block
            - listitem [ref=e262]:
              - link "Claro" [ref=e263] [cursor=pointer]:
                - /url: /admin/structure/block/list/claro
      - generic [ref=e264]:
        - complementary [ref=e267]:
          - paragraph [ref=e268]:
            - text: Block placement is specific to each theme on your site. Changes will not be saved until you click
            - emphasis [ref=e269]: Save blocks
            - text: at the bottom of the page.
          - paragraph [ref=e270]:
            - link "Demonstrate block regions (Olivero)" [ref=e271] [cursor=pointer]:
              - /url: /admin/structure/block/demo/olivero
        - generic [ref=e274]:
          - button "Show row weights" [ref=e276] [cursor=pointer]:
            - generic [ref=e277]: Show row weights
          - table [ref=e278]:
            - rowgroup [ref=e279]:
              - row "Block Category Region Operations" [ref=e280]:
                - columnheader "Block" [ref=e281]
                - columnheader "Category" [ref=e282]
                - columnheader "Region" [ref=e283]
                - columnheader "Operations" [ref=e284]
            - rowgroup [ref=e285]:
              - row "Header Place block in the Header region" [ref=e286]:
                - cell "Header Place block in the Header region" [ref=e287]:
                  - text: Header
                  - link "Place block in the Header region" [ref=e289] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=header
                    - text: Place block
                    - generic [ref=e290]:
                      - text: in the
                      - emphasis [ref=e291]: Header
                      - text: region
              - row "Site branding System Region for Site branding block * Header Edit Site branding List additional actions" [ref=e292]:
                - cell "Site branding" [ref=e293]:
                  - generic [ref=e294]:
                    - link "Change order" [ref=e295]:
                      - /url: "#"
                    - generic [ref=e296]: Site branding
                - cell "System" [ref=e297]
                - cell "Region for Site branding block * Header" [ref=e298]:
                  - generic [ref=e299]:
                    - generic [ref=e300] [cursor=pointer]: Region for Site branding block *
                    - combobox "Region for Site branding block *" [ref=e301]:
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
                - cell "Edit Site branding List additional actions" [ref=e302]:
                  - list [ref=e305]:
                    - listitem [ref=e306]:
                      - link "Edit Site branding" [ref=e307] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_site_branding?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e308]:
                        - generic [ref=e309]: List additional actions
              - row "Primary menu Place block in the Primary menu region" [ref=e310]:
                - cell "Primary menu Place block in the Primary menu region" [ref=e311]:
                  - text: Primary menu
                  - link "Place block in the Primary menu region" [ref=e313] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=primary_menu
                    - text: Place block
                    - generic [ref=e314]:
                      - text: in the
                      - emphasis [ref=e315]: Primary menu
                      - text: region
              - row "Main navigation Menus Region for Main navigation block * Primary menu Edit Main navigation List additional actions" [ref=e316]:
                - cell "Main navigation" [ref=e317]:
                  - generic [ref=e318]:
                    - link "Change order" [ref=e319]:
                      - /url: "#"
                    - generic [ref=e320]: Main navigation
                - cell "Menus" [ref=e321]
                - cell "Region for Main navigation block * Primary menu" [ref=e322]:
                  - generic [ref=e323]:
                    - generic [ref=e324] [cursor=pointer]: Region for Main navigation block *
                    - combobox "Region for Main navigation block *" [ref=e325]:
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
                - cell "Edit Main navigation List additional actions" [ref=e326]:
                  - list [ref=e329]:
                    - listitem [ref=e330]:
                      - link "Edit Main navigation" [ref=e331] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_main_menu?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e332]:
                        - generic [ref=e333]: List additional actions
              - row "Secondary menu Place block in the Secondary menu region" [ref=e334]:
                - cell "Secondary menu Place block in the Secondary menu region" [ref=e335]:
                  - text: Secondary menu
                  - link "Place block in the Secondary menu region" [ref=e337] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=secondary_menu
                    - text: Place block
                    - generic [ref=e338]:
                      - text: in the
                      - emphasis [ref=e339]: Secondary menu
                      - text: region
              - row "User account menu Menus Region for User account menu block * Secondary menu Edit User account menu List additional actions" [ref=e340]:
                - cell "User account menu" [ref=e341]:
                  - generic [ref=e342]:
                    - link "Change order" [ref=e343]:
                      - /url: "#"
                    - generic [ref=e344]: User account menu
                - cell "Menus" [ref=e345]
                - cell "Region for User account menu block * Secondary menu" [ref=e346]:
                  - generic [ref=e347]:
                    - generic [ref=e348] [cursor=pointer]: Region for User account menu block *
                    - combobox "Region for User account menu block *" [ref=e349]:
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
                - cell "Edit User account menu List additional actions" [ref=e350]:
                  - list [ref=e353]:
                    - listitem [ref=e354]:
                      - link "Edit User account menu" [ref=e355] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_account_menu?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e356]:
                        - generic [ref=e357]: List additional actions
              - row "Hero (full width) Place block in the Hero (full width) region" [ref=e358]:
                - cell "Hero (full width) Place block in the Hero (full width) region" [ref=e359]:
                  - text: Hero (full width)
                  - link "Place block in the Hero (full width) region" [ref=e361] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=hero
                    - text: Place block
                    - generic [ref=e362]:
                      - text: in the
                      - emphasis [ref=e363]: Hero (full width)
                      - text: region
              - row "No blocks in this region" [ref=e364]:
                - cell "No blocks in this region" [ref=e365]:
                  - emphasis [ref=e366]: No blocks in this region
              - row "Highlighted Place block in the Highlighted region" [ref=e367]:
                - cell "Highlighted Place block in the Highlighted region" [ref=e368]:
                  - text: Highlighted
                  - link "Place block in the Highlighted region" [ref=e370] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=highlighted
                    - text: Place block
                    - generic [ref=e371]:
                      - text: in the
                      - emphasis [ref=e372]: Highlighted
                      - text: region
              - row "Primary admin actions core Region for Primary admin actions block * Highlighted Edit Primary admin actions List additional actions" [ref=e373]:
                - cell "Primary admin actions" [ref=e374]:
                  - generic [ref=e375]:
                    - link "Change order" [ref=e376]:
                      - /url: "#"
                    - generic [ref=e377]: Primary admin actions
                - cell "core" [ref=e378]
                - cell "Region for Primary admin actions block * Highlighted" [ref=e379]:
                  - generic [ref=e380]:
                    - generic [ref=e381] [cursor=pointer]: Region for Primary admin actions block *
                    - combobox "Region for Primary admin actions block *" [ref=e382]:
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
                - cell "Edit Primary admin actions List additional actions" [ref=e383]:
                  - list [ref=e386]:
                    - listitem [ref=e387]:
                      - link "Edit Primary admin actions" [ref=e388] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_primary_admin_actions?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e389]:
                        - generic [ref=e390]: List additional actions
              - row "Status messages System Region for Status messages block * Highlighted Edit Status messages List additional actions" [ref=e391]:
                - cell "Status messages" [ref=e392]:
                  - generic [ref=e393]:
                    - link "Change order" [ref=e394]:
                      - /url: "#"
                    - generic [ref=e395]: Status messages
                - cell "System" [ref=e396]
                - cell "Region for Status messages block * Highlighted" [ref=e397]:
                  - generic [ref=e398]:
                    - generic [ref=e399] [cursor=pointer]: Region for Status messages block *
                    - combobox "Region for Status messages block *" [ref=e400]:
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
                - cell "Edit Status messages List additional actions" [ref=e401]:
                  - list [ref=e404]:
                    - listitem [ref=e405]:
                      - link "Edit Status messages" [ref=e406] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_messages?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e407]:
                        - generic [ref=e408]: List additional actions
              - row "Primary tabs core Region for Primary tabs block * Highlighted Edit Primary tabs List additional actions" [ref=e409]:
                - cell "Primary tabs" [ref=e410]:
                  - generic [ref=e411]:
                    - link "Change order" [ref=e412]:
                      - /url: "#"
                    - generic [ref=e413]: Primary tabs
                - cell "core" [ref=e414]
                - cell "Region for Primary tabs block * Highlighted" [ref=e415]:
                  - generic [ref=e416]:
                    - generic [ref=e417] [cursor=pointer]: Region for Primary tabs block *
                    - combobox "Region for Primary tabs block *" [ref=e418]:
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
                - cell "Edit Primary tabs List additional actions" [ref=e419]:
                  - list [ref=e422]:
                    - listitem [ref=e423]:
                      - link "Edit Primary tabs" [ref=e424] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_primary_local_tasks?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e425]:
                        - generic [ref=e426]: List additional actions
              - row "Secondary tabs core Region for Secondary tabs block * Highlighted Edit Secondary tabs List additional actions" [ref=e427]:
                - cell "Secondary tabs" [ref=e428]:
                  - generic [ref=e429]:
                    - link "Change order" [ref=e430]:
                      - /url: "#"
                    - generic [ref=e431]: Secondary tabs
                - cell "core" [ref=e432]
                - cell "Region for Secondary tabs block * Highlighted" [ref=e433]:
                  - generic [ref=e434]:
                    - generic [ref=e435] [cursor=pointer]: Region for Secondary tabs block *
                    - combobox "Region for Secondary tabs block *" [ref=e436]:
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
                - cell "Edit Secondary tabs List additional actions" [ref=e437]:
                  - list [ref=e440]:
                    - listitem [ref=e441]:
                      - link "Edit Secondary tabs" [ref=e442] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_secondary_local_tasks?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e443]:
                        - generic [ref=e444]: List additional actions
              - row "Breadcrumb Place block in the Breadcrumb region" [ref=e445]:
                - cell "Breadcrumb Place block in the Breadcrumb region" [ref=e446]:
                  - text: Breadcrumb
                  - link "Place block in the Breadcrumb region" [ref=e448] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=breadcrumb
                    - text: Place block
                    - generic [ref=e449]:
                      - text: in the
                      - emphasis [ref=e450]: Breadcrumb
                      - text: region
              - row "Breadcrumbs System Region for Breadcrumbs block * Breadcrumb Edit Breadcrumbs List additional actions" [ref=e451]:
                - cell "Breadcrumbs" [ref=e452]:
                  - generic [ref=e453]:
                    - link "Change order" [ref=e454]:
                      - /url: "#"
                    - generic [ref=e455]: Breadcrumbs
                - cell "System" [ref=e456]
                - cell "Region for Breadcrumbs block * Breadcrumb" [ref=e457]:
                  - generic [ref=e458]:
                    - generic [ref=e459] [cursor=pointer]: Region for Breadcrumbs block *
                    - combobox "Region for Breadcrumbs block *" [ref=e460]:
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
                - cell "Edit Breadcrumbs List additional actions" [ref=e461]:
                  - list [ref=e464]:
                    - listitem [ref=e465]:
                      - link "Edit Breadcrumbs" [ref=e466] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_breadcrumbs?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e467]:
                        - generic [ref=e468]: List additional actions
              - row "Social Bar Place block in the Social Bar region" [ref=e469]:
                - cell "Social Bar Place block in the Social Bar region" [ref=e470]:
                  - text: Social Bar
                  - link "Place block in the Social Bar region" [ref=e472] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=social
                    - text: Place block
                    - generic [ref=e473]:
                      - text: in the
                      - emphasis [ref=e474]: Social Bar
                      - text: region
              - row "No blocks in this region" [ref=e475]:
                - cell "No blocks in this region" [ref=e476]:
                  - emphasis [ref=e477]: No blocks in this region
              - row "Content Above Place block in the Content Above region" [ref=e478]:
                - cell "Content Above Place block in the Content Above region" [ref=e479]:
                  - text: Content Above
                  - link "Place block in the Content Above region" [ref=e481] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=content_above
                    - text: Place block
                    - generic [ref=e482]:
                      - text: in the
                      - emphasis [ref=e483]: Content Above
                      - text: region
              - row "Page title core Region for Page title block * Content Above Edit Page title List additional actions" [ref=e484]:
                - cell "Page title" [ref=e485]:
                  - generic [ref=e486]:
                    - link "Change order" [ref=e487]:
                      - /url: "#"
                    - generic [ref=e488]: Page title
                - cell "core" [ref=e489]
                - cell "Region for Page title block * Content Above" [ref=e490]:
                  - generic [ref=e491]:
                    - generic [ref=e492] [cursor=pointer]: Region for Page title block *
                    - combobox "Region for Page title block *" [ref=e493]:
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
                - cell "Edit Page title List additional actions" [ref=e494]:
                  - list [ref=e497]:
                    - listitem [ref=e498]:
                      - link "Edit Page title" [ref=e499] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_page_title?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e500]:
                        - generic [ref=e501]: List additional actions
              - row "Help Help Region for Help block * Content Above Edit Help List additional actions" [ref=e502]:
                - cell "Help" [ref=e503]:
                  - generic [ref=e504]:
                    - link "Change order" [ref=e505]:
                      - /url: "#"
                    - generic [ref=e506]: Help
                - cell "Help" [ref=e507]
                - cell "Region for Help block * Content Above" [ref=e508]:
                  - generic [ref=e509]:
                    - generic [ref=e510] [cursor=pointer]: Region for Help block *
                    - combobox "Region for Help block *" [ref=e511]:
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
                - cell "Edit Help List additional actions" [ref=e512]:
                  - list [ref=e515]:
                    - listitem [ref=e516]:
                      - link "Edit Help" [ref=e517] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_help?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e518]:
                        - generic [ref=e519]: List additional actions
              - row "Content Place block in the Content region" [ref=e520]:
                - cell "Content Place block in the Content region" [ref=e521]:
                  - text: Content
                  - link "Place block in the Content region" [ref=e523] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=content
                    - text: Place block
                    - generic [ref=e524]:
                      - text: in the
                      - emphasis [ref=e525]: Content
                      - text: region
              - row "Main page content System Region for Main page content block * Content Edit Main page content List additional actions" [ref=e526]:
                - cell "Main page content" [ref=e527]:
                  - generic [ref=e528]:
                    - link "Change order" [ref=e529]:
                      - /url: "#"
                    - generic [ref=e530]: Main page content
                - cell "System" [ref=e531]
                - cell "Region for Main page content block * Content" [ref=e532]:
                  - generic [ref=e533]:
                    - generic [ref=e534] [cursor=pointer]: Region for Main page content block *
                    - combobox "Region for Main page content block *" [ref=e535]:
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
                - cell "Edit Main page content List additional actions" [ref=e536]:
                  - list [ref=e539]:
                    - listitem [ref=e540]:
                      - link "Edit Main page content" [ref=e541] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_content?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e542]:
                        - generic [ref=e543]: List additional actions
              - row "Sidebar Place block in the Sidebar region" [ref=e544]:
                - cell "Sidebar Place block in the Sidebar region" [ref=e545]:
                  - text: Sidebar
                  - link "Place block in the Sidebar region" [ref=e547] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=sidebar
                    - text: Place block
                    - generic [ref=e548]:
                      - text: in the
                      - emphasis [ref=e549]: Sidebar
                      - text: region
              - row "No blocks in this region" [ref=e550]:
                - cell "No blocks in this region" [ref=e551]:
                  - emphasis [ref=e552]: No blocks in this region
              - row "Content Below Place block in the Content Below region" [ref=e553]:
                - cell "Content Below Place block in the Content Below region" [ref=e554]:
                  - text: Content Below
                  - link "Place block in the Content Below region" [ref=e556] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=content_below
                    - text: Place block
                    - generic [ref=e557]:
                      - text: in the
                      - emphasis [ref=e558]: Content Below
                      - text: region
              - row "No blocks in this region" [ref=e559]:
                - cell "No blocks in this region" [ref=e560]:
                  - emphasis [ref=e561]: No blocks in this region
              - row "Footer Top Place block in the Footer Top region" [ref=e562]:
                - cell "Footer Top Place block in the Footer Top region" [ref=e563]:
                  - text: Footer Top
                  - link "Place block in the Footer Top region" [ref=e565] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=footer_top
                    - text: Place block
                    - generic [ref=e566]:
                      - text: in the
                      - emphasis [ref=e567]: Footer Top
                      - text: region
              - row "No blocks in this region" [ref=e568]:
                - cell "No blocks in this region" [ref=e569]:
                  - emphasis [ref=e570]: No blocks in this region
              - row "Footer Bottom Place block in the Footer Bottom region" [ref=e571]:
                - cell "Footer Bottom Place block in the Footer Bottom region" [ref=e572]:
                  - text: Footer Bottom
                  - link "Place block in the Footer Bottom region" [ref=e574] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=footer_bottom
                    - text: Place block
                    - generic [ref=e575]:
                      - text: in the
                      - emphasis [ref=e576]: Footer Bottom
                      - text: region
              - row "Powered by Drupal System Region for Powered by Drupal block * Footer Bottom Edit Powered by Drupal List additional actions" [ref=e577]:
                - cell "Powered by Drupal" [ref=e578]:
                  - generic [ref=e579]:
                    - link "Change order" [ref=e580]:
                      - /url: "#"
                    - generic [ref=e581]: Powered by Drupal
                - cell "System" [ref=e582]
                - cell "Region for Powered by Drupal block * Footer Bottom" [ref=e583]:
                  - generic [ref=e584]:
                    - generic [ref=e585] [cursor=pointer]: Region for Powered by Drupal block *
                    - combobox "Region for Powered by Drupal block *" [ref=e586]:
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
                - cell "Edit Powered by Drupal List additional actions" [ref=e587]:
                  - list [ref=e590]:
                    - listitem [ref=e591]:
                      - link "Edit Powered by Drupal" [ref=e592] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_powered?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e593]:
                        - generic [ref=e594]: List additional actions
          - button "Save blocks" [ref=e596] [cursor=pointer]
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