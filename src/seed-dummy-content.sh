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
    base_url="http://drupal-git.ddev.site:8080"
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
    $node->save();
  }
  print "Ensured 30 articles exist\n";
}

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
