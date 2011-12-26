<?php

$plugin = array(
  'title' => t('Handsome'),
  'description' => t('A very handsome page template.'),
  'theme' => 'model_handsome',
  'css' => 'handsome.css',
  'admin css' => 'handsome.admin.css',
  'icon' => 'images/handsome.png',
  'category' => t('Model'),
  'panels' => array(
    'top' => t('Top'),
    'left' => t('Left'),
    'content' => t('Content'),
    'bottom' => t('Bottom'),
  ),
);

/**
 * Implements template_preprocess_HOOK().
 */
function template_preprocess_model_handsome(&$vars) {
  // add alpha/omega class to first/last of left/center/right columns
  // set up classes for each region container.
}