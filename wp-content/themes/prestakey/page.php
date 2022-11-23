<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package prestakey
 */

get_header();
?>


<?php 

    /** content home */
    if ( is_front_page() ) {
        get_template_part( '/template-parts/home/content-row-two' );
        get_template_part( '/template-parts/home/content-row-three' );
        get_template_part( '/template-parts/home/content-row-four' );
        get_template_part( '/template-parts/home/content-row-five' );
        get_template_part( '/template-parts/home/content-row-six' );
        /**get_template_part( '/template-parts/home/content-row-seven' );
        get_template_part( '/template-parts/home/content-row-eight' );*/
    } /** content home */

    /** content azienda */
    if ( is_page(30) ) {
        get_template_part( '/template-parts/azienda/content-row-two' );
        get_template_part( '/template-parts/azienda/content-row-three' );
        get_template_part( '/template-parts/azienda/content-row-four' );
        get_template_part( '/template-parts/azienda/content-row-five' );
        get_template_part( '/template-parts/azienda/content-row-six' );
    } /** content azienda */

    /** content privato */
    if ( is_page(28) ) {
        get_template_part( '/template-parts/privato/content-row-two' );
        get_template_part( '/template-parts/privato/content-row-three' );
        get_template_part( '/template-parts/privato/content-row-four' );
        get_template_part( '/template-parts/privato/content-row-five' );
        get_template_part( '/template-parts/privato/content-row-six' );
    } /** content privato */

    /** content contatti */
    if ( is_page(40) ) {
        get_template_part( '/template-parts/contatti/content-row-two' );
        get_template_part( '/template-parts/contatti/content-row-three' );
        get_template_part( '/template-parts/contatti/content-row-four' );
    } /** content contatti */

    /** content chi-siamo */
    if ( is_page(46) ) {
        get_template_part( '/template-parts/chi-siamo/content-row-two' );
        get_template_part( '/template-parts/chi-siamo/content-row-three' );
        get_template_part( '/template-parts/chi-siamo/content-row-four' );
        /* get_template_part( '/template-parts/chi-siamo/content-row-five' ); */
        get_template_part( '/template-parts/chi-siamo/content-row-six' );
        get_template_part( '/template-parts/chi-siamo/content-row-seven' );
    } /** content chi-siamo */

    /** content come-funziona */
    if ( is_page(49) ) {
        get_template_part( '/template-parts/come-funziona/content-row-two' );
        get_template_part( '/template-parts/come-funziona/content-row-three' );
        get_template_part( '/template-parts/come-funziona/content-row-four' );
        get_template_part( '/template-parts/come-funziona/content-row-five' );
    } /** content come-funziona */

    /** content sei una banca */
    if ( is_page(43) ) {
        get_template_part( '/template-parts/sei-una-banca/content-row-two' );
        get_template_part( '/template-parts/sei-una-banca/content-row-three' );
        get_template_part( '/template-parts/sei-una-banca/content-row-four' );
    } /** content sei una banca */

    /** content faq */
    if ( is_page(300) ) {
        get_template_part( '/template-parts/faq/content-row-two' );
        get_template_part( '/template-parts/faq/content-row-three' );
    } /** content faq */

    /** content lavora con noi */
    if ( is_page(372) ) {
        get_template_part( '/template-parts/lavora-con-noi/content-row-two' );
    } /** content lavora con noi */

?>
  

<?php
get_footer();
