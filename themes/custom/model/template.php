<?php

/**
 * Implements hook_preprocess_page().
 */
function model_preprocess_page(&$vars) {
  $vars['html_attributes_array'] = array(
    'xmlns' => 'http://www.w3.org/1999/xhtml',
    'xml:lang' => $vars['language']->language,
    'lang' => $vars['language']->language,
    'dir' => $vars['language']->dir,
    'class' => 'children',
  );
  
  // We manually set <html> classes, we remove classes from attributes array to
  // prevent validation errors.
  unset($vars['html_attributes_array']['class']);
  $vars['html_attributes'] = drupal_attributes($vars['html_attributes_array']);
}