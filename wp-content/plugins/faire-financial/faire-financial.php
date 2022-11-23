<?php
/**
 * @package BamadoItalia
 */
/*
Plugin Name: Faire Financial
Description: Plugin to call Faire Web Api, create persons and get KPI informations
Version: 1.0
Requires PHP: 7.4.32
Author: Bamado Italia Srl
License: Bamado Italia Srl
*/

// Make sure we don't expose any info if called directly
if (!function_exists('add_action')) {
	echo 'You can not call plugin directly.';
	exit;
}

define('FAIRE__PLUGIN_DIR', plugin_dir_path( __FILE__ ));
require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

register_activation_hook(__FILE__, array('Faire_Commons', 'plugin_activation'));
register_deactivation_hook(__FILE__, array('Faire_Commons', 'plugin_deactivation'));
register_uninstall_hook(__FILE__, array('Faire_Commons', 'plugin_uninstall'));

require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
require_once(FAIRE__PLUGIN_DIR . 'class.faire-ajax.php');
require_once(FAIRE__PLUGIN_DIR . 'class.faire-shortcodes.php');
require_once(FAIRE__PLUGIN_DIR . 'class.faire-restapi-exporter.php');

add_action('init', array('Faire_ShortCodes', 'init'));
add_action('init', array('Faire_Ajax', 'init'));
add_action('init', array('Faire_Database', 'init'));
add_action('init', array('Faire_Rest_Exporter_Controller', 'init'));

?>