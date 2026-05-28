# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/content.spec.ts >> content-overview >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 375px by 5922px, received 504px by 5258px. 158244 pixels (ratio 0.06 of all image pixels) are different.

  Snapshot: content-overview.png

Call log:
  - Expect "toHaveScreenshot(content-overview.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 375px by 5922px, received 504px by 5258px. 158244 pixels (ratio 0.06 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 375px by 5922px, received 504px by 5258px. 158244 pixels (ratio 0.06 of all image pixels) are different.

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
      - generic [ref=e23]:
        - heading "Content" [level=1] [ref=e25]
        - generic [ref=e26]:
          - heading "Primary tabs" [level=2] [ref=e27]
          - navigation "Primary tabs" [ref=e28]:
            - list [ref=e29]:
              - listitem [ref=e30]:
                - link "Content" [ref=e31] [cursor=pointer]:
                  - /url: /admin/content
                - button "Tabs display toggle" [ref=e32]:
                  - img [ref=e34]
    - generic [ref=e38]:
      - list [ref=e40]:
        - listitem [ref=e41]:
          - link "+Add content" [ref=e42] [cursor=pointer]:
            - /url: /node/add
      - generic [ref=e45]:
        - form "Filter the contents of the Content view" [ref=e47]:
          - generic [ref=e48]:
            - generic [ref=e49] [cursor=pointer]: Title
            - textbox "Title" [ref=e50]
          - generic [ref=e51]:
            - generic [ref=e52] [cursor=pointer]: Content type
            - combobox "Content type" [ref=e53]:
              - option "- Any -" [selected]
              - option "Article"
              - option "Basic page"
          - generic [ref=e54]:
            - generic [ref=e55] [cursor=pointer]: Published status
            - combobox "Published status" [ref=e56]:
              - option "- Any -" [selected]
              - option "Published"
              - option "Unpublished"
          - button "Filter" [ref=e58] [cursor=pointer]
        - generic [ref=e61]:
          - button "Show all columns" [ref=e63] [cursor=pointer]
          - table [ref=e64]:
            - rowgroup [ref=e65]:
              - row "Select all rows in this table Title Content type Status Operations" [ref=e66]:
                - columnheader "Select all rows in this table" [ref=e67]:
                  - checkbox "Select all rows in this table" [ref=e68]
                - columnheader "Title" [ref=e69]:
                  - link "Title" [ref=e70] [cursor=pointer]:
                    - /url: "?order=title&sort=asc"
                - columnheader "Content type" [ref=e71]:
                  - link "Content type" [ref=e72] [cursor=pointer]:
                    - /url: "?order=type&sort=asc"
                - columnheader "Status" [ref=e73]:
                  - link "Status" [ref=e74] [cursor=pointer]:
                    - /url: "?order=status&sort=asc"
                - columnheader "Operations" [ref=e75]
            - rowgroup [ref=e76]:
              - row "Update this item Dummy Page 20 Basic page Published Edit Dummy Page 20 List additional actions" [ref=e77]:
                - cell "Update this item" [ref=e78]:
                  - generic [ref=e79]:
                    - generic [ref=e80] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e81]
                - cell "Dummy Page 20" [ref=e82]:
                  - link "Dummy Page 20" [ref=e83] [cursor=pointer]:
                    - /url: /node/50
                - cell "Basic page" [ref=e84]
                - cell "Published" [ref=e85]
                - cell "Edit Dummy Page 20 List additional actions" [ref=e86]:
                  - list [ref=e89]:
                    - listitem [ref=e90]:
                      - link "Edit Dummy Page 20" [ref=e91] [cursor=pointer]:
                        - /url: /node/50/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e92]:
                        - generic [ref=e93]: List additional actions
              - row "Update this item Dummy Page 6 Basic page Published Edit Dummy Page 6 List additional actions" [ref=e94]:
                - cell "Update this item" [ref=e95]:
                  - generic [ref=e96]:
                    - generic [ref=e97] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e98]
                - cell "Dummy Page 6" [ref=e99]:
                  - link "Dummy Page 6" [ref=e100] [cursor=pointer]:
                    - /url: /node/36
                - cell "Basic page" [ref=e101]
                - cell "Published" [ref=e102]
                - cell "Edit Dummy Page 6 List additional actions" [ref=e103]:
                  - list [ref=e106]:
                    - listitem [ref=e107]:
                      - link "Edit Dummy Page 6" [ref=e108] [cursor=pointer]:
                        - /url: /node/36/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e109]:
                        - generic [ref=e110]: List additional actions
              - row "Update this item Dummy Page 5 Basic page Published Edit Dummy Page 5 List additional actions" [ref=e111]:
                - cell "Update this item" [ref=e112]:
                  - generic [ref=e113]:
                    - generic [ref=e114] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e115]
                - cell "Dummy Page 5" [ref=e116]:
                  - link "Dummy Page 5" [ref=e117] [cursor=pointer]:
                    - /url: /node/35
                - cell "Basic page" [ref=e118]
                - cell "Published" [ref=e119]
                - cell "Edit Dummy Page 5 List additional actions" [ref=e120]:
                  - list [ref=e123]:
                    - listitem [ref=e124]:
                      - link "Edit Dummy Page 5" [ref=e125] [cursor=pointer]:
                        - /url: /node/35/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e126]:
                        - generic [ref=e127]: List additional actions
              - row "Update this item Dummy Page 4 Basic page Published Edit Dummy Page 4 List additional actions" [ref=e128]:
                - cell "Update this item" [ref=e129]:
                  - generic [ref=e130]:
                    - generic [ref=e131] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e132]
                - cell "Dummy Page 4" [ref=e133]:
                  - link "Dummy Page 4" [ref=e134] [cursor=pointer]:
                    - /url: /node/34
                - cell "Basic page" [ref=e135]
                - cell "Published" [ref=e136]
                - cell "Edit Dummy Page 4 List additional actions" [ref=e137]:
                  - list [ref=e140]:
                    - listitem [ref=e141]:
                      - link "Edit Dummy Page 4" [ref=e142] [cursor=pointer]:
                        - /url: /node/34/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e143]:
                        - generic [ref=e144]: List additional actions
              - row "Update this item Dummy Page 3 Basic page Published Edit Dummy Page 3 List additional actions" [ref=e145]:
                - cell "Update this item" [ref=e146]:
                  - generic [ref=e147]:
                    - generic [ref=e148] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e149]
                - cell "Dummy Page 3" [ref=e150]:
                  - link "Dummy Page 3" [ref=e151] [cursor=pointer]:
                    - /url: /node/33
                - cell "Basic page" [ref=e152]
                - cell "Published" [ref=e153]
                - cell "Edit Dummy Page 3 List additional actions" [ref=e154]:
                  - list [ref=e157]:
                    - listitem [ref=e158]:
                      - link "Edit Dummy Page 3" [ref=e159] [cursor=pointer]:
                        - /url: /node/33/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e160]:
                        - generic [ref=e161]: List additional actions
              - row "Update this item Dummy Page 2 Basic page Published Edit Dummy Page 2 List additional actions" [ref=e162]:
                - cell "Update this item" [ref=e163]:
                  - generic [ref=e164]:
                    - generic [ref=e165] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e166]
                - cell "Dummy Page 2" [ref=e167]:
                  - link "Dummy Page 2" [ref=e168] [cursor=pointer]:
                    - /url: /node/32
                - cell "Basic page" [ref=e169]
                - cell "Published" [ref=e170]
                - cell "Edit Dummy Page 2 List additional actions" [ref=e171]:
                  - list [ref=e174]:
                    - listitem [ref=e175]:
                      - link "Edit Dummy Page 2" [ref=e176] [cursor=pointer]:
                        - /url: /node/32/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e177]:
                        - generic [ref=e178]: List additional actions
              - row "Update this item Dummy Page 1 Basic page Published Edit Dummy Page 1 List additional actions" [ref=e179]:
                - cell "Update this item" [ref=e180]:
                  - generic [ref=e181]:
                    - generic [ref=e182] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e183]
                - cell "Dummy Page 1" [ref=e184]:
                  - link "Dummy Page 1" [ref=e185] [cursor=pointer]:
                    - /url: /node/31
                - cell "Basic page" [ref=e186]
                - cell "Published" [ref=e187]
                - cell "Edit Dummy Page 1 List additional actions" [ref=e188]:
                  - list [ref=e191]:
                    - listitem [ref=e192]:
                      - link "Edit Dummy Page 1" [ref=e193] [cursor=pointer]:
                        - /url: /node/31/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e194]:
                        - generic [ref=e195]: List additional actions
              - row "Update this item Dummy Article 30 Article Published Edit Dummy Article 30 List additional actions" [ref=e196]:
                - cell "Update this item" [ref=e197]:
                  - generic [ref=e198]:
                    - generic [ref=e199] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e200]
                - cell "Dummy Article 30" [ref=e201]:
                  - link "Dummy Article 30" [ref=e202] [cursor=pointer]:
                    - /url: /node/30
                - cell "Article" [ref=e203]
                - cell "Published" [ref=e204]
                - cell "Edit Dummy Article 30 List additional actions" [ref=e205]:
                  - list [ref=e208]:
                    - listitem [ref=e209]:
                      - link "Edit Dummy Article 30" [ref=e210] [cursor=pointer]:
                        - /url: /node/30/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e211]:
                        - generic [ref=e212]: List additional actions
              - row "Update this item Dummy Article 29 Article Published Edit Dummy Article 29 List additional actions" [ref=e213]:
                - cell "Update this item" [ref=e214]:
                  - generic [ref=e215]:
                    - generic [ref=e216] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e217]
                - cell "Dummy Article 29" [ref=e218]:
                  - link "Dummy Article 29" [ref=e219] [cursor=pointer]:
                    - /url: /node/29
                - cell "Article" [ref=e220]
                - cell "Published" [ref=e221]
                - cell "Edit Dummy Article 29 List additional actions" [ref=e222]:
                  - list [ref=e225]:
                    - listitem [ref=e226]:
                      - link "Edit Dummy Article 29" [ref=e227] [cursor=pointer]:
                        - /url: /node/29/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e228]:
                        - generic [ref=e229]: List additional actions
              - row "Update this item Dummy Article 28 Article Published Edit Dummy Article 28 List additional actions" [ref=e230]:
                - cell "Update this item" [ref=e231]:
                  - generic [ref=e232]:
                    - generic [ref=e233] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e234]
                - cell "Dummy Article 28" [ref=e235]:
                  - link "Dummy Article 28" [ref=e236] [cursor=pointer]:
                    - /url: /node/28
                - cell "Article" [ref=e237]
                - cell "Published" [ref=e238]
                - cell "Edit Dummy Article 28 List additional actions" [ref=e239]:
                  - list [ref=e242]:
                    - listitem [ref=e243]:
                      - link "Edit Dummy Article 28" [ref=e244] [cursor=pointer]:
                        - /url: /node/28/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e245]:
                        - generic [ref=e246]: List additional actions
              - row "Update this item Dummy Article 27 Article Published Edit Dummy Article 27 List additional actions" [ref=e247]:
                - cell "Update this item" [ref=e248]:
                  - generic [ref=e249]:
                    - generic [ref=e250] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e251]
                - cell "Dummy Article 27" [ref=e252]:
                  - link "Dummy Article 27" [ref=e253] [cursor=pointer]:
                    - /url: /node/27
                - cell "Article" [ref=e254]
                - cell "Published" [ref=e255]
                - cell "Edit Dummy Article 27 List additional actions" [ref=e256]:
                  - list [ref=e259]:
                    - listitem [ref=e260]:
                      - link "Edit Dummy Article 27" [ref=e261] [cursor=pointer]:
                        - /url: /node/27/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e262]:
                        - generic [ref=e263]: List additional actions
              - row "Update this item Dummy Page 7 Basic page Published Edit Dummy Page 7 List additional actions" [ref=e264]:
                - cell "Update this item" [ref=e265]:
                  - generic [ref=e266]:
                    - generic [ref=e267] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e268]
                - cell "Dummy Page 7" [ref=e269]:
                  - link "Dummy Page 7" [ref=e270] [cursor=pointer]:
                    - /url: /node/37
                - cell "Basic page" [ref=e271]
                - cell "Published" [ref=e272]
                - cell "Edit Dummy Page 7 List additional actions" [ref=e273]:
                  - list [ref=e276]:
                    - listitem [ref=e277]:
                      - link "Edit Dummy Page 7" [ref=e278] [cursor=pointer]:
                        - /url: /node/37/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e279]:
                        - generic [ref=e280]: List additional actions
              - row "Update this item Dummy Page 8 Basic page Published Edit Dummy Page 8 List additional actions" [ref=e281]:
                - cell "Update this item" [ref=e282]:
                  - generic [ref=e283]:
                    - generic [ref=e284] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e285]
                - cell "Dummy Page 8" [ref=e286]:
                  - link "Dummy Page 8" [ref=e287] [cursor=pointer]:
                    - /url: /node/38
                - cell "Basic page" [ref=e288]
                - cell "Published" [ref=e289]
                - cell "Edit Dummy Page 8 List additional actions" [ref=e290]:
                  - list [ref=e293]:
                    - listitem [ref=e294]:
                      - link "Edit Dummy Page 8" [ref=e295] [cursor=pointer]:
                        - /url: /node/38/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e296]:
                        - generic [ref=e297]: List additional actions
              - row "Update this item Dummy Page 9 Basic page Published Edit Dummy Page 9 List additional actions" [ref=e298]:
                - cell "Update this item" [ref=e299]:
                  - generic [ref=e300]:
                    - generic [ref=e301] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e302]
                - cell "Dummy Page 9" [ref=e303]:
                  - link "Dummy Page 9" [ref=e304] [cursor=pointer]:
                    - /url: /node/39
                - cell "Basic page" [ref=e305]
                - cell "Published" [ref=e306]
                - cell "Edit Dummy Page 9 List additional actions" [ref=e307]:
                  - list [ref=e310]:
                    - listitem [ref=e311]:
                      - link "Edit Dummy Page 9" [ref=e312] [cursor=pointer]:
                        - /url: /node/39/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e313]:
                        - generic [ref=e314]: List additional actions
              - row "Update this item Dummy Page 19 Basic page Published Edit Dummy Page 19 List additional actions" [ref=e315]:
                - cell "Update this item" [ref=e316]:
                  - generic [ref=e317]:
                    - generic [ref=e318] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e319]
                - cell "Dummy Page 19" [ref=e320]:
                  - link "Dummy Page 19" [ref=e321] [cursor=pointer]:
                    - /url: /node/49
                - cell "Basic page" [ref=e322]
                - cell "Published" [ref=e323]
                - cell "Edit Dummy Page 19 List additional actions" [ref=e324]:
                  - list [ref=e327]:
                    - listitem [ref=e328]:
                      - link "Edit Dummy Page 19" [ref=e329] [cursor=pointer]:
                        - /url: /node/49/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e330]:
                        - generic [ref=e331]: List additional actions
              - row "Update this item Dummy Page 18 Basic page Published Edit Dummy Page 18 List additional actions" [ref=e332]:
                - cell "Update this item" [ref=e333]:
                  - generic [ref=e334]:
                    - generic [ref=e335] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e336]
                - cell "Dummy Page 18" [ref=e337]:
                  - link "Dummy Page 18" [ref=e338] [cursor=pointer]:
                    - /url: /node/48
                - cell "Basic page" [ref=e339]
                - cell "Published" [ref=e340]
                - cell "Edit Dummy Page 18 List additional actions" [ref=e341]:
                  - list [ref=e344]:
                    - listitem [ref=e345]:
                      - link "Edit Dummy Page 18" [ref=e346] [cursor=pointer]:
                        - /url: /node/48/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e347]:
                        - generic [ref=e348]: List additional actions
              - row "Update this item Dummy Page 17 Basic page Published Edit Dummy Page 17 List additional actions" [ref=e349]:
                - cell "Update this item" [ref=e350]:
                  - generic [ref=e351]:
                    - generic [ref=e352] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e353]
                - cell "Dummy Page 17" [ref=e354]:
                  - link "Dummy Page 17" [ref=e355] [cursor=pointer]:
                    - /url: /node/47
                - cell "Basic page" [ref=e356]
                - cell "Published" [ref=e357]
                - cell "Edit Dummy Page 17 List additional actions" [ref=e358]:
                  - list [ref=e361]:
                    - listitem [ref=e362]:
                      - link "Edit Dummy Page 17" [ref=e363] [cursor=pointer]:
                        - /url: /node/47/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e364]:
                        - generic [ref=e365]: List additional actions
              - row "Update this item Dummy Page 16 Basic page Published Edit Dummy Page 16 List additional actions" [ref=e366]:
                - cell "Update this item" [ref=e367]:
                  - generic [ref=e368]:
                    - generic [ref=e369] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e370]
                - cell "Dummy Page 16" [ref=e371]:
                  - link "Dummy Page 16" [ref=e372] [cursor=pointer]:
                    - /url: /node/46
                - cell "Basic page" [ref=e373]
                - cell "Published" [ref=e374]
                - cell "Edit Dummy Page 16 List additional actions" [ref=e375]:
                  - list [ref=e378]:
                    - listitem [ref=e379]:
                      - link "Edit Dummy Page 16" [ref=e380] [cursor=pointer]:
                        - /url: /node/46/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e381]:
                        - generic [ref=e382]: List additional actions
              - row "Update this item Dummy Page 15 Basic page Published Edit Dummy Page 15 List additional actions" [ref=e383]:
                - cell "Update this item" [ref=e384]:
                  - generic [ref=e385]:
                    - generic [ref=e386] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e387]
                - cell "Dummy Page 15" [ref=e388]:
                  - link "Dummy Page 15" [ref=e389] [cursor=pointer]:
                    - /url: /node/45
                - cell "Basic page" [ref=e390]
                - cell "Published" [ref=e391]
                - cell "Edit Dummy Page 15 List additional actions" [ref=e392]:
                  - list [ref=e395]:
                    - listitem [ref=e396]:
                      - link "Edit Dummy Page 15" [ref=e397] [cursor=pointer]:
                        - /url: /node/45/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e398]:
                        - generic [ref=e399]: List additional actions
              - row "Update this item Dummy Page 14 Basic page Published Edit Dummy Page 14 List additional actions" [ref=e400]:
                - cell "Update this item" [ref=e401]:
                  - generic [ref=e402]:
                    - generic [ref=e403] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e404]
                - cell "Dummy Page 14" [ref=e405]:
                  - link "Dummy Page 14" [ref=e406] [cursor=pointer]:
                    - /url: /node/44
                - cell "Basic page" [ref=e407]
                - cell "Published" [ref=e408]
                - cell "Edit Dummy Page 14 List additional actions" [ref=e409]:
                  - list [ref=e412]:
                    - listitem [ref=e413]:
                      - link "Edit Dummy Page 14" [ref=e414] [cursor=pointer]:
                        - /url: /node/44/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e415]:
                        - generic [ref=e416]: List additional actions
              - row "Update this item Dummy Page 13 Basic page Published Edit Dummy Page 13 List additional actions" [ref=e417]:
                - cell "Update this item" [ref=e418]:
                  - generic [ref=e419]:
                    - generic [ref=e420] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e421]
                - cell "Dummy Page 13" [ref=e422]:
                  - link "Dummy Page 13" [ref=e423] [cursor=pointer]:
                    - /url: /node/43
                - cell "Basic page" [ref=e424]
                - cell "Published" [ref=e425]
                - cell "Edit Dummy Page 13 List additional actions" [ref=e426]:
                  - list [ref=e429]:
                    - listitem [ref=e430]:
                      - link "Edit Dummy Page 13" [ref=e431] [cursor=pointer]:
                        - /url: /node/43/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e432]:
                        - generic [ref=e433]: List additional actions
              - row "Update this item Dummy Page 12 Basic page Published Edit Dummy Page 12 List additional actions" [ref=e434]:
                - cell "Update this item" [ref=e435]:
                  - generic [ref=e436]:
                    - generic [ref=e437] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e438]
                - cell "Dummy Page 12" [ref=e439]:
                  - link "Dummy Page 12" [ref=e440] [cursor=pointer]:
                    - /url: /node/42
                - cell "Basic page" [ref=e441]
                - cell "Published" [ref=e442]
                - cell "Edit Dummy Page 12 List additional actions" [ref=e443]:
                  - list [ref=e446]:
                    - listitem [ref=e447]:
                      - link "Edit Dummy Page 12" [ref=e448] [cursor=pointer]:
                        - /url: /node/42/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e449]:
                        - generic [ref=e450]: List additional actions
              - row "Update this item Dummy Page 11 Basic page Published Edit Dummy Page 11 List additional actions" [ref=e451]:
                - cell "Update this item" [ref=e452]:
                  - generic [ref=e453]:
                    - generic [ref=e454] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e455]
                - cell "Dummy Page 11" [ref=e456]:
                  - link "Dummy Page 11" [ref=e457] [cursor=pointer]:
                    - /url: /node/41
                - cell "Basic page" [ref=e458]
                - cell "Published" [ref=e459]
                - cell "Edit Dummy Page 11 List additional actions" [ref=e460]:
                  - list [ref=e463]:
                    - listitem [ref=e464]:
                      - link "Edit Dummy Page 11" [ref=e465] [cursor=pointer]:
                        - /url: /node/41/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e466]:
                        - generic [ref=e467]: List additional actions
              - row "Update this item Dummy Page 10 Basic page Published Edit Dummy Page 10 List additional actions" [ref=e468]:
                - cell "Update this item" [ref=e469]:
                  - generic [ref=e470]:
                    - generic [ref=e471] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e472]
                - cell "Dummy Page 10" [ref=e473]:
                  - link "Dummy Page 10" [ref=e474] [cursor=pointer]:
                    - /url: /node/40
                - cell "Basic page" [ref=e475]
                - cell "Published" [ref=e476]
                - cell "Edit Dummy Page 10 List additional actions" [ref=e477]:
                  - list [ref=e480]:
                    - listitem [ref=e481]:
                      - link "Edit Dummy Page 10" [ref=e482] [cursor=pointer]:
                        - /url: /node/40/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e483]:
                        - generic [ref=e484]: List additional actions
              - row "Update this item Dummy Article 26 Article Published Edit Dummy Article 26 List additional actions" [ref=e485]:
                - cell "Update this item" [ref=e486]:
                  - generic [ref=e487]:
                    - generic [ref=e488] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e489]
                - cell "Dummy Article 26" [ref=e490]:
                  - link "Dummy Article 26" [ref=e491] [cursor=pointer]:
                    - /url: /node/26
                - cell "Article" [ref=e492]
                - cell "Published" [ref=e493]
                - cell "Edit Dummy Article 26 List additional actions" [ref=e494]:
                  - list [ref=e497]:
                    - listitem [ref=e498]:
                      - link "Edit Dummy Article 26" [ref=e499] [cursor=pointer]:
                        - /url: /node/26/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e500]:
                        - generic [ref=e501]: List additional actions
              - row "Update this item Dummy Article 25 Article Published Edit Dummy Article 25 List additional actions" [ref=e502]:
                - cell "Update this item" [ref=e503]:
                  - generic [ref=e504]:
                    - generic [ref=e505] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e506]
                - cell "Dummy Article 25" [ref=e507]:
                  - link "Dummy Article 25" [ref=e508] [cursor=pointer]:
                    - /url: /node/25
                - cell "Article" [ref=e509]
                - cell "Published" [ref=e510]
                - cell "Edit Dummy Article 25 List additional actions" [ref=e511]:
                  - list [ref=e514]:
                    - listitem [ref=e515]:
                      - link "Edit Dummy Article 25" [ref=e516] [cursor=pointer]:
                        - /url: /node/25/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e517]:
                        - generic [ref=e518]: List additional actions
              - row "Update this item Dummy Article 11 Article Published Edit Dummy Article 11 List additional actions" [ref=e519]:
                - cell "Update this item" [ref=e520]:
                  - generic [ref=e521]:
                    - generic [ref=e522] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e523]
                - cell "Dummy Article 11" [ref=e524]:
                  - link "Dummy Article 11" [ref=e525] [cursor=pointer]:
                    - /url: /node/11
                - cell "Article" [ref=e526]
                - cell "Published" [ref=e527]
                - cell "Edit Dummy Article 11 List additional actions" [ref=e528]:
                  - list [ref=e531]:
                    - listitem [ref=e532]:
                      - link "Edit Dummy Article 11" [ref=e533] [cursor=pointer]:
                        - /url: /node/11/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e534]:
                        - generic [ref=e535]: List additional actions
              - row "Update this item Dummy Article 10 Article Published Edit Dummy Article 10 List additional actions" [ref=e536]:
                - cell "Update this item" [ref=e537]:
                  - generic [ref=e538]:
                    - generic [ref=e539] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e540]
                - cell "Dummy Article 10" [ref=e541]:
                  - link "Dummy Article 10" [ref=e542] [cursor=pointer]:
                    - /url: /node/10
                - cell "Article" [ref=e543]
                - cell "Published" [ref=e544]
                - cell "Edit Dummy Article 10 List additional actions" [ref=e545]:
                  - list [ref=e548]:
                    - listitem [ref=e549]:
                      - link "Edit Dummy Article 10" [ref=e550] [cursor=pointer]:
                        - /url: /node/10/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e551]:
                        - generic [ref=e552]: List additional actions
              - row "Update this item Dummy Article 9 Article Published Edit Dummy Article 9 List additional actions" [ref=e553]:
                - cell "Update this item" [ref=e554]:
                  - generic [ref=e555]:
                    - generic [ref=e556] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e557]
                - cell "Dummy Article 9" [ref=e558]:
                  - link "Dummy Article 9" [ref=e559] [cursor=pointer]:
                    - /url: /node/9
                - cell "Article" [ref=e560]
                - cell "Published" [ref=e561]
                - cell "Edit Dummy Article 9 List additional actions" [ref=e562]:
                  - list [ref=e565]:
                    - listitem [ref=e566]:
                      - link "Edit Dummy Article 9" [ref=e567] [cursor=pointer]:
                        - /url: /node/9/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e568]:
                        - generic [ref=e569]: List additional actions
              - row "Update this item Dummy Article 8 Article Published Edit Dummy Article 8 List additional actions" [ref=e570]:
                - cell "Update this item" [ref=e571]:
                  - generic [ref=e572]:
                    - generic [ref=e573] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e574]
                - cell "Dummy Article 8" [ref=e575]:
                  - link "Dummy Article 8" [ref=e576] [cursor=pointer]:
                    - /url: /node/8
                - cell "Article" [ref=e577]
                - cell "Published" [ref=e578]
                - cell "Edit Dummy Article 8 List additional actions" [ref=e579]:
                  - list [ref=e582]:
                    - listitem [ref=e583]:
                      - link "Edit Dummy Article 8" [ref=e584] [cursor=pointer]:
                        - /url: /node/8/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e585]:
                        - generic [ref=e586]: List additional actions
              - row "Update this item Dummy Article 7 Article Published Edit Dummy Article 7 List additional actions" [ref=e587]:
                - cell "Update this item" [ref=e588]:
                  - generic [ref=e589]:
                    - generic [ref=e590] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e591]
                - cell "Dummy Article 7" [ref=e592]:
                  - link "Dummy Article 7" [ref=e593] [cursor=pointer]:
                    - /url: /node/7
                - cell "Article" [ref=e594]
                - cell "Published" [ref=e595]
                - cell "Edit Dummy Article 7 List additional actions" [ref=e596]:
                  - list [ref=e599]:
                    - listitem [ref=e600]:
                      - link "Edit Dummy Article 7" [ref=e601] [cursor=pointer]:
                        - /url: /node/7/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e602]:
                        - generic [ref=e603]: List additional actions
              - row "Update this item Dummy Article 6 Article Published Edit Dummy Article 6 List additional actions" [ref=e604]:
                - cell "Update this item" [ref=e605]:
                  - generic [ref=e606]:
                    - generic [ref=e607] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e608]
                - cell "Dummy Article 6" [ref=e609]:
                  - link "Dummy Article 6" [ref=e610] [cursor=pointer]:
                    - /url: /node/6
                - cell "Article" [ref=e611]
                - cell "Published" [ref=e612]
                - cell "Edit Dummy Article 6 List additional actions" [ref=e613]:
                  - list [ref=e616]:
                    - listitem [ref=e617]:
                      - link "Edit Dummy Article 6" [ref=e618] [cursor=pointer]:
                        - /url: /node/6/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e619]:
                        - generic [ref=e620]: List additional actions
              - row "Update this item Dummy Article 5 Article Published Edit Dummy Article 5 List additional actions" [ref=e621]:
                - cell "Update this item" [ref=e622]:
                  - generic [ref=e623]:
                    - generic [ref=e624] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e625]
                - cell "Dummy Article 5" [ref=e626]:
                  - link "Dummy Article 5" [ref=e627] [cursor=pointer]:
                    - /url: /node/5
                - cell "Article" [ref=e628]
                - cell "Published" [ref=e629]
                - cell "Edit Dummy Article 5 List additional actions" [ref=e630]:
                  - list [ref=e633]:
                    - listitem [ref=e634]:
                      - link "Edit Dummy Article 5" [ref=e635] [cursor=pointer]:
                        - /url: /node/5/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e636]:
                        - generic [ref=e637]: List additional actions
              - row "Update this item Dummy Article 4 Article Published Edit Dummy Article 4 List additional actions" [ref=e638]:
                - cell "Update this item" [ref=e639]:
                  - generic [ref=e640]:
                    - generic [ref=e641] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e642]
                - cell "Dummy Article 4" [ref=e643]:
                  - link "Dummy Article 4" [ref=e644] [cursor=pointer]:
                    - /url: /node/4
                - cell "Article" [ref=e645]
                - cell "Published" [ref=e646]
                - cell "Edit Dummy Article 4 List additional actions" [ref=e647]:
                  - list [ref=e650]:
                    - listitem [ref=e651]:
                      - link "Edit Dummy Article 4" [ref=e652] [cursor=pointer]:
                        - /url: /node/4/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e653]:
                        - generic [ref=e654]: List additional actions
              - row "Update this item Dummy Article 3 Article Published Edit Dummy Article 3 List additional actions" [ref=e655]:
                - cell "Update this item" [ref=e656]:
                  - generic [ref=e657]:
                    - generic [ref=e658] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e659]
                - cell "Dummy Article 3" [ref=e660]:
                  - link "Dummy Article 3" [ref=e661] [cursor=pointer]:
                    - /url: /node/3
                - cell "Article" [ref=e662]
                - cell "Published" [ref=e663]
                - cell "Edit Dummy Article 3 List additional actions" [ref=e664]:
                  - list [ref=e667]:
                    - listitem [ref=e668]:
                      - link "Edit Dummy Article 3" [ref=e669] [cursor=pointer]:
                        - /url: /node/3/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e670]:
                        - generic [ref=e671]: List additional actions
              - row "Update this item Dummy Article 2 Article Published Edit Dummy Article 2 List additional actions" [ref=e672]:
                - cell "Update this item" [ref=e673]:
                  - generic [ref=e674]:
                    - generic [ref=e675] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e676]
                - cell "Dummy Article 2" [ref=e677]:
                  - link "Dummy Article 2" [ref=e678] [cursor=pointer]:
                    - /url: /node/2
                - cell "Article" [ref=e679]
                - cell "Published" [ref=e680]
                - cell "Edit Dummy Article 2 List additional actions" [ref=e681]:
                  - list [ref=e684]:
                    - listitem [ref=e685]:
                      - link "Edit Dummy Article 2" [ref=e686] [cursor=pointer]:
                        - /url: /node/2/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e687]:
                        - generic [ref=e688]: List additional actions
              - row "Update this item Dummy Article 12 Article Published Edit Dummy Article 12 List additional actions" [ref=e689]:
                - cell "Update this item" [ref=e690]:
                  - generic [ref=e691]:
                    - generic [ref=e692] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e693]
                - cell "Dummy Article 12" [ref=e694]:
                  - link "Dummy Article 12" [ref=e695] [cursor=pointer]:
                    - /url: /node/12
                - cell "Article" [ref=e696]
                - cell "Published" [ref=e697]
                - cell "Edit Dummy Article 12 List additional actions" [ref=e698]:
                  - list [ref=e701]:
                    - listitem [ref=e702]:
                      - link "Edit Dummy Article 12" [ref=e703] [cursor=pointer]:
                        - /url: /node/12/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e704]:
                        - generic [ref=e705]: List additional actions
              - row "Update this item Dummy Article 13 Article Published Edit Dummy Article 13 List additional actions" [ref=e706]:
                - cell "Update this item" [ref=e707]:
                  - generic [ref=e708]:
                    - generic [ref=e709] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e710]
                - cell "Dummy Article 13" [ref=e711]:
                  - link "Dummy Article 13" [ref=e712] [cursor=pointer]:
                    - /url: /node/13
                - cell "Article" [ref=e713]
                - cell "Published" [ref=e714]
                - cell "Edit Dummy Article 13 List additional actions" [ref=e715]:
                  - list [ref=e718]:
                    - listitem [ref=e719]:
                      - link "Edit Dummy Article 13" [ref=e720] [cursor=pointer]:
                        - /url: /node/13/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e721]:
                        - generic [ref=e722]: List additional actions
              - row "Update this item Dummy Article 14 Article Published Edit Dummy Article 14 List additional actions" [ref=e723]:
                - cell "Update this item" [ref=e724]:
                  - generic [ref=e725]:
                    - generic [ref=e726] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e727]
                - cell "Dummy Article 14" [ref=e728]:
                  - link "Dummy Article 14" [ref=e729] [cursor=pointer]:
                    - /url: /node/14
                - cell "Article" [ref=e730]
                - cell "Published" [ref=e731]
                - cell "Edit Dummy Article 14 List additional actions" [ref=e732]:
                  - list [ref=e735]:
                    - listitem [ref=e736]:
                      - link "Edit Dummy Article 14" [ref=e737] [cursor=pointer]:
                        - /url: /node/14/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e738]:
                        - generic [ref=e739]: List additional actions
              - row "Update this item Dummy Article 24 Article Published Edit Dummy Article 24 List additional actions" [ref=e740]:
                - cell "Update this item" [ref=e741]:
                  - generic [ref=e742]:
                    - generic [ref=e743] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e744]
                - cell "Dummy Article 24" [ref=e745]:
                  - link "Dummy Article 24" [ref=e746] [cursor=pointer]:
                    - /url: /node/24
                - cell "Article" [ref=e747]
                - cell "Published" [ref=e748]
                - cell "Edit Dummy Article 24 List additional actions" [ref=e749]:
                  - list [ref=e752]:
                    - listitem [ref=e753]:
                      - link "Edit Dummy Article 24" [ref=e754] [cursor=pointer]:
                        - /url: /node/24/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e755]:
                        - generic [ref=e756]: List additional actions
              - row "Update this item Dummy Article 23 Article Published Edit Dummy Article 23 List additional actions" [ref=e757]:
                - cell "Update this item" [ref=e758]:
                  - generic [ref=e759]:
                    - generic [ref=e760] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e761]
                - cell "Dummy Article 23" [ref=e762]:
                  - link "Dummy Article 23" [ref=e763] [cursor=pointer]:
                    - /url: /node/23
                - cell "Article" [ref=e764]
                - cell "Published" [ref=e765]
                - cell "Edit Dummy Article 23 List additional actions" [ref=e766]:
                  - list [ref=e769]:
                    - listitem [ref=e770]:
                      - link "Edit Dummy Article 23" [ref=e771] [cursor=pointer]:
                        - /url: /node/23/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e772]:
                        - generic [ref=e773]: List additional actions
              - row "Update this item Dummy Article 22 Article Published Edit Dummy Article 22 List additional actions" [ref=e774]:
                - cell "Update this item" [ref=e775]:
                  - generic [ref=e776]:
                    - generic [ref=e777] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e778]
                - cell "Dummy Article 22" [ref=e779]:
                  - link "Dummy Article 22" [ref=e780] [cursor=pointer]:
                    - /url: /node/22
                - cell "Article" [ref=e781]
                - cell "Published" [ref=e782]
                - cell "Edit Dummy Article 22 List additional actions" [ref=e783]:
                  - list [ref=e786]:
                    - listitem [ref=e787]:
                      - link "Edit Dummy Article 22" [ref=e788] [cursor=pointer]:
                        - /url: /node/22/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e789]:
                        - generic [ref=e790]: List additional actions
              - row "Update this item Dummy Article 21 Article Published Edit Dummy Article 21 List additional actions" [ref=e791]:
                - cell "Update this item" [ref=e792]:
                  - generic [ref=e793]:
                    - generic [ref=e794] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e795]
                - cell "Dummy Article 21" [ref=e796]:
                  - link "Dummy Article 21" [ref=e797] [cursor=pointer]:
                    - /url: /node/21
                - cell "Article" [ref=e798]
                - cell "Published" [ref=e799]
                - cell "Edit Dummy Article 21 List additional actions" [ref=e800]:
                  - list [ref=e803]:
                    - listitem [ref=e804]:
                      - link "Edit Dummy Article 21" [ref=e805] [cursor=pointer]:
                        - /url: /node/21/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e806]:
                        - generic [ref=e807]: List additional actions
              - row "Update this item Dummy Article 20 Article Published Edit Dummy Article 20 List additional actions" [ref=e808]:
                - cell "Update this item" [ref=e809]:
                  - generic [ref=e810]:
                    - generic [ref=e811] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e812]
                - cell "Dummy Article 20" [ref=e813]:
                  - link "Dummy Article 20" [ref=e814] [cursor=pointer]:
                    - /url: /node/20
                - cell "Article" [ref=e815]
                - cell "Published" [ref=e816]
                - cell "Edit Dummy Article 20 List additional actions" [ref=e817]:
                  - list [ref=e820]:
                    - listitem [ref=e821]:
                      - link "Edit Dummy Article 20" [ref=e822] [cursor=pointer]:
                        - /url: /node/20/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e823]:
                        - generic [ref=e824]: List additional actions
              - row "Update this item Dummy Article 19 Article Published Edit Dummy Article 19 List additional actions" [ref=e825]:
                - cell "Update this item" [ref=e826]:
                  - generic [ref=e827]:
                    - generic [ref=e828] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e829]
                - cell "Dummy Article 19" [ref=e830]:
                  - link "Dummy Article 19" [ref=e831] [cursor=pointer]:
                    - /url: /node/19
                - cell "Article" [ref=e832]
                - cell "Published" [ref=e833]
                - cell "Edit Dummy Article 19 List additional actions" [ref=e834]:
                  - list [ref=e837]:
                    - listitem [ref=e838]:
                      - link "Edit Dummy Article 19" [ref=e839] [cursor=pointer]:
                        - /url: /node/19/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e840]:
                        - generic [ref=e841]: List additional actions
              - row "Update this item Dummy Article 18 Article Published Edit Dummy Article 18 List additional actions" [ref=e842]:
                - cell "Update this item" [ref=e843]:
                  - generic [ref=e844]:
                    - generic [ref=e845] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e846]
                - cell "Dummy Article 18" [ref=e847]:
                  - link "Dummy Article 18" [ref=e848] [cursor=pointer]:
                    - /url: /node/18
                - cell "Article" [ref=e849]
                - cell "Published" [ref=e850]
                - cell "Edit Dummy Article 18 List additional actions" [ref=e851]:
                  - list [ref=e854]:
                    - listitem [ref=e855]:
                      - link "Edit Dummy Article 18" [ref=e856] [cursor=pointer]:
                        - /url: /node/18/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e857]:
                        - generic [ref=e858]: List additional actions
              - row "Update this item Dummy Article 17 Article Published Edit Dummy Article 17 List additional actions" [ref=e859]:
                - cell "Update this item" [ref=e860]:
                  - generic [ref=e861]:
                    - generic [ref=e862] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e863]
                - cell "Dummy Article 17" [ref=e864]:
                  - link "Dummy Article 17" [ref=e865] [cursor=pointer]:
                    - /url: /node/17
                - cell "Article" [ref=e866]
                - cell "Published" [ref=e867]
                - cell "Edit Dummy Article 17 List additional actions" [ref=e868]:
                  - list [ref=e871]:
                    - listitem [ref=e872]:
                      - link "Edit Dummy Article 17" [ref=e873] [cursor=pointer]:
                        - /url: /node/17/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e874]:
                        - generic [ref=e875]: List additional actions
              - row "Update this item Dummy Article 16 Article Published Edit Dummy Article 16 List additional actions" [ref=e876]:
                - cell "Update this item" [ref=e877]:
                  - generic [ref=e878]:
                    - generic [ref=e879] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e880]
                - cell "Dummy Article 16" [ref=e881]:
                  - link "Dummy Article 16" [ref=e882] [cursor=pointer]:
                    - /url: /node/16
                - cell "Article" [ref=e883]
                - cell "Published" [ref=e884]
                - cell "Edit Dummy Article 16 List additional actions" [ref=e885]:
                  - list [ref=e888]:
                    - listitem [ref=e889]:
                      - link "Edit Dummy Article 16" [ref=e890] [cursor=pointer]:
                        - /url: /node/16/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e891]:
                        - generic [ref=e892]: List additional actions
              - row "Update this item Dummy Article 15 Article Published Edit Dummy Article 15 List additional actions" [ref=e893]:
                - cell "Update this item" [ref=e894]:
                  - generic [ref=e895]:
                    - generic [ref=e896] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e897]
                - cell "Dummy Article 15" [ref=e898]:
                  - link "Dummy Article 15" [ref=e899] [cursor=pointer]:
                    - /url: /node/15
                - cell "Article" [ref=e900]
                - cell "Published" [ref=e901]
                - cell "Edit Dummy Article 15 List additional actions" [ref=e902]:
                  - list [ref=e905]:
                    - listitem [ref=e906]:
                      - link "Edit Dummy Article 15" [ref=e907] [cursor=pointer]:
                        - /url: /node/15/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e908]:
                        - generic [ref=e909]: List additional actions
              - row "Update this item Dummy Article 1 Article Published Edit Dummy Article 1 List additional actions" [ref=e910]:
                - cell "Update this item" [ref=e911]:
                  - generic [ref=e912]:
                    - generic [ref=e913] [cursor=pointer]: Update this item
                    - checkbox "Update this item" [ref=e914]
                - cell "Dummy Article 1" [ref=e915]:
                  - link "Dummy Article 1" [ref=e916] [cursor=pointer]:
                    - /url: /node/1
                - cell "Article" [ref=e917]
                - cell "Published" [ref=e918]
                - cell "Edit Dummy Article 1 List additional actions" [ref=e919]:
                  - list [ref=e922]:
                    - listitem [ref=e923]:
                      - link "Edit Dummy Article 1" [ref=e924] [cursor=pointer]:
                        - /url: /node/1/edit?destination=/admin/content
                        - text: Edit
                    - listitem:
                      - button "List additional actions" [ref=e925]:
                        - generic [ref=e926]: List additional actions
          - group "Perform actions on the selected items in the Content view" [ref=e927]:
            - generic [ref=e928]:
              - text: Perform actions on the selected items in the
              - emphasis [ref=e929]: Content
              - text: view
            - generic [ref=e930]: No items selected
            - generic [ref=e931]:
              - text: "Action:"
              - combobox "Action:" [ref=e932]:
                - option "- Select -" [selected]
                - option "Delete content"
                - option "Make content sticky"
                - option "Make content unsticky"
                - option "Promote content to front page"
                - option "Publish content"
                - option "Save content"
                - option "Remove content from front page"
                - option "Unpublish content"
            - button "Apply to selected items" [ref=e934] [cursor=pointer]
  - generic [ref=e935]: No items selected
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