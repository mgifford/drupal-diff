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

  Expected an image 375px by 3468px, received 558px by 2745px. 82663 pixels (ratio 0.05 of all image pixels) are different.

  Snapshot: structure-block-layout.png

Call log:
  - Expect "toHaveScreenshot(structure-block-layout.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 375px by 3468px, received 558px by 2745px. 82663 pixels (ratio 0.05 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 375px by 3468px, received 558px by 2745px. 82663 pixels (ratio 0.05 of all image pixels) are different.

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
            - link "Structure" [ref=e24] [cursor=pointer]:
              - /url: /admin/structure
      - heading "Block layout" [level=1] [ref=e27]
    - generic [ref=e28]:
      - generic [ref=e30]:
        - heading "Secondary tabs" [level=2] [ref=e31]
        - navigation "Secondary tabs" [ref=e32]:
          - list [ref=e33]:
            - listitem [ref=e34]:
              - link "Olivero" [ref=e35] [cursor=pointer]:
                - /url: /admin/structure/block
            - listitem [ref=e36]:
              - link "Claro" [ref=e37] [cursor=pointer]:
                - /url: /admin/structure/block/list/claro
      - generic [ref=e38]:
        - complementary [ref=e41]:
          - paragraph [ref=e42]:
            - text: Block placement is specific to each theme on your site. Changes will not be saved until you click
            - emphasis [ref=e43]: Save blocks
            - text: at the bottom of the page.
          - paragraph [ref=e44]:
            - link "Demonstrate block regions (Olivero)" [ref=e45] [cursor=pointer]:
              - /url: /admin/structure/block/demo/olivero
        - generic [ref=e48]:
          - button "Show row weights" [ref=e50] [cursor=pointer]:
            - generic [ref=e51]: Show row weights
          - table [ref=e52]:
            - rowgroup [ref=e53]:
              - row "Block Category Region Operations" [ref=e54]:
                - columnheader "Block" [ref=e55]
                - columnheader "Category" [ref=e56]
                - columnheader "Region" [ref=e57]
                - columnheader "Operations" [ref=e58]
            - rowgroup [ref=e59]:
              - row "Header Place block in the Header region" [ref=e60]:
                - cell "Header Place block in the Header region" [ref=e61]:
                  - text: Header
                  - link "Place block in the Header region" [ref=e63] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=header
                    - text: Place block
                    - generic [ref=e64]:
                      - text: in the
                      - emphasis [ref=e65]: Header
                      - text: region
              - row "Site branding System Region for Site branding block * Header Edit Site branding List additional actions" [ref=e66]:
                - cell "Site branding" [ref=e67]:
                  - generic [ref=e68]:
                    - link "Change order" [ref=e69]:
                      - /url: "#"
                    - generic [ref=e70]: Site branding
                - cell "System" [ref=e71]
                - cell "Region for Site branding block * Header" [ref=e72]:
                  - generic [ref=e73]:
                    - generic [ref=e74] [cursor=pointer]: Region for Site branding block *
                    - combobox "Region for Site branding block *" [ref=e75]:
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
                - cell "Edit Site branding List additional actions" [ref=e76]:
                  - list [ref=e79]:
                    - listitem [ref=e80]:
                      - link "Edit Site branding" [ref=e81] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_site_branding?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e82]:
                        - generic [ref=e83]: List additional actions
              - row "Primary menu Place block in the Primary menu region" [ref=e84]:
                - cell "Primary menu Place block in the Primary menu region" [ref=e85]:
                  - text: Primary menu
                  - link "Place block in the Primary menu region" [ref=e87] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=primary_menu
                    - text: Place block
                    - generic [ref=e88]:
                      - text: in the
                      - emphasis [ref=e89]: Primary menu
                      - text: region
              - row "Main navigation Menus Region for Main navigation block * Primary menu Edit Main navigation List additional actions" [ref=e90]:
                - cell "Main navigation" [ref=e91]:
                  - generic [ref=e92]:
                    - link "Change order" [ref=e93]:
                      - /url: "#"
                    - generic [ref=e94]: Main navigation
                - cell "Menus" [ref=e95]
                - cell "Region for Main navigation block * Primary menu" [ref=e96]:
                  - generic [ref=e97]:
                    - generic [ref=e98] [cursor=pointer]: Region for Main navigation block *
                    - combobox "Region for Main navigation block *" [ref=e99]:
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
                - cell "Edit Main navigation List additional actions" [ref=e100]:
                  - list [ref=e103]:
                    - listitem [ref=e104]:
                      - link "Edit Main navigation" [ref=e105] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_main_menu?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e106]:
                        - generic [ref=e107]: List additional actions
              - row "Secondary menu Place block in the Secondary menu region" [ref=e108]:
                - cell "Secondary menu Place block in the Secondary menu region" [ref=e109]:
                  - text: Secondary menu
                  - link "Place block in the Secondary menu region" [ref=e111] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=secondary_menu
                    - text: Place block
                    - generic [ref=e112]:
                      - text: in the
                      - emphasis [ref=e113]: Secondary menu
                      - text: region
              - row "User account menu Menus Region for User account menu block * Secondary menu Edit User account menu List additional actions" [ref=e114]:
                - cell "User account menu" [ref=e115]:
                  - generic [ref=e116]:
                    - link "Change order" [ref=e117]:
                      - /url: "#"
                    - generic [ref=e118]: User account menu
                - cell "Menus" [ref=e119]
                - cell "Region for User account menu block * Secondary menu" [ref=e120]:
                  - generic [ref=e121]:
                    - generic [ref=e122] [cursor=pointer]: Region for User account menu block *
                    - combobox "Region for User account menu block *" [ref=e123]:
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
                - cell "Edit User account menu List additional actions" [ref=e124]:
                  - list [ref=e127]:
                    - listitem [ref=e128]:
                      - link "Edit User account menu" [ref=e129] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_account_menu?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e130]:
                        - generic [ref=e131]: List additional actions
              - row "Hero (full width) Place block in the Hero (full width) region" [ref=e132]:
                - cell "Hero (full width) Place block in the Hero (full width) region" [ref=e133]:
                  - text: Hero (full width)
                  - link "Place block in the Hero (full width) region" [ref=e135] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=hero
                    - text: Place block
                    - generic [ref=e136]:
                      - text: in the
                      - emphasis [ref=e137]: Hero (full width)
                      - text: region
              - row "No blocks in this region" [ref=e138]:
                - cell "No blocks in this region" [ref=e139]:
                  - emphasis [ref=e140]: No blocks in this region
              - row "Highlighted Place block in the Highlighted region" [ref=e141]:
                - cell "Highlighted Place block in the Highlighted region" [ref=e142]:
                  - text: Highlighted
                  - link "Place block in the Highlighted region" [ref=e144] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=highlighted
                    - text: Place block
                    - generic [ref=e145]:
                      - text: in the
                      - emphasis [ref=e146]: Highlighted
                      - text: region
              - row "Primary admin actions core Region for Primary admin actions block * Highlighted Edit Primary admin actions List additional actions" [ref=e147]:
                - cell "Primary admin actions" [ref=e148]:
                  - generic [ref=e149]:
                    - link "Change order" [ref=e150]:
                      - /url: "#"
                    - generic [ref=e151]: Primary admin actions
                - cell "core" [ref=e152]
                - cell "Region for Primary admin actions block * Highlighted" [ref=e153]:
                  - generic [ref=e154]:
                    - generic [ref=e155] [cursor=pointer]: Region for Primary admin actions block *
                    - combobox "Region for Primary admin actions block *" [ref=e156]:
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
                - cell "Edit Primary admin actions List additional actions" [ref=e157]:
                  - list [ref=e160]:
                    - listitem [ref=e161]:
                      - link "Edit Primary admin actions" [ref=e162] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_primary_admin_actions?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e163]:
                        - generic [ref=e164]: List additional actions
              - row "Status messages System Region for Status messages block * Highlighted Edit Status messages List additional actions" [ref=e165]:
                - cell "Status messages" [ref=e166]:
                  - generic [ref=e167]:
                    - link "Change order" [ref=e168]:
                      - /url: "#"
                    - generic [ref=e169]: Status messages
                - cell "System" [ref=e170]
                - cell "Region for Status messages block * Highlighted" [ref=e171]:
                  - generic [ref=e172]:
                    - generic [ref=e173] [cursor=pointer]: Region for Status messages block *
                    - combobox "Region for Status messages block *" [ref=e174]:
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
                - cell "Edit Status messages List additional actions" [ref=e175]:
                  - list [ref=e178]:
                    - listitem [ref=e179]:
                      - link "Edit Status messages" [ref=e180] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_messages?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e181]:
                        - generic [ref=e182]: List additional actions
              - row "Primary tabs core Region for Primary tabs block * Highlighted Edit Primary tabs List additional actions" [ref=e183]:
                - cell "Primary tabs" [ref=e184]:
                  - generic [ref=e185]:
                    - link "Change order" [ref=e186]:
                      - /url: "#"
                    - generic [ref=e187]: Primary tabs
                - cell "core" [ref=e188]
                - cell "Region for Primary tabs block * Highlighted" [ref=e189]:
                  - generic [ref=e190]:
                    - generic [ref=e191] [cursor=pointer]: Region for Primary tabs block *
                    - combobox "Region for Primary tabs block *" [ref=e192]:
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
                - cell "Edit Primary tabs List additional actions" [ref=e193]:
                  - list [ref=e196]:
                    - listitem [ref=e197]:
                      - link "Edit Primary tabs" [ref=e198] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_primary_local_tasks?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e199]:
                        - generic [ref=e200]: List additional actions
              - row "Secondary tabs core Region for Secondary tabs block * Highlighted Edit Secondary tabs List additional actions" [ref=e201]:
                - cell "Secondary tabs" [ref=e202]:
                  - generic [ref=e203]:
                    - link "Change order" [ref=e204]:
                      - /url: "#"
                    - generic [ref=e205]: Secondary tabs
                - cell "core" [ref=e206]
                - cell "Region for Secondary tabs block * Highlighted" [ref=e207]:
                  - generic [ref=e208]:
                    - generic [ref=e209] [cursor=pointer]: Region for Secondary tabs block *
                    - combobox "Region for Secondary tabs block *" [ref=e210]:
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
                - cell "Edit Secondary tabs List additional actions" [ref=e211]:
                  - list [ref=e214]:
                    - listitem [ref=e215]:
                      - link "Edit Secondary tabs" [ref=e216] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_secondary_local_tasks?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e217]:
                        - generic [ref=e218]: List additional actions
              - row "Breadcrumb Place block in the Breadcrumb region" [ref=e219]:
                - cell "Breadcrumb Place block in the Breadcrumb region" [ref=e220]:
                  - text: Breadcrumb
                  - link "Place block in the Breadcrumb region" [ref=e222] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=breadcrumb
                    - text: Place block
                    - generic [ref=e223]:
                      - text: in the
                      - emphasis [ref=e224]: Breadcrumb
                      - text: region
              - row "Breadcrumbs System Region for Breadcrumbs block * Breadcrumb Edit Breadcrumbs List additional actions" [ref=e225]:
                - cell "Breadcrumbs" [ref=e226]:
                  - generic [ref=e227]:
                    - link "Change order" [ref=e228]:
                      - /url: "#"
                    - generic [ref=e229]: Breadcrumbs
                - cell "System" [ref=e230]
                - cell "Region for Breadcrumbs block * Breadcrumb" [ref=e231]:
                  - generic [ref=e232]:
                    - generic [ref=e233] [cursor=pointer]: Region for Breadcrumbs block *
                    - combobox "Region for Breadcrumbs block *" [ref=e234]:
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
                - cell "Edit Breadcrumbs List additional actions" [ref=e235]:
                  - list [ref=e238]:
                    - listitem [ref=e239]:
                      - link "Edit Breadcrumbs" [ref=e240] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_breadcrumbs?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e241]:
                        - generic [ref=e242]: List additional actions
              - row "Social Bar Place block in the Social Bar region" [ref=e243]:
                - cell "Social Bar Place block in the Social Bar region" [ref=e244]:
                  - text: Social Bar
                  - link "Place block in the Social Bar region" [ref=e246] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=social
                    - text: Place block
                    - generic [ref=e247]:
                      - text: in the
                      - emphasis [ref=e248]: Social Bar
                      - text: region
              - row "No blocks in this region" [ref=e249]:
                - cell "No blocks in this region" [ref=e250]:
                  - emphasis [ref=e251]: No blocks in this region
              - row "Content Above Place block in the Content Above region" [ref=e252]:
                - cell "Content Above Place block in the Content Above region" [ref=e253]:
                  - text: Content Above
                  - link "Place block in the Content Above region" [ref=e255] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=content_above
                    - text: Place block
                    - generic [ref=e256]:
                      - text: in the
                      - emphasis [ref=e257]: Content Above
                      - text: region
              - row "Page title core Region for Page title block * Content Above Edit Page title List additional actions" [ref=e258]:
                - cell "Page title" [ref=e259]:
                  - generic [ref=e260]:
                    - link "Change order" [ref=e261]:
                      - /url: "#"
                    - generic [ref=e262]: Page title
                - cell "core" [ref=e263]
                - cell "Region for Page title block * Content Above" [ref=e264]:
                  - generic [ref=e265]:
                    - generic [ref=e266] [cursor=pointer]: Region for Page title block *
                    - combobox "Region for Page title block *" [ref=e267]:
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
                - cell "Edit Page title List additional actions" [ref=e268]:
                  - list [ref=e271]:
                    - listitem [ref=e272]:
                      - link "Edit Page title" [ref=e273] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_page_title?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e274]:
                        - generic [ref=e275]: List additional actions
              - row "Help Help Region for Help block * Content Above Edit Help List additional actions" [ref=e276]:
                - cell "Help" [ref=e277]:
                  - generic [ref=e278]:
                    - link "Change order" [ref=e279]:
                      - /url: "#"
                    - generic [ref=e280]: Help
                - cell "Help" [ref=e281]
                - cell "Region for Help block * Content Above" [ref=e282]:
                  - generic [ref=e283]:
                    - generic [ref=e284] [cursor=pointer]: Region for Help block *
                    - combobox "Region for Help block *" [ref=e285]:
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
                - cell "Edit Help List additional actions" [ref=e286]:
                  - list [ref=e289]:
                    - listitem [ref=e290]:
                      - link "Edit Help" [ref=e291] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_help?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e292]:
                        - generic [ref=e293]: List additional actions
              - row "Content Place block in the Content region" [ref=e294]:
                - cell "Content Place block in the Content region" [ref=e295]:
                  - text: Content
                  - link "Place block in the Content region" [ref=e297] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=content
                    - text: Place block
                    - generic [ref=e298]:
                      - text: in the
                      - emphasis [ref=e299]: Content
                      - text: region
              - row "Main page content System Region for Main page content block * Content Edit Main page content List additional actions" [ref=e300]:
                - cell "Main page content" [ref=e301]:
                  - generic [ref=e302]:
                    - link "Change order" [ref=e303]:
                      - /url: "#"
                    - generic [ref=e304]: Main page content
                - cell "System" [ref=e305]
                - cell "Region for Main page content block * Content" [ref=e306]:
                  - generic [ref=e307]:
                    - generic [ref=e308] [cursor=pointer]: Region for Main page content block *
                    - combobox "Region for Main page content block *" [ref=e309]:
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
                - cell "Edit Main page content List additional actions" [ref=e310]:
                  - list [ref=e313]:
                    - listitem [ref=e314]:
                      - link "Edit Main page content" [ref=e315] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_content?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e316]:
                        - generic [ref=e317]: List additional actions
              - row "Sidebar Place block in the Sidebar region" [ref=e318]:
                - cell "Sidebar Place block in the Sidebar region" [ref=e319]:
                  - text: Sidebar
                  - link "Place block in the Sidebar region" [ref=e321] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=sidebar
                    - text: Place block
                    - generic [ref=e322]:
                      - text: in the
                      - emphasis [ref=e323]: Sidebar
                      - text: region
              - row "No blocks in this region" [ref=e324]:
                - cell "No blocks in this region" [ref=e325]:
                  - emphasis [ref=e326]: No blocks in this region
              - row "Content Below Place block in the Content Below region" [ref=e327]:
                - cell "Content Below Place block in the Content Below region" [ref=e328]:
                  - text: Content Below
                  - link "Place block in the Content Below region" [ref=e330] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=content_below
                    - text: Place block
                    - generic [ref=e331]:
                      - text: in the
                      - emphasis [ref=e332]: Content Below
                      - text: region
              - row "No blocks in this region" [ref=e333]:
                - cell "No blocks in this region" [ref=e334]:
                  - emphasis [ref=e335]: No blocks in this region
              - row "Footer Top Place block in the Footer Top region" [ref=e336]:
                - cell "Footer Top Place block in the Footer Top region" [ref=e337]:
                  - text: Footer Top
                  - link "Place block in the Footer Top region" [ref=e339] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=footer_top
                    - text: Place block
                    - generic [ref=e340]:
                      - text: in the
                      - emphasis [ref=e341]: Footer Top
                      - text: region
              - row "No blocks in this region" [ref=e342]:
                - cell "No blocks in this region" [ref=e343]:
                  - emphasis [ref=e344]: No blocks in this region
              - row "Footer Bottom Place block in the Footer Bottom region" [ref=e345]:
                - cell "Footer Bottom Place block in the Footer Bottom region" [ref=e346]:
                  - text: Footer Bottom
                  - link "Place block in the Footer Bottom region" [ref=e348] [cursor=pointer]:
                    - /url: /admin/structure/block/library/olivero?region=footer_bottom
                    - text: Place block
                    - generic [ref=e349]:
                      - text: in the
                      - emphasis [ref=e350]: Footer Bottom
                      - text: region
              - row "Powered by Drupal System Region for Powered by Drupal block * Footer Bottom Edit Powered by Drupal List additional actions" [ref=e351]:
                - cell "Powered by Drupal" [ref=e352]:
                  - generic [ref=e353]:
                    - link "Change order" [ref=e354]:
                      - /url: "#"
                    - generic [ref=e355]: Powered by Drupal
                - cell "System" [ref=e356]
                - cell "Region for Powered by Drupal block * Footer Bottom" [ref=e357]:
                  - generic [ref=e358]:
                    - generic [ref=e359] [cursor=pointer]: Region for Powered by Drupal block *
                    - combobox "Region for Powered by Drupal block *" [ref=e360]:
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
                - cell "Edit Powered by Drupal List additional actions" [ref=e361]:
                  - list [ref=e364]:
                    - listitem [ref=e365]:
                      - link "Edit Powered by Drupal" [ref=e366] [cursor=pointer]:
                        - /url: /admin/structure/block/manage/olivero_powered?destination=/admin/structure/block
                        - text: Configure
                    - listitem:
                      - button "List additional actions" [ref=e367]:
                        - generic [ref=e368]: List additional actions
          - button "Save blocks" [ref=e370] [cursor=pointer]
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