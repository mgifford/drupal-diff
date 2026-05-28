#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PROJECTS=("$ROOT_DIR/drupal-11.3.10" "$ROOT_DIR/drupal-git")

for project_dir in "${PROJECTS[@]}"; do
  if [[ ! -d "$project_dir" ]]; then
    echo "Skipping missing project: $project_dir"
    continue
  fi

  echo "Enabling Twig debug in $(basename "$project_dir")"

  services_file="$project_dir/sites/development.services.yml"
  settings_file="$project_dir/sites/default/settings.ddev.php"

  if [[ ! -f "$services_file" ]]; then
    cat > "$services_file" <<'YAML'
parameters:
  http.response.debug_cacheability_headers: true
  twig.config:
    debug: true
    auto_reload: true
    cache: false
YAML
  else
    if ! grep -q "twig.config" "$services_file"; then
      cat >> "$services_file" <<'YAML'

parameters:
  twig.config:
    debug: true
    auto_reload: true
    cache: false
YAML
    fi
  fi

  if [[ -f "$settings_file" ]] && ! grep -q "drupal-diff twig debug" "$settings_file"; then
    cat >> "$settings_file" <<'PHP'

/**
 * drupal-diff twig debug.
 */
$settings['container_yamls'][] = DRUPAL_ROOT . '/sites/development.services.yml';
$settings['cache']['bins']['render'] = 'cache.backend.null';
$settings['cache']['bins']['dynamic_page_cache'] = 'cache.backend.null';
$settings['cache']['bins']['page'] = 'cache.backend.null';
$config['system.logging']['error_level'] = 'verbose';
PHP
  fi

  (cd "$project_dir" && ddev drush cr >/dev/null 2>&1 || true)
done

echo "Twig debug enablement complete."
