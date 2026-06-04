# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/structure.spec.ts >> structure-block-layout >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid/vrt/structure.spec.ts/structure-block-layout.png, writing actual.
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
        - link "Structure" [ref=e17] [cursor=pointer]:
          - /url: /admin/structure
  - generic [ref=e18]:
    - banner [ref=e19]:
      - heading "Block layout" [level=1] [ref=e23]
    - generic [ref=e24]:
      - generic [ref=e26]:
        - heading "Secondary tabs" [level=2] [ref=e27]
        - navigation "Secondary tabs" [ref=e28]:
          - list [ref=e29]:
            - listitem [ref=e30]:
              - link "Olivero" [ref=e31] [cursor=pointer]:
                - /url: /admin/structure/block
            - listitem [ref=e32]:
              - link "Claro" [ref=e33] [cursor=pointer]:
                - /url: /admin/structure/block/list/claro
            - listitem [ref=e34]:
              - link "Default Admin" [ref=e35] [cursor=pointer]:
                - /url: /admin/structure/block/list/default_admin
      - main [ref=e36]:
        - complementary [ref=e40]:
          - paragraph [ref=e41]:
            - text: Block placement is specific to each theme on your site. Changes will not be saved until you click
            - emphasis [ref=e42]: Save blocks
            - text: at the bottom of the page.
          - paragraph [ref=e43]:
            - link "Demonstrate block regions (Olivero)" [ref=e44] [cursor=pointer]:
              - /url: /admin/structure/block/demo/olivero
        - generic [ref=e47]:
          - generic [ref=e48]:
            - button "Show row weights" [ref=e50] [cursor=pointer]:
              - generic [ref=e51]: Show row weights
            - table [ref=e53]:
              - rowgroup [ref=e54]:
                - row "Block Category Region Operations" [ref=e55]:
                  - columnheader "Block" [ref=e56]
                  - columnheader "Category" [ref=e57]
                  - columnheader "Region" [ref=e58]
                  - columnheader "Operations" [ref=e59]
              - rowgroup [ref=e60]:
                - row "Header Place block in the Header region" [ref=e61]:
                  - cell "Header Place block in the Header region" [ref=e62]:
                    - text: Header
                    - link "Place block in the Header region" [ref=e64] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=header
                      - text: Place block
                      - generic [ref=e65]:
                        - text: in the
                        - emphasis [ref=e66]: Header
                        - text: region
                - row "Site branding System Region for Site branding block * Header Edit Site branding List additional actions" [ref=e67]:
                  - cell "Site branding" [ref=e68]:
                    - generic [ref=e69]:
                      - link "Change order" [ref=e70]:
                        - /url: "#"
                      - generic [ref=e71]: Site branding
                  - cell "System" [ref=e72]
                  - cell "Region for Site branding block * Header" [ref=e73]:
                    - generic [ref=e74]:
                      - generic [ref=e75] [cursor=pointer]: Region for Site branding block *
                      - combobox "Region for Site branding block *" [ref=e76]:
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
                  - cell "Edit Site branding List additional actions" [ref=e77]:
                    - list [ref=e80]:
                      - listitem [ref=e81]:
                        - link "Edit Site branding" [ref=e82] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_site_branding?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e83]:
                          - generic [ref=e84]: List additional actions
                - row "Primary menu Place block in the Primary menu region" [ref=e85]:
                  - cell "Primary menu Place block in the Primary menu region" [ref=e86]:
                    - text: Primary menu
                    - link "Place block in the Primary menu region" [ref=e88] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=primary_menu
                      - text: Place block
                      - generic [ref=e89]:
                        - text: in the
                        - emphasis [ref=e90]: Primary menu
                        - text: region
                - row "Main navigation Menus Region for Main navigation block * Primary menu Edit Main navigation List additional actions" [ref=e91]:
                  - cell "Main navigation" [ref=e92]:
                    - generic [ref=e93]:
                      - link "Change order" [ref=e94]:
                        - /url: "#"
                      - generic [ref=e95]: Main navigation
                  - cell "Menus" [ref=e96]
                  - cell "Region for Main navigation block * Primary menu" [ref=e97]:
                    - generic [ref=e98]:
                      - generic [ref=e99] [cursor=pointer]: Region for Main navigation block *
                      - combobox "Region for Main navigation block *" [ref=e100]:
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
                  - cell "Edit Main navigation List additional actions" [ref=e101]:
                    - list [ref=e104]:
                      - listitem [ref=e105]:
                        - link "Edit Main navigation" [ref=e106] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_main_menu?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e107]:
                          - generic [ref=e108]: List additional actions
                - row "Secondary menu Place block in the Secondary menu region" [ref=e109]:
                  - cell "Secondary menu Place block in the Secondary menu region" [ref=e110]:
                    - text: Secondary menu
                    - link "Place block in the Secondary menu region" [ref=e112] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=secondary_menu
                      - text: Place block
                      - generic [ref=e113]:
                        - text: in the
                        - emphasis [ref=e114]: Secondary menu
                        - text: region
                - row "User account menu Menus Region for User account menu block * Secondary menu Edit User account menu List additional actions" [ref=e115]:
                  - cell "User account menu" [ref=e116]:
                    - generic [ref=e117]:
                      - link "Change order" [ref=e118]:
                        - /url: "#"
                      - generic [ref=e119]: User account menu
                  - cell "Menus" [ref=e120]
                  - cell "Region for User account menu block * Secondary menu" [ref=e121]:
                    - generic [ref=e122]:
                      - generic [ref=e123] [cursor=pointer]: Region for User account menu block *
                      - combobox "Region for User account menu block *" [ref=e124]:
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
                  - cell "Edit User account menu List additional actions" [ref=e125]:
                    - list [ref=e128]:
                      - listitem [ref=e129]:
                        - link "Edit User account menu" [ref=e130] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_account_menu?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e131]:
                          - generic [ref=e132]: List additional actions
                - row "Hero (full width) Place block in the Hero (full width) region" [ref=e133]:
                  - cell "Hero (full width) Place block in the Hero (full width) region" [ref=e134]:
                    - text: Hero (full width)
                    - link "Place block in the Hero (full width) region" [ref=e136] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=hero
                      - text: Place block
                      - generic [ref=e137]:
                        - text: in the
                        - emphasis [ref=e138]: Hero (full width)
                        - text: region
                - row "No blocks in this region" [ref=e139]:
                  - cell "No blocks in this region" [ref=e140]:
                    - emphasis [ref=e141]: No blocks in this region
                - row "Highlighted Place block in the Highlighted region" [ref=e142]:
                  - cell "Highlighted Place block in the Highlighted region" [ref=e143]:
                    - text: Highlighted
                    - link "Place block in the Highlighted region" [ref=e145] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=highlighted
                      - text: Place block
                      - generic [ref=e146]:
                        - text: in the
                        - emphasis [ref=e147]: Highlighted
                        - text: region
                - row "Primary admin actions core Region for Primary admin actions block * Highlighted Edit Primary admin actions List additional actions" [ref=e148]:
                  - cell "Primary admin actions" [ref=e149]:
                    - generic [ref=e150]:
                      - link "Change order" [ref=e151]:
                        - /url: "#"
                      - generic [ref=e152]: Primary admin actions
                  - cell "core" [ref=e153]
                  - cell "Region for Primary admin actions block * Highlighted" [ref=e154]:
                    - generic [ref=e155]:
                      - generic [ref=e156] [cursor=pointer]: Region for Primary admin actions block *
                      - combobox "Region for Primary admin actions block *" [ref=e157]:
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
                  - cell "Edit Primary admin actions List additional actions" [ref=e158]:
                    - list [ref=e161]:
                      - listitem [ref=e162]:
                        - link "Edit Primary admin actions" [ref=e163] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_primary_admin_actions?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e164]:
                          - generic [ref=e165]: List additional actions
                - row "Status messages System Region for Status messages block * Highlighted Edit Status messages List additional actions" [ref=e166]:
                  - cell "Status messages" [ref=e167]:
                    - generic [ref=e168]:
                      - link "Change order" [ref=e169]:
                        - /url: "#"
                      - generic [ref=e170]: Status messages
                  - cell "System" [ref=e171]
                  - cell "Region for Status messages block * Highlighted" [ref=e172]:
                    - generic [ref=e173]:
                      - generic [ref=e174] [cursor=pointer]: Region for Status messages block *
                      - combobox "Region for Status messages block *" [ref=e175]:
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
                  - cell "Edit Status messages List additional actions" [ref=e176]:
                    - list [ref=e179]:
                      - listitem [ref=e180]:
                        - link "Edit Status messages" [ref=e181] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_messages?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e182]:
                          - generic [ref=e183]: List additional actions
                - row "Primary tabs core Region for Primary tabs block * Highlighted Edit Primary tabs List additional actions" [ref=e184]:
                  - cell "Primary tabs" [ref=e185]:
                    - generic [ref=e186]:
                      - link "Change order" [ref=e187]:
                        - /url: "#"
                      - generic [ref=e188]: Primary tabs
                  - cell "core" [ref=e189]
                  - cell "Region for Primary tabs block * Highlighted" [ref=e190]:
                    - generic [ref=e191]:
                      - generic [ref=e192] [cursor=pointer]: Region for Primary tabs block *
                      - combobox "Region for Primary tabs block *" [ref=e193]:
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
                  - cell "Edit Primary tabs List additional actions" [ref=e194]:
                    - list [ref=e197]:
                      - listitem [ref=e198]:
                        - link "Edit Primary tabs" [ref=e199] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_primary_local_tasks?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e200]:
                          - generic [ref=e201]: List additional actions
                - row "Secondary tabs core Region for Secondary tabs block * Highlighted Edit Secondary tabs List additional actions" [ref=e202]:
                  - cell "Secondary tabs" [ref=e203]:
                    - generic [ref=e204]:
                      - link "Change order" [ref=e205]:
                        - /url: "#"
                      - generic [ref=e206]: Secondary tabs
                  - cell "core" [ref=e207]
                  - cell "Region for Secondary tabs block * Highlighted" [ref=e208]:
                    - generic [ref=e209]:
                      - generic [ref=e210] [cursor=pointer]: Region for Secondary tabs block *
                      - combobox "Region for Secondary tabs block *" [ref=e211]:
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
                  - cell "Edit Secondary tabs List additional actions" [ref=e212]:
                    - list [ref=e215]:
                      - listitem [ref=e216]:
                        - link "Edit Secondary tabs" [ref=e217] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_secondary_local_tasks?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e218]:
                          - generic [ref=e219]: List additional actions
                - row "Breadcrumb Place block in the Breadcrumb region" [ref=e220]:
                  - cell "Breadcrumb Place block in the Breadcrumb region" [ref=e221]:
                    - text: Breadcrumb
                    - link "Place block in the Breadcrumb region" [ref=e223] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=breadcrumb
                      - text: Place block
                      - generic [ref=e224]:
                        - text: in the
                        - emphasis [ref=e225]: Breadcrumb
                        - text: region
                - row "Breadcrumbs System Region for Breadcrumbs block * Breadcrumb Edit Breadcrumbs List additional actions" [ref=e226]:
                  - cell "Breadcrumbs" [ref=e227]:
                    - generic [ref=e228]:
                      - link "Change order" [ref=e229]:
                        - /url: "#"
                      - generic [ref=e230]: Breadcrumbs
                  - cell "System" [ref=e231]
                  - cell "Region for Breadcrumbs block * Breadcrumb" [ref=e232]:
                    - generic [ref=e233]:
                      - generic [ref=e234] [cursor=pointer]: Region for Breadcrumbs block *
                      - combobox "Region for Breadcrumbs block *" [ref=e235]:
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
                  - cell "Edit Breadcrumbs List additional actions" [ref=e236]:
                    - list [ref=e239]:
                      - listitem [ref=e240]:
                        - link "Edit Breadcrumbs" [ref=e241] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_breadcrumbs?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e242]:
                          - generic [ref=e243]: List additional actions
                - row "Social Bar Place block in the Social Bar region" [ref=e244]:
                  - cell "Social Bar Place block in the Social Bar region" [ref=e245]:
                    - text: Social Bar
                    - link "Place block in the Social Bar region" [ref=e247] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=social
                      - text: Place block
                      - generic [ref=e248]:
                        - text: in the
                        - emphasis [ref=e249]: Social Bar
                        - text: region
                - row "No blocks in this region" [ref=e250]:
                  - cell "No blocks in this region" [ref=e251]:
                    - emphasis [ref=e252]: No blocks in this region
                - row "Content Above Place block in the Content Above region" [ref=e253]:
                  - cell "Content Above Place block in the Content Above region" [ref=e254]:
                    - text: Content Above
                    - link "Place block in the Content Above region" [ref=e256] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=content_above
                      - text: Place block
                      - generic [ref=e257]:
                        - text: in the
                        - emphasis [ref=e258]: Content Above
                        - text: region
                - row "Page title core Region for Page title block * Content Above Edit Page title List additional actions" [ref=e259]:
                  - cell "Page title" [ref=e260]:
                    - generic [ref=e261]:
                      - link "Change order" [ref=e262]:
                        - /url: "#"
                      - generic [ref=e263]: Page title
                  - cell "core" [ref=e264]
                  - cell "Region for Page title block * Content Above" [ref=e265]:
                    - generic [ref=e266]:
                      - generic [ref=e267] [cursor=pointer]: Region for Page title block *
                      - combobox "Region for Page title block *" [ref=e268]:
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
                  - cell "Edit Page title List additional actions" [ref=e269]:
                    - list [ref=e272]:
                      - listitem [ref=e273]:
                        - link "Edit Page title" [ref=e274] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_page_title?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e275]:
                          - generic [ref=e276]: List additional actions
                - row "Help Help Region for Help block * Content Above Edit Help List additional actions" [ref=e277]:
                  - cell "Help" [ref=e278]:
                    - generic [ref=e279]:
                      - link "Change order" [ref=e280]:
                        - /url: "#"
                      - generic [ref=e281]: Help
                  - cell "Help" [ref=e282]
                  - cell "Region for Help block * Content Above" [ref=e283]:
                    - generic [ref=e284]:
                      - generic [ref=e285] [cursor=pointer]: Region for Help block *
                      - combobox "Region for Help block *" [ref=e286]:
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
                  - cell "Edit Help List additional actions" [ref=e287]:
                    - list [ref=e290]:
                      - listitem [ref=e291]:
                        - link "Edit Help" [ref=e292] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_help?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e293]:
                          - generic [ref=e294]: List additional actions
                - row "Content Place block in the Content region" [ref=e295]:
                  - cell "Content Place block in the Content region" [ref=e296]:
                    - text: Content
                    - link "Place block in the Content region" [ref=e298] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=content
                      - text: Place block
                      - generic [ref=e299]:
                        - text: in the
                        - emphasis [ref=e300]: Content
                        - text: region
                - row "Main page content System Region for Main page content block * Content Edit Main page content List additional actions" [ref=e301]:
                  - cell "Main page content" [ref=e302]:
                    - generic [ref=e303]:
                      - link "Change order" [ref=e304]:
                        - /url: "#"
                      - generic [ref=e305]: Main page content
                  - cell "System" [ref=e306]
                  - cell "Region for Main page content block * Content" [ref=e307]:
                    - generic [ref=e308]:
                      - generic [ref=e309] [cursor=pointer]: Region for Main page content block *
                      - combobox "Region for Main page content block *" [ref=e310]:
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
                  - cell "Edit Main page content List additional actions" [ref=e311]:
                    - list [ref=e314]:
                      - listitem [ref=e315]:
                        - link "Edit Main page content" [ref=e316] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_content?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e317]:
                          - generic [ref=e318]: List additional actions
                - row "Sidebar Place block in the Sidebar region" [ref=e319]:
                  - cell "Sidebar Place block in the Sidebar region" [ref=e320]:
                    - text: Sidebar
                    - link "Place block in the Sidebar region" [ref=e322] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=sidebar
                      - text: Place block
                      - generic [ref=e323]:
                        - text: in the
                        - emphasis [ref=e324]: Sidebar
                        - text: region
                - row "No blocks in this region" [ref=e325]:
                  - cell "No blocks in this region" [ref=e326]:
                    - emphasis [ref=e327]: No blocks in this region
                - row "Content Below Place block in the Content Below region" [ref=e328]:
                  - cell "Content Below Place block in the Content Below region" [ref=e329]:
                    - text: Content Below
                    - link "Place block in the Content Below region" [ref=e331] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=content_below
                      - text: Place block
                      - generic [ref=e332]:
                        - text: in the
                        - emphasis [ref=e333]: Content Below
                        - text: region
                - row "No blocks in this region" [ref=e334]:
                  - cell "No blocks in this region" [ref=e335]:
                    - emphasis [ref=e336]: No blocks in this region
                - row "Footer Top Place block in the Footer Top region" [ref=e337]:
                  - cell "Footer Top Place block in the Footer Top region" [ref=e338]:
                    - text: Footer Top
                    - link "Place block in the Footer Top region" [ref=e340] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=footer_top
                      - text: Place block
                      - generic [ref=e341]:
                        - text: in the
                        - emphasis [ref=e342]: Footer Top
                        - text: region
                - row "No blocks in this region" [ref=e343]:
                  - cell "No blocks in this region" [ref=e344]:
                    - emphasis [ref=e345]: No blocks in this region
                - row "Footer Bottom Place block in the Footer Bottom region" [ref=e346]:
                  - cell "Footer Bottom Place block in the Footer Bottom region" [ref=e347]:
                    - text: Footer Bottom
                    - link "Place block in the Footer Bottom region" [ref=e349] [cursor=pointer]:
                      - /url: /admin/structure/block/library/olivero?region=footer_bottom
                      - text: Place block
                      - generic [ref=e350]:
                        - text: in the
                        - emphasis [ref=e351]: Footer Bottom
                        - text: region
                - row "Powered by Drupal System Region for Powered by Drupal block * Footer Bottom Edit Powered by Drupal List additional actions" [ref=e352]:
                  - cell "Powered by Drupal" [ref=e353]:
                    - generic [ref=e354]:
                      - link "Change order" [ref=e355]:
                        - /url: "#"
                      - generic [ref=e356]: Powered by Drupal
                  - cell "System" [ref=e357]
                  - cell "Region for Powered by Drupal block * Footer Bottom" [ref=e358]:
                    - generic [ref=e359]:
                      - generic [ref=e360] [cursor=pointer]: Region for Powered by Drupal block *
                      - combobox "Region for Powered by Drupal block *" [ref=e361]:
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
                  - cell "Edit Powered by Drupal List additional actions" [ref=e362]:
                    - list [ref=e365]:
                      - listitem [ref=e366]:
                        - link "Edit Powered by Drupal" [ref=e367] [cursor=pointer]:
                          - /url: /admin/structure/block/manage/olivero_powered?destination=/admin/structure/block
                          - text: Configure
                      - listitem:
                        - button "List additional actions" [ref=e368]:
                          - generic [ref=e369]: List additional actions
          - button "Save blocks" [ref=e371] [cursor=pointer]
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/rtl-mid/vrt/structure.spec.ts/structure-block-layout.png, writing actual.
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