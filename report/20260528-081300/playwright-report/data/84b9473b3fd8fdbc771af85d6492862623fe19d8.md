# Instructions

- Following Playwright test failed.
- Explain why, be concise, respect Playwright best practices.
- Provide a snippet of code with the fix, if possible.

# Test info

- Name: vrt/config.spec.ts >> config-media-file-system >> default state
- Location: tests/vrt/generate-vrt-tests.ts:9:11

# Error details

```
Error: expect(page).toHaveScreenshot(expected) failed

  Expected an image 385px by 2163px, received 375px by 2129px. 79317 pixels (ratio 0.10 of all image pixels) are different.

  Snapshot: config-media-file-system.png

Call log:
  - Expect "toHaveScreenshot(config-media-file-system.png)" with timeout 5000ms
    - verifying given screenshot expectation
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - Expected an image 385px by 2163px, received 375px by 2129px. 79317 pixels (ratio 0.10 of all image pixels) are different.
  - waiting 100ms before taking screenshot
  - taking page screenshot
    - disabled all CSS animations
  - waiting for fonts to load...
  - fonts loaded
  - captured a stable screenshot
  - Expected an image 385px by 2163px, received 375px by 2129px. 79317 pixels (ratio 0.10 of all image pixels) are different.

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
            - link "Media" [ref=e26] [cursor=pointer]:
              - /url: /admin/config/media
      - heading "File system" [level=1] [ref=e29]
    - generic [ref=e34]:
      - generic [ref=e35]:
        - generic [ref=e36] [cursor=pointer]: Public file system path
        - text: sites/default/files
        - generic [ref=e37]: A local file system path where public files will be stored. This directory must exist and be writable by Drupal. This directory must be relative to the Drupal installation directory and be accessible over the web. This must be changed in settings.php
      - generic [ref=e38]:
        - generic [ref=e39] [cursor=pointer]: Public file base URL
        - text: http://localhost/sites/default/files
        - generic [ref=e40]: The base URL that will be used for public file URLs. This can be changed in settings.php
      - generic [ref=e41]:
        - generic [ref=e42] [cursor=pointer]: Optimized assets file system path
        - text: sites/default/files
        - generic [ref=e43]: A local file system path where optimized assets files will be stored. This directory must exist and be writable by Drupal. This directory must be relative to the Drupal installation directory and be accessible over the web. This must be changed in settings.php
      - generic [ref=e44]:
        - generic [ref=e45] [cursor=pointer]: Private file system path
        - text: Not set
        - generic [ref=e46]: An existing local file system path for storing private files. It should be writable by Drupal and not accessible over the web. This must be changed in settings.php
      - generic [ref=e47]:
        - generic [ref=e48] [cursor=pointer]: Temporary directory
        - text: /tmp
        - generic [ref=e49]: A local file system path where temporary files will be stored. This directory should not be accessible over the web. This must be changed in settings.php.
      - group "Default download method" [ref=e50]:
        - generic [ref=e52]: Default download method
        - generic [ref=e53]:
          - generic [ref=e55]:
            - radio "Public local files served by the webserver." [checked] [ref=e56]
            - text: Public local files served by the webserver.
          - generic [ref=e57]: This setting is used as the preferred download method. The use of public files is more efficient, but does not provide any access control.
      - generic [ref=e58]:
        - generic [ref=e59] [cursor=pointer]: Delete temporary files after
        - combobox "Delete temporary files after" [ref=e60]:
          - option "Never"
          - option "6 hours" [selected]
          - option "12 hours"
          - option "1 day"
          - option "1 week"
          - option "4 weeks"
          - option "3 months"
        - generic [ref=e61]:
          - text: Temporary files are not referenced, but are in the file system and therefore may show up in administrative lists.
          - strong [ref=e62]: "Warning:"
          - text: If enabled, temporary files will be permanently deleted and may not be recoverable.
      - group [ref=e63]:
        - button "Sanitize filenames" [expanded] [ref=e64] [cursor=pointer]: Sanitize filenames
        - generic [ref=e65]:
          - generic [ref=e66]: These settings only apply to new files as they are uploaded. Changes here do not affect existing file names.
          - generic [ref=e67]:
            - generic [ref=e68] [cursor=pointer]: Replacement character
            - combobox "Replacement character" [ref=e69]:
              - option "Dash (-)" [selected]
              - option "Underscore (_)"
            - generic [ref=e70]: Used when replacing whitespace, replacing non-alphanumeric characters or transliterating unknown characters.
          - generic [ref=e71]:
            - checkbox "Transliterate" [ref=e72]
            - text: Transliterate
            - generic [ref=e73]: Transliteration replaces any characters that are not alphanumeric, underscores, periods or hyphens with the replacement character. It ensures filenames only contain ASCII characters. It is recommended to keep transliteration enabled.
          - generic [ref=e74]:
            - checkbox "Replace whitespace with the replacement character" [ref=e75]
            - text: Replace whitespace with the replacement character
          - generic [ref=e76]:
            - checkbox "Replace non-alphanumeric characters with the replacement character" [ref=e77]
            - text: Replace non-alphanumeric characters with the replacement character
            - generic [ref=e78]: Alphanumeric characters, dots (.), underscores (_) and dashes (-) are preserved.
          - generic [ref=e79]:
            - checkbox "Replace sequences of dots, underscores and/or dashes with the replacement character" [ref=e80]
            - text: Replace sequences of dots, underscores and/or dashes with the replacement character
          - generic [ref=e81]:
            - checkbox "Convert to lowercase" [ref=e82]
            - text: Convert to lowercase
      - button "Save configuration" [ref=e84] [cursor=pointer]
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