<?php
/*
 Plugin Name: Flexi Related Posts
 Plugin URI: http://www.empexus.com/plugins
 Description: This plugin show related posts in flexible way on single post and(or) on any page
 Author: Pradeep Verma
 Author URI: http://www.useplugin.wordpress.com
 */

define('PLUGIN_DIR', plugin_dir_path(__FILE__));

global $wp_version;
$exit_msg = 'WP Top flexi_related Posts This requires WordPress 2.5 or newer.<a href="http://codex.wordpress.org/Upgrading_WordPress">Please update!</a>';
if (version_compare($wp_version, "2.5", "<")) {
	exit($exit_msg);
}
include "flexi_related_posts_plugin.php";
include "flexi_related_posts_widget.php";
?>
