<?php

declare(strict_types=1);

namespace Drupal\realistic_dummy_content\Commands;

use Drupal\Component\Datetime\TimeInterface;
use Drupal\Core\Entity\EntityTypeManagerInterface;
use Drupal\Core\Entity\Entity\EntityFormDisplay;
use Drupal\Core\Entity\Entity\EntityViewDisplay;
use Drupal\field\Entity\FieldConfig;
use Drupal\field\Entity\FieldStorageConfig;
use Drupal\node\Entity\Node;
use Drupal\node\Entity\NodeType;
use Drupal\taxonomy\Entity\Term;
use Drupal\taxonomy\Entity\Vocabulary;
use Drupal\user\Entity\User;
use Drush\Commands\DrushCommands;

/**
 * Seeds deterministic content for visual regression workflows.
 */
final class RealisticDummyContentCommands extends DrushCommands {

  public function __construct(
    private readonly EntityTypeManagerInterface $entityTypeManager,
    private readonly TimeInterface $time,
  ) {
    parent::__construct();
  }

  /**
   * Seed consistent dummy content.
   *
   * @command realistic-dummy-content:seed
   * @aliases rdcs
   */
  public function seed(): void {
    $this->ensureContentTypes();
    $this->ensureEditorUser();
    $this->ensureTagsVocabulary();
    $this->ensureTags(15);
    $this->ensureNodes('article', 'Dummy Article', 30, 3600);
    $this->ensureNodes('page', 'Dummy Page', 20, 5400);
    $this->logger()->notice('Realistic dummy content is ready.');
  }

  private function ensureContentTypes(): void {
    if (!$this->entityTypeManager->getStorage('node_type')->load('article')) {
      NodeType::create([
        'type' => 'article',
        'name' => 'Article',
        'description' => 'Generated for visual regression seeding',
        'new_revision' => TRUE,
        'preview_mode' => 1,
        'display_submitted' => TRUE,
      ])->save();
      $this->logger()->notice('Created content type: article');
    }

    if (!$this->entityTypeManager->getStorage('node_type')->load('page')) {
      NodeType::create([
        'type' => 'page',
        'name' => 'Basic page',
        'description' => 'Generated for visual regression seeding',
        'new_revision' => TRUE,
        'preview_mode' => 1,
        'display_submitted' => FALSE,
      ])->save();
      $this->logger()->notice('Created content type: page');
    }

    $this->ensureBodyField('article');
    $this->ensureBodyField('page');
  }

  private function ensureBodyField(string $bundle): void {
    if (!FieldStorageConfig::loadByName('node', 'body')) {
      FieldStorageConfig::create([
        'field_name' => 'body',
        'entity_type' => 'node',
        'type' => 'text_with_summary',
        'cardinality' => 1,
        'translatable' => TRUE,
      ])->save();
    }

    if (!FieldConfig::loadByName('node', $bundle, 'body')) {
      FieldConfig::create([
        'field_name' => 'body',
        'entity_type' => 'node',
        'bundle' => $bundle,
        'label' => 'Body',
        'required' => FALSE,
        'translatable' => TRUE,
        'settings' => ['display_summary' => TRUE],
      ])->save();
      $this->logger()->notice("Attached body field to content type: $bundle");
    }

    $formDisplay = EntityFormDisplay::load("node.$bundle.default") ?: EntityFormDisplay::create([
      'targetEntityType' => 'node',
      'bundle' => $bundle,
      'mode' => 'default',
      'status' => TRUE,
    ]);
    $formDisplay->setComponent('body', [
      'type' => 'text_textarea_with_summary',
      'weight' => 5,
      'settings' => ['rows' => 9],
    ]);
    $formDisplay->save();

    $viewDisplay = EntityViewDisplay::load("node.$bundle.default") ?: EntityViewDisplay::create([
      'targetEntityType' => 'node',
      'bundle' => $bundle,
      'mode' => 'default',
      'status' => TRUE,
    ]);
    $viewDisplay->setComponent('body', [
      'type' => 'text_default',
      'label' => 'hidden',
      'weight' => 5,
    ]);
    $viewDisplay->save();
  }

  private function ensureEditorUser(): void {
    $editor = user_load_by_name('editor1');
    if ($editor) {
      return;
    }

    $editor = User::create([
      'name' => 'editor1',
      'mail' => 'editor1@example.com',
      'status' => 1,
    ]);
    $editor->setPassword('editor1pass');
    $editor->save();
    $this->logger()->notice('Created user editor1');
  }

  private function ensureTagsVocabulary(): void {
    if (Vocabulary::load('tags')) {
      return;
    }

    Vocabulary::create([
      'vid' => 'tags',
      'name' => 'Tags',
    ])->save();
    $this->logger()->notice('Created taxonomy vocabulary: tags');
  }

  private function ensureTags(int $targetCount): void {
    $count = (int) $this->entityTypeManager->getStorage('taxonomy_term')
      ->getQuery()
      ->accessCheck(FALSE)
      ->condition('vid', 'tags')
      ->count()
      ->execute();

    for ($i = $count + 1; $i <= $targetCount; $i++) {
      Term::create([
        'vid' => 'tags',
        'name' => "Tag $i",
      ])->save();
    }

    if ($count < $targetCount) {
      $this->logger()->notice("Ensured $targetCount tags exist");
    }
  }

  private function ensureNodes(string $bundle, string $prefix, int $targetCount, int $timeStepSeconds): void {
    $count = (int) $this->entityTypeManager->getStorage('node')
      ->getQuery()
      ->accessCheck(FALSE)
      ->condition('type', $bundle)
      ->count()
      ->execute();

    $now = $this->time->getRequestTime();
    $bodySeed = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tempus, metus non cursus eleifend, lectus augue gravida nibh, ut blandit ipsum arcu in mauris.';

    for ($i = $count + 1; $i <= $targetCount; $i++) {
      $node = Node::create([
        'type' => $bundle,
        'title' => "$prefix $i",
        'uid' => 1,
        'status' => 1,
        'created' => $now - ($i * $timeStepSeconds),
      ]);

      if ($node->hasField('body')) {
        $node->set('body', [
          'value' => $bodySeed . "\n\nGenerated body block $i.",
          'format' => 'basic_html',
        ]);
      }

      $node->save();
    }

    if ($count < $targetCount) {
      $this->logger()->notice("Ensured $targetCount $bundle nodes exist");
    }
  }

}
