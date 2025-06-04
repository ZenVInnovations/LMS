<?php
unset($CFG);
global $CFG;
$CFG = new stdClass();

$CFG->dbtype    = 'pgsql';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'postgres';
$CFG->dbname    = 'moodle';
$CFG->dbuser    = 'moodle';
$CFG->dbpass    = 'your_strong_password_here';  // Use same password as in docker-compose
$CFG->prefix    = 'mdl_';
$CFG->dboptions = array(
    'dbpersist' => false,
    'dbsocket'  => false,
    'dbport'    => '',
);

$CFG->wwwroot   = 'https://your-domain.com';  // Change this to your domain
$CFG->dataroot  = '/var/www/moodledata';
$CFG->admin     = 'admin';

$CFG->directorypermissions = 02777;

// Production settings
$CFG->debug = 0;
$CFG->debugdisplay = 0;
$CFG->debugstringids = 0;
$CFG->debugdeveloper = 0;
$CFG->cachejs = true;
$CFG->enablecourseajax = true;
$CFG->cachetemplates = true;
$CFG->langstringcache = true;
$CFG->slasharguments = 1;

// Security settings
$CFG->passwordpolicy = 1;
$CFG->passwordpolicychecks = 'length,upper,lower,numbers,special';
$CFG->minpasswordlength = 12;
$CFG->minpassworddigits = 1;
$CFG->minpasswordlower = 1;
$CFG->minpasswordupper = 1;
$CFG->minpasswordspecial = 1;

require_once(__DIR__ . '/lib/setup.php'); 