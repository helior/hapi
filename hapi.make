core = 6.x
api = 2

; Contrib modules
projects[api][subdir] = contrib
projects[api][version] = 1.5

projects[autoload][subdir] = contrib
projects[autoload][version] = 2.1

projects[ctools][subdir] = contrib
projects[ctools][download][type] = git
projects[ctools][download][branch] = 6.x-1.x
projects[ctools][download][url] = http://git.drupal.org/project/ctools.git

projects[grammar_parser][subdir] = contrib
projects[grammar_parser][type] = module
projects[grammar_parser][download][type] = git
projects[grammar_parser][download][url] = http://git.drupal.org/project/grammar_parser.git
projects[grammar_parser][download][tag] = 7.x-1.1
projects[grammar_parser][patch][994518][url] = "http://drupal.org/files/issues/994518.patch"
projects[grammar_parser][patch][994518][md5] = "eecc6f6aa76d0cc399fb4bf8300edcec"

projects[job_queue][subdir] = contrib
projects[job_queue][version] = 3.1


; Contrib themes

; Libraries