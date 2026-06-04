# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/content.spec.ts >> node-add-article >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid/vrt/content.spec.ts/node-add-article.png, writing actual.
```

# Page snapshot

```yaml
- generic [active] [ref=e1]:
  - link "Skip to main content" [ref=e2] [cursor=pointer]:
    - /url: "#main-content"
  - button "Expand sidebar" [ref=e5] [cursor=pointer]:
    - img [ref=e6]
    - generic [ref=e8]: Expand sidebar
  - generic [ref=e10]:
    - navigation "Breadcrumb" [ref=e12]:
      - heading "Breadcrumb" [level=2] [ref=e13]
      - list [ref=e14]:
        - listitem:
          - link "Back to site" [ref=e15] [cursor=pointer]:
            - /url: /
        - listitem:
          - link "Add content item" [ref=e16] [cursor=pointer]:
            - /url: /node/add
    - button "Show sidebar panel" [ref=e19] [cursor=pointer]:
      - generic [ref=e20]: Show sidebar panel
  - generic [ref=e22]:
    - banner [ref=e23]:
      - heading "Create Article" [level=1] [ref=e27]
    - main [ref=e29]:
      - generic [ref=e35]:
        - generic [ref=e37]:
          - generic [ref=e38] [cursor=pointer]: Title *
          - textbox "Title *" [ref=e39]:
            - /placeholder: ""
        - generic [ref=e41]:
          - generic [ref=e42]:
            - generic [ref=e43] [cursor=pointer]:
              - text: Body
              - generic [ref=e44]:
                - text: (
                - button "Edit summary" [ref=e45]
                - text: )
            - application "Rich Text Editor" [ref=e47]:
              - toolbar "Editor toolbar" [ref=e50]:
                - generic [ref=e51]:
                  - button "Bold" [ref=e52]:
                    - img [ref=e53]
                  - button "Italic" [ref=e55]:
                    - img [ref=e56]
                  - button "Link" [ref=e59]:
                    - img [ref=e60]
                  - generic [ref=e64]:
                    - button "Bulleted List" [ref=e65]:
                      - img [ref=e66]
                    - button "Bulleted List" [ref=e68]:
                      - img [ref=e69]
                  - generic [ref=e72]:
                    - button "Numbered List" [ref=e73]:
                      - img [ref=e74]
                    - button "Numbered List" [ref=e76]:
                      - img [ref=e77]
                  - button "Block quote" [ref=e80]:
                    - img [ref=e81]
                  - button "Upload image from computer" [ref=e83]:
                    - img [ref=e84]
                  - button "Paragraph, Heading" [ref=e90]:
                    - generic [ref=e91]: Paragraph
                    - img
                  - button "Code" [ref=e92]:
                    - img [ref=e93]
                  - button "Source" [ref=e96]:
                    - img [ref=e97]
                    - generic [ref=e100]: Source
              - 'textbox "Rich Text Editor. Editing area: main. Press Alt+0 for help." [ref=e101]':
                - paragraph [ref=e102]
          - generic [ref=e104]:
            - generic [ref=e105] [cursor=pointer]: Text format
            - combobox "Text format" [ref=e106]:
              - option "Basic HTML" [selected]
              - option "Restricted HTML"
              - option "Full HTML"
        - generic [ref=e107]:
          - button "Save" [ref=e108] [cursor=pointer]
          - button "Preview" [ref=e109] [cursor=pointer]
  - status [ref=e110]
  - generic:
    - application:
      - generic:
        - generic:
          - list
        - generic:
          - list
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
     |         ^ Error: A snapshot doesn't exist at /var/www/html/__screenshots__/mid/vrt/content.spec.ts/node-add-article.png, writing actual.
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