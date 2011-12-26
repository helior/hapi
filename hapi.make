core = 6.x
api = 2

; Contrib modules
projects[admin_menu][subdir] = contrib
projects[admin_menu][version] = 1.8

projects[api][subdir] = contrib
projects[api][version] = 1.5

projects[autoload][subdir] = contrib
projects[autoload][version] = 2.1

projects[ctools][subdir] = contrib
projects[ctools][download][type] = git
projects[ctools][download][branch] = 6.x-1.x
projects[ctools][download][url] = http://git.drupal.org/project/ctools.git

projects[devel][subdir] = contrib
projects[devel][version] = 1.26

projects[features][subdir] = contrib
projects[features][version] = 1.2

projects[grammar_parser][subdir] = contrib
projects[grammar_parser][type] = module
projects[grammar_parser][download][type] = git
projects[grammar_parser][download][url] = http://git.drupal.org/project/grammar_parser.git
projects[grammar_parser][download][tag] = 7.x-1.1
projects[grammar_parser][patch][994518][url] = "http://drupal.org/files/issues/994518.patch"
projects[grammar_parser][patch][994518][md5] = "eecc6f6aa76d0cc399fb4bf8300edcec"

projects[job_queue][subdir] = contrib
projects[job_queue][version] = 3.1

projects[jquery_ui][subdir] = contrib
projects[jquery_ui][version] = 1.5

projects[jquery_update][subdir] = contrib
projects[jquery_update][version] = 2.0-alpha1

projects[libraries][subdir] = contrib
projects[libraries][version] = 1.0

projects[panels][subdir] = contrib
projects[panels][version] = 3.9

projects[panels_everywhere][subdir] = contrib
projects[panels_everywhere][version] = 1.1

projects[strongarm][subdir] = contrib
projects[strongarm][version] = 2.1

projects[views][subdir] = contrib
projects[views][version] = 3.0-rc3

; Contrib themes
projects[tao][version] = 3.2
projects[tao][subdir] = contrib

projects[rubik][version] = 3.0-beta2
projects[rubik][subdir] = contrib


; Libraries
libraries[jquery_ui][download][type] = get
libraries[jquery_ui][download][url] = http://jquery-ui.googlecode.com/files/jquery-ui-1.7.3.zip
libraries[jquery_ui][directory_name] = jquery.ui
libraries[jquery_ui][destination] = modules/contrib/jquery_ui
