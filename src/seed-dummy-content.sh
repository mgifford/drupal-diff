#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PROJECTS=("$ROOT_DIR/drupal-11.3.10" "$ROOT_DIR/drupal-git")
USE_REALISTIC_DUMMY_CONTENT="${USE_REALISTIC_DUMMY_CONTENT:-false}"
ARTIFACT_MODULE_DIR="$ROOT_DIR/artifacts/realistic_dummy_content"

sync_artifact_module() {
  local project_dir="$1"
  local target_dir="$project_dir/modules/realistic_dummy_content"

  if [[ ! -d "$ARTIFACT_MODULE_DIR" ]]; then
    return 1
  fi

  mkdir -p "$target_dir"
  rsync -a --delete "$ARTIFACT_MODULE_DIR/" "$target_dir/"
  return 0
}

seed_with_playwright() {
  local project_dir="$1"
  local base_url="$2"

  (cd "$project_dir" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt npm install >/dev/null)
  (cd "$project_dir" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt npx playwright install --with-deps chromium >/dev/null)

  (cd "$project_dir" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt env \
    BASE_URL="$base_url" \
    DRUPAL_ADMIN_USER="admin" \
    DRUPAL_ADMIN_PASS="admin" \
    node - <<'NODE'
const { chromium } = require('playwright');

const baseUrl = process.env.BASE_URL;
const username = process.env.DRUPAL_ADMIN_USER;
const password = process.env.DRUPAL_ADMIN_PASS;

async function maybeCreateContent(page, route, titlePrefix, bodyPrefix, count) {
  for (let i = 1; i <= count; i++) {
    await page.goto(`${baseUrl}${route}`, { waitUntil: 'networkidle' });

    if (await page.getByText('Access denied', { exact: false }).count()) {
      throw new Error(`Access denied while trying to create content at ${route}`);
    }

    const title = page.getByLabel('Title');
    if (!(await title.count())) {
      return;
    }

    await title.fill(`${titlePrefix} ${i}`);

    const body = page.locator('textarea[name*="body"], textarea').first();
    if (await body.count()) {
      await body.fill(`${bodyPrefix} ${i}`);
    }

    const save = page.locator('input#edit-submit, input[name="op"][value="Save"], button:has-text("Save")').first();
    if (await save.count()) {
      await save.click();
      await page.waitForLoadState('networkidle');
    }
  }
}

(async () => {
  const browser = await chromium.launch({ headless: true });
  const context = await browser.newContext({ viewport: { width: 1440, height: 1024 } });
  const page = await context.newPage();

  await page.goto(`${baseUrl}/user/login`, { waitUntil: 'networkidle' });
  await page.getByLabel('Username').fill(username);
  await page.getByLabel('Password').fill(password);
  await page.getByRole('button', { name: 'Log in' }).click();
  await page.waitForLoadState('networkidle');

  if ((await page.locator('h1:has-text("Login failed")').count()) || page.url().includes('/user/login')) {
    throw new Error(`Authentication failed for ${baseUrl}; unable to seed dummy content`);
  }

  await maybeCreateContent(page, '/node/add/article', 'Dummy Article UI', 'Generated via UI fallback article body', 12);
  await maybeCreateContent(page, '/node/add/page', 'Dummy Page UI', 'Generated via UI fallback page body', 8);

  await context.close();
  await browser.close();
})();
NODE
  )
}

create_content_for_project() {
  local project_dir="$1"
  local label
  label="$(basename "$project_dir")"
  local base_url

  if [[ "$label" == "drupal-11.3.10" ]]; then
    base_url="http://drupal-11.3.10.ddev.site"
  else
    base_url="http://drupal-12.ddev.site"
  fi

  echo "Seeding dummy content in $label"
  (cd "$project_dir" && ddev start >/dev/null)
  (cd "$project_dir" && ddev mysql -e "TRUNCATE flood;" >/dev/null 2>&1 || true)

  if ! (cd "$project_dir" && ddev drush --version >/dev/null 2>&1); then
    echo "drush unavailable in $label, using Playwright UI fallback"
    seed_with_playwright "$project_dir" "$base_url"
    return 0
  fi

  if [[ "$USE_REALISTIC_DUMMY_CONTENT" == "true" ]]; then
    if sync_artifact_module "$project_dir"; then
      echo "Using repo artifact realistic_dummy_content module on $label"
      if (cd "$project_dir" && ddev drush en -y realistic_dummy_content >/dev/null) && (cd "$project_dir" && ddev drush realistic-dummy-content:seed >/dev/null); then
        (cd "$project_dir" && ddev drush cr >/dev/null)
        echo "realistic_dummy_content artifact seeding completed on $label"
        return 0
      fi
      echo "realistic_dummy_content artifact seeding failed on $label; continuing with built-in seeding"
    else
      echo "realistic_dummy_content artifact not found at $ARTIFACT_MODULE_DIR; continuing with built-in seeding"
    fi
  fi

  # Use Drupal APIs directly so this works without requiring optional generator modules.
  (cd "$project_dir" && ddev drush php:eval '
use Drupal\user\Entity\User;
use Drupal\node\Entity\NodeType;
use Drupal\taxonomy\Entity\Vocabulary;
use Drupal\taxonomy\Entity\Term;
use Drupal\node\Entity\Node;
use Drupal\block_content\Entity\BlockContent;
use Drupal\Core\File\FileSystemInterface;
use Drupal\field\Entity\FieldStorageConfig;
use Drupal\field\Entity\FieldConfig;
use Drupal\Core\Entity\Entity\EntityFormDisplay;
use Drupal\Core\Entity\Entity\EntityViewDisplay;

$timestamp = \Drupal::time()->getRequestTime();
$lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tempus, metus non cursus eleifend, lectus augue gravida nibh, ut blandit ipsum arcu in mauris.";

if (!\Drupal::entityTypeManager()->getStorage("node_type")->load("article")) {
  $articleType = NodeType::create([
    "type" => "article",
    "name" => "Article",
    "description" => "Generated for visual regression seeding",
    "new_revision" => TRUE,
    "preview_mode" => 1,
    "display_submitted" => TRUE,
  ]);
  $articleType->save();
  print "Created content type: article\n";
}
if (!\Drupal::entityTypeManager()->getStorage("node_type")->load("page")) {
  $pageType = NodeType::create([
    "type" => "page",
    "name" => "Basic page",
    "description" => "Generated for visual regression seeding",
    "new_revision" => TRUE,
    "preview_mode" => 1,
    "display_submitted" => FALSE,
  ]);
  $pageType->save();
  print "Created content type: page\n";
}

if (!FieldStorageConfig::loadByName("node", "body")) {
  FieldStorageConfig::create([
    "field_name" => "body",
    "entity_type" => "node",
    "type" => "text_with_summary",
    "cardinality" => 1,
    "translatable" => TRUE,
  ])->save();
}

foreach (["article", "page"] as $bundle) {
  if (!FieldConfig::loadByName("node", $bundle, "body")) {
    FieldConfig::create([
      "field_name" => "body",
      "entity_type" => "node",
      "bundle" => $bundle,
      "label" => "Body",
      "required" => FALSE,
      "translatable" => TRUE,
      "settings" => ["display_summary" => TRUE],
    ])->save();
    print "Attached body field to content type: $bundle\n";
  }

  $formDisplay = EntityFormDisplay::load("node.$bundle.default") ?: EntityFormDisplay::create([
    "targetEntityType" => "node",
    "bundle" => $bundle,
    "mode" => "default",
    "status" => TRUE,
  ]);
  $formDisplay->setComponent("body", [
    "type" => "text_textarea_with_summary",
    "weight" => 5,
    "settings" => ["rows" => 9],
  ]);
  $formDisplay->save();

  $viewDisplay = EntityViewDisplay::load("node.$bundle.default") ?: EntityViewDisplay::create([
    "targetEntityType" => "node",
    "bundle" => $bundle,
    "mode" => "default",
    "status" => TRUE,
  ]);
  $viewDisplay->setComponent("body", [
    "type" => "text_default",
    "label" => "hidden",
    "weight" => 5,
  ]);
  $viewDisplay->save();
}

$editor = user_load_by_name("editor1");
if (!$editor) {
  $editor = User::create([
    "name" => "editor1",
    "mail" => "editor1@example.com",
    "status" => 1,
  ]);
  $editor->setPassword("editor1pass");
  $editor->save();
  print "Created user editor1\n";
}

if (!Vocabulary::load("tags")) {
  $vocab = Vocabulary::create([
    "vid" => "tags",
    "name" => "Tags",
  ]);
  $vocab->save();
  print "Created taxonomy vocabulary: tags\n";
}

if (!\Drupal::moduleHandler()->moduleExists("comment")) {
  \Drupal::service("module_installer")->install(["comment"]);
  print "Enabled comment module\n";
}

if (!FieldStorageConfig::loadByName("node", "field_image")) {
  FieldStorageConfig::create([
    "field_name" => "field_image",
    "entity_type" => "node",
    "type" => "image",
    "cardinality" => 1,
    "translatable" => TRUE,
    "settings" => [
      "target_type" => "file",
      "display_field" => FALSE,
      "display_default" => FALSE,
      "uri_scheme" => "public",
      "default_image" => [
        "uuid" => NULL,
        "alt" => "",
        "title" => "",
        "width" => NULL,
        "height" => NULL,
      ],
    ],
  ])->save();
}

if (!FieldStorageConfig::loadByName("node", "field_tags")) {
  FieldStorageConfig::create([
    "field_name" => "field_tags",
    "entity_type" => "node",
    "type" => "entity_reference",
    "cardinality" => -1,
    "translatable" => TRUE,
    "settings" => ["target_type" => "taxonomy_term"],
  ])->save();
}

if (!FieldConfig::loadByName("node", "article", "field_image")) {
  FieldConfig::create([
    "field_name" => "field_image",
    "entity_type" => "node",
    "bundle" => "article",
    "label" => "Image",
    "required" => FALSE,
    "translatable" => TRUE,
    "settings" => [
      "handler" => "default:file",
      "handler_settings" => [],
      "file_directory" => "[date:custom:Y]-[date:custom:m]",
      "file_extensions" => "png gif jpg jpeg webp",
      "max_filesize" => "",
      "max_resolution" => "",
      "min_resolution" => "",
      "alt_field" => TRUE,
      "alt_field_required" => TRUE,
      "title_field" => FALSE,
      "title_field_required" => FALSE,
      "default_image" => [
        "uuid" => NULL,
        "alt" => "",
        "title" => "",
        "width" => NULL,
        "height" => NULL,
      ],
    ],
  ])->save();
}

if (!FieldConfig::loadByName("node", "article", "field_tags")) {
  FieldConfig::create([
    "field_name" => "field_tags",
    "entity_type" => "node",
    "bundle" => "article",
    "label" => "Tags",
    "description" => "Enter a comma-separated list. For example: Amsterdam, Mexico City, \"Cleveland, Ohio\"",
    "required" => FALSE,
    "translatable" => TRUE,
    "settings" => [
      "handler" => "default:taxonomy_term",
      "handler_settings" => [
        "target_bundles" => ["tags" => "tags"],
        "sort" => ["field" => "_none"],
        "auto_create" => TRUE,
      ],
    ],
  ])->save();
}

$existingTerms = \Drupal::entityQuery("taxonomy_term")
  ->accessCheck(FALSE)
  ->condition("vid", "tags")
  ->count()
  ->execute();

if ((int) $existingTerms < 15) {
  for ($i = (int) $existingTerms + 1; $i <= 15; $i++) {
    $term = Term::create([
      "vid" => "tags",
      "name" => "Tag $i",
    ]);
    $term->save();
  }
  print "Ensured 15 tags exist\n";
}

$seedImageFiles = [];
foreach (["public://vrt-seed-files/seed-image-1.png", "public://vrt-seed-files/seed-image-2.jpg"] as $seedUri) {
  $loadedFiles = \Drupal::entityTypeManager()->getStorage("file")
    ->loadByProperties(["uri" => $seedUri]);
  if ($loadedFiles) {
    $seedImageFiles[] = reset($loadedFiles);
  }
}

$tagTermIds = array_values(\Drupal::entityQuery("taxonomy_term")
  ->accessCheck(FALSE)
  ->condition("vid", "tags")
  ->sort("tid")
  ->execute());

$articleCount = (int) \Drupal::entityQuery("node")
  ->accessCheck(FALSE)
  ->condition("type", "article")
  ->count()
  ->execute();

if ($articleCount < 30) {
  for ($i = $articleCount + 1; $i <= 30; $i++) {
    $node = Node::create([
      "type" => "article",
      "title" => "Dummy Article $i",
      "uid" => 1,
      "status" => 1,
      "created" => $timestamp - ($i * 3600),
    ]);
    if ($node->hasField("body")) {
      $node->set("body", [
        "value" => "$lorem\n\nDummy article body block $i.",
        "format" => "basic_html",
      ]);
    }
    if ($node->hasField("field_image") && $seedImageFiles) {
      $seedFile = $seedImageFiles[($i - 1) % count($seedImageFiles)];
      $node->set("field_image", [
        "target_id" => $seedFile->id(),
        "alt" => "Dummy Article $i image",
        "title" => "",
      ]);
    }
    if ($node->hasField("field_tags") && $tagTermIds) {
      $tagSlice = array_slice($tagTermIds, (($i - 1) * 3) % max(1, count($tagTermIds)), 3);
      if (count($tagSlice) < 3) {
        $tagSlice = array_slice(array_merge($tagTermIds, $tagTermIds), 0, 3);
      }
      $node->set("field_tags", array_map(fn($tid) => ["target_id" => $tid], $tagSlice));
    }
    $node->save();
  }
  print "Ensured 30 articles exist\n";
}

$articleStorage = \Drupal::entityTypeManager()->getStorage("node");
$articleIds = array_values(\Drupal::entityQuery("node")
  ->accessCheck(FALSE)
  ->condition("type", "article")
  ->sort("nid")
  ->execute());

foreach ($articleIds as $index => $nid) {
  $node = $articleStorage->load($nid);
  if (!$node) {
    continue;
  }

  $updated = FALSE;
  if ($node->hasField("field_image") && $node->get("field_image")->isEmpty() && $seedImageFiles) {
    $seedFile = $seedImageFiles[$index % count($seedImageFiles)];
    $node->set("field_image", [
      "target_id" => $seedFile->id(),
      "alt" => $node->label() . " image",
      "title" => "",
    ]);
    $updated = TRUE;
  }
  if ($node->hasField("field_tags") && $node->get("field_tags")->isEmpty() && $tagTermIds) {
    $tagSlice = array_slice($tagTermIds, ($index * 3) % max(1, count($tagTermIds)), 3);
    if (count($tagSlice) < 3) {
      $tagSlice = array_slice(array_merge($tagTermIds, $tagTermIds), 0, 3);
    }
    $node->set("field_tags", array_map(fn($tid) => ["target_id" => $tid], $tagSlice));
    $updated = TRUE;
  }
  if ($updated) {
    $node->save();
  }
}

$articleFormDisplay = EntityFormDisplay::load("node.article.default") ?: EntityFormDisplay::create([
  "targetEntityType" => "node",
  "bundle" => "article",
  "mode" => "default",
  "status" => TRUE,
]);
$articleFormDisplay->setComponent("body", [
  "type" => "text_textarea_with_summary",
  "weight" => 5,
  "settings" => ["rows" => 9],
]);
$articleFormDisplay->setComponent("field_image", [
  "type" => "image_image",
  "weight" => 1,
  "region" => "content",
  "settings" => [
    "progress_indicator" => "throbber",
    "preview_image_style" => "thumbnail",
  ],
]);
$articleFormDisplay->setComponent("field_tags", [
  "type" => "entity_reference_autocomplete_tags",
  "weight" => 3,
  "region" => "content",
  "settings" => [
    "match_operator" => "CONTAINS",
    "match_limit" => 10,
    "size" => 60,
    "placeholder" => "",
  ],
]);
$articleFormDisplay->setComponent("comment", [
  "type" => "comment_default",
  "weight" => 20,
  "region" => "content",
  "settings" => [],
]);
$articleFormDisplay->setComponent("promote", [
  "type" => "boolean_checkbox",
  "weight" => 15,
  "region" => "content",
  "settings" => ["display_label" => TRUE],
]);
$articleFormDisplay->setComponent("sticky", [
  "type" => "boolean_checkbox",
  "weight" => 16,
  "region" => "content",
  "settings" => ["display_label" => TRUE],
]);
$articleFormDisplay->save();

$articleViewDisplay = EntityViewDisplay::load("node.article.default") ?: EntityViewDisplay::create([
  "targetEntityType" => "node",
  "bundle" => "article",
  "mode" => "default",
  "status" => TRUE,
]);
$articleViewDisplay->setComponent("body", [
  "type" => "text_default",
  "label" => "hidden",
  "weight" => 5,
]);
$articleViewDisplay->setComponent("field_image", [
  "type" => "image",
  "label" => "hidden",
  "settings" => [
    "image_link" => "",
    "image_style" => "wide",
    "image_loading" => ["attribute" => "eager"],
  ],
  "weight" => -1,
]);
$articleViewDisplay->setComponent("field_tags", [
  "type" => "entity_reference_label",
  "label" => "above",
  "settings" => ["link" => TRUE],
  "weight" => 10,
]);
$articleViewDisplay->setComponent("comment", [
  "type" => "comment_default",
  "label" => "above",
  "settings" => [
    "view_mode" => "default",
    "pager_id" => 0,
  ],
  "weight" => 110,
]);
$articleViewDisplay->setComponent("uid", [
  "label" => "hidden",
  "type" => "author",
  "weight" => 0,
  "settings" => [],
]);
$articleViewDisplay->setComponent("title", [
  "label" => "hidden",
  "type" => "string",
  "weight" => -5,
  "settings" => ["link_to_entity" => FALSE],
]);
$articleViewDisplay->setComponent("created", [
  "label" => "hidden",
  "type" => "timestamp",
  "weight" => 0,
  "settings" => [
    "date_format" => "medium",
    "custom_date_format" => "",
    "timezone" => "",
    "tooltip" => [
      "date_format" => "long",
      "custom_date_format" => "",
    ],
    "time_diff" => [
      "enabled" => FALSE,
      "future_format" => "@interval hence",
      "past_format" => "@interval ago",
      "granularity" => 2,
      "refresh" => 60,
    ],
  ],
]);
$articleViewDisplay->setComponent("links", [
  "weight" => 100,
  "settings" => [],
]);
$articleViewDisplay->save();

$articleRssDisplay = EntityViewDisplay::load("node.article.rss") ?: EntityViewDisplay::create([
  "targetEntityType" => "node",
  "bundle" => "article",
  "mode" => "rss",
  "status" => TRUE,
]);
$articleRssDisplay->setComponent("links", [
  "weight" => 100,
  "region" => "content",
]);
$articleRssDisplay->save();

$articleTeaserDisplay = EntityViewDisplay::load("node.article.teaser") ?: EntityViewDisplay::create([
  "targetEntityType" => "node",
  "bundle" => "article",
  "mode" => "teaser",
  "status" => TRUE,
]);
$articleTeaserDisplay->setComponent("body", [
  "type" => "text_summary_or_trimmed",
  "label" => "hidden",
  "settings" => ["trim_length" => 600],
  "third_party_settings" => [],
  "weight" => 0,
  "region" => "content",
]);
$articleTeaserDisplay->setComponent("field_image", [
  "type" => "image",
  "label" => "hidden",
  "settings" => [
    "image_link" => "content",
    "image_style" => "medium",
    "image_loading" => ["attribute" => "lazy"],
  ],
  "third_party_settings" => [],
  "weight" => -1,
  "region" => "content",
]);
$articleTeaserDisplay->setComponent("field_tags", [
  "type" => "entity_reference_label",
  "label" => "above",
  "settings" => ["link" => TRUE],
  "third_party_settings" => [],
  "weight" => 10,
  "region" => "content",
]);
$articleTeaserDisplay->setComponent("links", [
  "weight" => 100,
  "region" => "content",
]);
$articleTeaserDisplay->save();

$pageCount = (int) \Drupal::entityQuery("node")
  ->accessCheck(FALSE)
  ->condition("type", "page")
  ->count()
  ->execute();

if ($pageCount < 20) {
  for ($i = $pageCount + 1; $i <= 20; $i++) {
    $node = Node::create([
      "type" => "page",
      "title" => "Dummy Page $i",
      "uid" => 1,
      "status" => 1,
      "created" => $timestamp - ($i * 5400),
    ]);
    if ($node->hasField("body")) {
      $node->set("body", [
        "value" => "$lorem\n\nDummy page body block $i.",
        "format" => "basic_html",
      ]);
    }
    $node->save();
  }
  print "Ensured 20 pages exist\n";
}

$blockCount = (int) \Drupal::entityQuery("block_content")
  ->accessCheck(FALSE)
  ->condition("type", "basic")
  ->count()
  ->execute();

if ($blockCount < 15) {
  for ($i = $blockCount + 1; $i <= 15; $i++) {
    $block = BlockContent::create([
      "type" => "basic",
      "info" => "Seeded block $i",
    ]);
    if ($block->hasField("body")) {
      $block->set("body", [
        "value" => "$lorem\n\nSeeded reusable block body $i.",
        "format" => "basic_html",
      ]);
    }
    $block->save();
  }
  print "Ensured 15 reusable blocks exist\n";
}

$seedDirectory = "public://vrt-seed-files";
\Drupal::service("file_system")->prepareDirectory(
  $seedDirectory,
  FileSystemInterface::CREATE_DIRECTORY | FileSystemInterface::MODIFY_PERMISSIONS
);

$fileRepository = \Drupal::service("file.repository");
$replaceMode = class_exists("\\Drupal\\Core\\File\\FileExists")
  ? \Drupal\Core\File\FileExists::Replace
  : FileSystemInterface::EXISTS_REPLACE;
$seedFiles = [
  [
    "name" => "seed-image-1.png",
    "data" => base64_decode("iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8/x8AAwMCAO7+K6sAAAAASUVORK5CYII="),
    "label" => "valid png",
  ],
  [
    "name" => "seed-image-2.jpg",
    "data" => base64_decode("/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDABALDwwMDQ4PEA8QEBITFBEVFx8YGBcYHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fH//2wBDARESEhgVGBgaGBoaHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fH//wAARCAAQABADASIAAhEBAxEB/8QAFQABAQAAAAAAAAAAAAAAAAAAAAb/xAAdEAABBAMBAQAAAAAAAAAAAAABAAIDBAUREiEx/8QAFQEBAQAAAAAAAAAAAAAAAAAAAAX/xAAZEQADAQEBAAAAAAAAAAAAAAABAgMABDH/2gAMAwEAAhEDEQA/AK1wY3VC0jhn9Q8QfTt4xV6u2uk2x4ZpP/9k="),
    "label" => "valid jpg",
  ],
  [
    "name" => "seed-document.txt",
    "data" => "Seeded text file for admin content/files coverage.\n",
    "label" => "valid text",
  ],
  [
    "name" => "seed-image-corrupt.jpg",
    "data" => "not-a-real-jpeg",
    "label" => "intentional malformed image payload",
  ],
  [
    "name" => "seed-empty-image.png",
    "data" => "",
    "label" => "intentional zero-byte image payload",
  ],
];

foreach ($seedFiles as $seedFile) {
  $uri = $seedDirectory . "/" . $seedFile["name"];
  $existing = \Drupal::entityTypeManager()->getStorage("file")
    ->loadByProperties(["uri" => $uri]);

  if ($existing) {
    continue;
  }

  $data = $seedFile["data"];
  if (is_string($data)) {
    $raw = $data;
  }
  else {
    $raw = "";
  }

  $file = $fileRepository->writeData($raw, $uri, $replaceMode);
  if ($file) {
    $file->setOwnerId(1);
    $file->setPermanent();
    $file->save();
    print "Created managed file: {$seedFile["name"]} ({$seedFile["label"]})\n";
  }
}

$managedSeedFileCount = (int) \Drupal::entityQuery("file")
  ->accessCheck(FALSE)
  ->condition("uri", "public://vrt-seed-files/%", "LIKE")
  ->count()
  ->execute();
print "Seeded managed files under public://vrt-seed-files: $managedSeedFileCount\n";

$adminUser = User::load(1);
if ($adminUser) {
  $adminUser->setPassword("admin");
  $adminUser->save();
  print "Reset admin user password to admin\n";
}

print "Done.\n";
')

  (cd "$project_dir" && ddev drush cr >/dev/null)
}

for project in "${PROJECTS[@]}"; do
  if [[ ! -d "$project" ]]; then
    echo "Skipping missing project directory: $project"
    continue
  fi
  create_content_for_project "$project"
done

echo "Dummy content seeding complete for available projects."
