<?php  // Moodle configuration file

// Set required PHP settings for Moodle
ini_set('max_input_vars', '5000');

unset($CFG);
global $CFG;
$CFG = new stdClass();

//=========================================================================
// 1. DATABASE SETUP
//=========================================================================
$CFG->dbtype    = 'pgsql';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'postgres';
$CFG->dbname    = 'moodle';
$CFG->dbuser    = 'moodle';
$CFG->dbpass    = 'moodle_password_123';
$CFG->prefix    = 'mdl_';
$CFG->dboptions = array(
    'dbpersist' => false,
    'dbsocket'  => false,
    'dbport'    => '',
);

//=========================================================================
// 2. WEB SITE LOCATION
//=========================================================================
$CFG->wwwroot   = 'http://localhost:8080';

//=========================================================================
// 3. DATA FILES LOCATION
//=========================================================================
$CFG->dataroot  = '/var/www/moodledata';

//=========================================================================
// 4. PERFORMANCE OPTIMIZATION
//=========================================================================
// Caching settings
$CFG->cachejs = true;                 // Enable JavaScript caching
$CFG->enablecourseajax = true;        // Enable AJAX for courses
$CFG->cachetemplates = true;          // Enable template caching
$CFG->langstringcache = true;         // Enable language string cache
$CFG->themedesignermode = false;      // Disable theme designer mode
$CFG->perfdebug = 0;                  // Disable performance debugging
$CFG->debugstringids = 1;             // Enable string debugging
$CFG->debugvalidators = 0;            // Disable validation debugging
$CFG->debugpageinfo = 0;              // Disable page information debugging
$CFG->slasharguments = 1;             // Enable slash arguments (better file serving)
$CFG->enableasyncbackup = true;       // Enable async backup/restore operations

// Session handling
$CFG->session_handler_class = 'core\session\database';
$CFG->session_database_acquire_lock_timeout = 120;

// Development settings (minimal required for debugging)
$CFG->debug = (E_ALL | E_STRICT);
$CFG->debugdisplay = 1;
$CFG->debugsmtp = 0;                 // Disable SMTP debugging
$CFG->passwordpolicy = 0;            // Disable password policy for development

// Admin settings
$CFG->admin = 'admin';
$CFG->directorypermissions = 02777;

require_once(__DIR__ . '/lib/setup.php');

// There is no php closing tag in this file,
// it is intentional because it prevents trailing whitespace problems! 