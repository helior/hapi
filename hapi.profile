<?php

/**
 * Implementation of hook_profile_details().
 */
function hapi_profile_details() {
  return array(
    'name' => '(Highly Attractive) API Site',
    'description' => 'API site for share-worthy code.',
  );
}


/**
 * Implementation of hook_profile_modules().
 */
function hapi_profile_modules() {
  return array();
}

/**
 * Implementation of hook_profile_task_list().
 */
function hapi_profile_task_list() {
  return array(
    'hapi-modules' => st('Install more modules'),
    'hapi-setup' => st('Setup API site'),
  );
}

/**
 * Implementation of hook_profile_tasks().
 */
function hapi_profile_tasks(&$task, $url) {
  // Kick-off the chain of tasks this profile will run.
  if ($task == 'profile') {
    $task = 'hapi-modules';
  }
  
  switch ($task) {
    // Display batch page for our batch install tasks.
    case 'hapi-modules-batch':
    case 'hapi-setup-batch':
      include_once 'includes/batch.inc';
      $output = _batch_page();
      break;

    // Enable additional modules in a batch process. This MUST execute after
    // the database has been established since some contrib modules' install
    // routines depend on it.
    case 'hapi-modules':
      $files = module_rebuild_cache();
      foreach (_hapi_modules() as $module) {
        $batch['operations'][] = array('_install_module_batch', array($module, $files[$module]->info['name']));
      }
      $batch['finished'] = '_hapi_modules_batch_finished';
      $batch['title'] = st('Installing @drupal', array('@drupal' => drupal_install_profile_name()));
      $batch['error_message'] = st('The installation has encountered an error.');
      variable_set('install_task', 'hapi-modules-batch');
      batch_set($batch);
      batch_process($url, $url);
      
      // Return for command-line installs.
      return;
    
    // Now that all modules have been installed, we do additional setup, such
    // as enable the default theme.
    case 'hapi-setup':
      $batch['operations'][] = array('_hapi_setup_batch', array());
      $batch['title'] = st('Configuring @drupal', array('@drupal' => drupal_install_profile_name()));
      $batch['finished'] = '_hap_setup_batch_finished';
      $batch['error_message'] = st('WTF?');
      variable_set('install_task', 'hapi-setup-batch');
      batch_set($batch);
      batch_process($url, $url);
      
      // Return for command-line installs.
      return;
  }
  
  return $output;
}

/**
 * List of additional modules to install once the database has been established.
 */
function _hapi_modules() {
  return array(
    // Contrib
    'admin_menu',
    'api',
    'autoload',
    'ctools',
    'features',
    'grammar_parser',
    'job_queue',
    
    // Pizass
    'hapi',
  );
}

function _hapi_setup_batch() {
  variable_set('theme_default', 'model');
  db_query("DELETE FROM {blocks} WHERE theme != '%s'", 'model');
  db_query("UPDATE {system} SET status = 0 WHERE type = 'theme' AND name = '%s'", 'garland');
  db_query("UPDATE {system} SET status = 1 WHERE type = 'theme' AND name = '%s'", 'model');
  
  $revert = array(
    'hapi' => array('variables'),
  );
  features_revert($revert);
  
  drupal_flush_all_caches();
}

/**
 * 'Finished' batch callback for 'hap-modules'.
 */
function _hapi_modules_batch_finished($success, $results) {
  variable_set('install_task', 'hapi-setup');
}

/**
 * 'Finished' batch callback for 'hap-setup'.
 */
function _hap_setup_batch_finished($success, $results) {
  variable_set('install_task', 'profile-finished');
  // variable_set('install_task', 'finished');
}


/**
 * Implements hook_form_alter().
 */
function hapi_form_alter(&$form, $form_state, $form_id) {
  if ($form_id == 'install_configure') {
    $details = hapi_profile_details();
    $form['site_information']['site_name']['#default_value'] = $details['name'];
  }
}
