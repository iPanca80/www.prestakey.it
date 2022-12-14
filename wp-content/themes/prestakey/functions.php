<?php
/**
 * prestakey functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package prestakey
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function prestakey_setup() {
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on prestakey, use a find and replace
		* to change 'prestakey' to the name of your theme in all the template files.
		*/
	load_theme_textdomain( 'prestakey', get_template_directory() . '/languages' );

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus(
		array(
			'main-menu' => esc_html__( 'Main menu', 'prestakey' ),
		)
	);
	
}
add_action( 'after_setup_theme', 'prestakey_setup' );

/**
 * Enqueue scripts and styles.
 */
function prestakey_scripts() {

	if( !is_admin() ) {

		wp_deregister_script('jquery');
		wp_register_script('jquery', get_template_directory_uri() . '/js/jquery-3.6.1.min.js', 'jquery', true, false);
		wp_enqueue_script('jquery');
		// styles boostrap
		wp_enqueue_style( 'bootstrap', get_stylesheet_directory_uri() . '/bootstrap/css/bootstrap.min.css', array(), 20141119 );

		// scripts bootstrap
		wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/bootstrap/js/bootstrap.bundle.min.js', array('jquery'), '20120206', true );
		wp_enqueue_script('bootstrap');
		wp_enqueue_script( 'popper-min', get_template_directory_uri() . '/js/popper.min.js','','',true );
		wp_enqueue_script('popper-min');
		wp_enqueue_script( 'bootstrap-min', get_template_directory_uri() . '/bootstrap/js/bootstrap.min.js','','',true );
		wp_enqueue_script('bootstrap-min');

	}

	wp_enqueue_style( 'prestakey-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_style_add_data( 'prestakey-style', 'rtl', 'replace' );

	wp_enqueue_style( 'owl-carousel', get_template_directory_uri() . '/css/owl.carousel.min.css', array(), _S_VERSION  );
	wp_enqueue_style( 'owl-theme-default', get_template_directory_uri() . '/css/owl.theme.default.min.css', array(), _S_VERSION  );

	wp_enqueue_script( 'prestakey-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );
	wp_enqueue_script('prestakey-navigation');

	wp_enqueue_script( 'owl-carousel', get_template_directory_uri() . '/js/owl.carousel.min.js','','',true );
	wp_enqueue_script('owl-carousel');

	wp_enqueue_script( 'prestakey', get_template_directory_uri() . '/js/prestakey.js','','',true );
	wp_enqueue_script('prestakey');

	wp_enqueue_style( 'prestakey-responsive', get_template_directory_uri() . '/css/responsive.css', array(), _S_VERSION  );
}
add_action( 'wp_enqueue_scripts', 'prestakey_scripts' );

/* Disabilita la barra degli strumenti per tutti gli utenti */
add_filter( 'show_admin_bar', '__return_false' );

/**
 * Font Awesome Kit Setup
 * 
 * This will add your Font Awesome Kit to the front-end, the admin back-end,
 * and the login screen area.
 */
if (! function_exists('fa_custom_setup_kit') ) {
	function fa_custom_setup_kit($kit_url = '') {
	  foreach ( [ 'wp_enqueue_scripts', 'admin_enqueue_scripts', 'login_enqueue_scripts' ] as $action ) {
		add_action(
		  $action,
		  function () use ( $kit_url ) {
			wp_enqueue_script( 'font-awesome-kit', $kit_url, [], null );
		  }
		);
	  }
	}
  }

  fa_custom_setup_kit('https://kit.fontawesome.com/879c6c7dc5.js'); 

  /**
   * Add a class in main menu
   */
  function add_additional_class_on_a($classes, $item, $args)
{
    if (isset($args->add_a_class)) {
        $classes['class'] = $args->add_a_class;
    }
    return $classes;
}

add_filter('nav_menu_link_attributes', 'add_additional_class_on_a', 1, 3);

add_action( 'admin_init', 'my_remove_menu_pages' );
function my_remove_menu_pages() {

  global $user_ID;

  if ( $user_ID != 1 && $user_ID != 6 && $user_ID != 4 ) { //your user id
	remove_menu_page('link-manager.php'); // Links
	remove_menu_page('edit-comments.php'); // Comments
	remove_menu_page('plugins.php'); // Plugins
	remove_menu_page('themes.php'); // Appearance
	remove_menu_page('users.php'); // Users
	remove_menu_page('tools.php'); // Tools
	remove_menu_page('options-general.php'); // Settings
	remove_menu_page('wpcf7'); // Contact Form 7 Menu
	remove_menu_page('profile.php');
	remove_menu_page('upload.php');
  }
 
  if ( $user_ID != 2 && $user_ID != 1 && $user_ID != 4 ) {
	  remove_menu_page('edit.php?post_type=page'); // Pages
  }

}

/**
   * Remove tag p in acf field
   */
/**function my_acf_add_local_field_groups() {
    remove_filter('acf_the_content', 'wpautop' );
}
add_action('acf/init', 'my_acf_add_local_field_groups'); */