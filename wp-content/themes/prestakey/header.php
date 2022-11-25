<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package prestakey
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>

	<?php if ( is_front_page() ) { ?>
		<style>
			.home .slider {
				background: url( <?php echo get_template_directory_uri(); ?>/svg/illustrazione-home.svg );
				background-repeat: no-repeat;
				background-position: right 40px;
				background-size: 30%;
			}
		</style>
	<?php } ?>

	<style>
		.page-id-30 .slider {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-azienda.svg);
    background-repeat: no-repeat;
    background-position: right 5px;
    background-size: 26%;
}

.page-id-28 .slider {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-privato.svg);
    background-repeat: no-repeat;
    background-position: right 0px;
    background-size: 16%;
}
.page-id-300 .slider {
    background: url( <?php echo get_template_directory_uri(); ?>/svg/illustrazione-faq.svg );
    background-repeat: no-repeat;
    background-position: right 0px;
    background-size: 23%;
}

.page-id-40 section.row-three .container {
    background: url(<?php echo get_template_directory_uri(); ?>/illustrazione-home-row-five.svg);
    background-repeat: no-repeat;
    background-position: right 25px;
    background-size: 25%;
}

.page-id-43 .slider {
    background: url( <?php echo get_template_directory_uri(); ?>/svg/illustrazione-sei-una-banca.svg );
    background-repeat: no-repeat;
    background-position: right 130px;
    background-size: 25%;
}

.page-id-40 .slider {
    background: url( <?php echo get_template_directory_uri(); ?>/svg/illustrazione-contatti.svg );
    background-repeat: no-repeat;
    background-position: right 118px;
    background-size: 30%;
}

.page-id-46 .slider {
    background: url( <?php echo get_template_directory_uri(); ?>/svg/illustrazione-chi-siamo.svg );
    background-repeat: no-repeat;
    background-position: right 108px;
    background-size: 31%;
}

.page-id-49 .slider {
    background: url( <?php echo get_template_directory_uri(); ?>/svg/illustrazione-come-funziona.svg );
    background-repeat: no-repeat;
    background-position: right 28px;
    background-size: 33%;
}

.page-id-372 .slider {
    background: url( <?php echo get_template_directory_uri(); ?>/svg/illustrazione-come-funziona.svg );
    background-repeat: no-repeat;
    background-position: right 28px;
    background-size: 33%;
}

.features .feature.one .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/one.svg) #fff no-repeat 150px 0;
    background-size: 70%;
}

.features .feature.two .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/two.svg) #fff no-repeat 150px 0;
    background-size: 70%;
}

.features .feature.three .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/three.svg) #fff no-repeat 150px 0;
    background-size: 70%;
}

.features .feature.four .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/four.svg) #fff no-repeat 150px 0;
    background-size: 70%;
}

.features .feature.five .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/five.svg) #fff no-repeat 150px 0;
    background-size: 70%;
}

.features .feature.six .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/six.svg) #fff no-repeat 150px 0;
    background-size: 70%;
}
	</style>
	
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<div class="wrapper">
	
	<header id="header" class="header-site">
		<div class="container">
			<div class="d-flex col-12">
				<div class="logo col-8 col-md-10">
					<img src="<?php echo get_template_directory_uri(); ?>/svg/logo-prestakey-white.svg" class="logo-prestakey">
				</div>
				<div class="main-menu col-4 col-md-2 d-flex justify-content-end">
					<span class="mr-2">Menu</span>
					<div id="nav-icon1">
  <span></span>
  <span></span>
  <span></span>
</div>
				</div>
			</div>
			<?php 

				/** content home */
				if ( is_front_page() ) {
					get_template_part( '/template-parts/home/content-row-one' );
				} /** content home */

				/** content azienda */
				if ( is_page(30) ) {
					get_template_part( '/template-parts/azienda/content-row-one' );
				} /** content azienda */

				/** content privato */
				if ( is_page(28) ) {
					get_template_part( '/template-parts/privato/content-row-one' );
				} /** content privato */

				/** content faq */
				if ( is_post_type_archive('faq') ) {
					get_template_part( '/template-parts/faq/content-row-one' );
				} /** content faq */

				/** content contatti */
				if ( is_page(40) ) {
					get_template_part( '/template-parts/contatti/content-row-one' );
				} /** content contatti */

				/** content sei una banca */
				if ( is_page(43) ) {
					get_template_part( '/template-parts/sei-una-banca/content-row-one' );
				} /** content sei una banca */

				/** content chi siamo */
				if ( is_page(46) ) {
					get_template_part( '/template-parts/chi-siamo/content-row-one' );
				} /** content chi siamo */

				/** content come-funziona */
				if ( is_page(49) ) {
					get_template_part( '/template-parts/come-funziona/content-row-one' );
				} /** content come-funziona */

				/** content faq */
				if ( is_page(300) ) {
					get_template_part( '/template-parts/faq/content-row-one' );
				} /** content faq */

				/** content lavora con noi */
				if ( is_page(372) ) {
					get_template_part( '/template-parts/lavora-con-noi/content-row-one' );
				} /** content lavora con noi */

			?>
		</div>
	</header>

	<div class="container-fluid">