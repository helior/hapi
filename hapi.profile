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
  return array(
    // Core
    'block',
    'filter',
    'node',
    'system',
    'user',
    
    // Contrib
    'api',
    'autoload',
    'ctools',
    'grammar_parser',
    'job_queue',
  );
}

/**
 * Implementation of hook_profile_task_list().
 */
function hapi_profile_task_list() {
  $tasks = array();
  return $tasks;
}

/**
 * Implementation of hook_profile_tasks().
 */
function hapi_profile_tasks(&$task, $url) {
  
}
