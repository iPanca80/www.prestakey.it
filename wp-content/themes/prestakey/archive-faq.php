<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package prestakey
 */

get_header();
?>

<?php

/** content faq */
if ( is_post_type_archive( 'faq' ) ) {
    get_template_part( '/template-parts/faq/content-row-two' );
} /** content faq */

/** content form */
if ( is_post_type_archive( 'faq' ) ) {
    get_template_part( '/template-parts/faq/content-row-three' );
} /** content form */

?>

<?php
get_sidebar();
get_footer();
