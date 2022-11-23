<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package prestakey
 */

?>

        <footer id="footer">
                <div class="container container d-lg-flex align-items-start" style="margin-bottom: 50px;">
                    <div class="col-lg-3 col-12">
                        <div class="fs-5 fw-light text-white">Il servizio</div>
                        <div class="list-menu-column mt-4">
                            <ul>
                                <li><a href="/come-funziona/">Come funziona</a></li>
                                <li><a href="#">Condizioni di utilizzo</a></li>
                                <li><a href="#">Privacy</a></li>
                                <li><a href="#">Informativa cookie</a></li>
                                <li><a href="/faq/">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-12">
                        <div class="fs-5 fw-light text-white">I nostri prodotti</div>
                        <div class="list-menu-column mt-4">
                            <ul>
                                <li><a href="/sono-una-azienda/">Per aziende</a></li>
                                <li><a href="/sono-un-privato/">Per privati</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-12">
                        <div class="fs-5 fw-light text-white">Azienda</div>
                        <div class="list-menu-column mt-4">
                            <ul>
                                <li><a href="/chi-siamo/">Chi siamo</a></li>
                                <li><a href="/lavora-con-noi/">Lavora con noi</a></li>
                                <!--<li><a href="#">Blog</a></li>-->
                                <li><a href="/contatti/">Contattaci</a></li>
                                <!--<li><a href="#">Recensioni e oponioni</a></li>-->
                                <!--<li><a href="#">Rassegna stampa</a></li>-->
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-12">
                        <div class="fs-5 fw-light text-white">Banche</div>
                        <div class="list-menu-column mt-4">
                            <ul>
                                <li><a href="/sei-una-banca/">Sei una banca? Collabora con noi</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="logo-footer text-center col-12">
                        <img src="<?php echo get_template_directory_uri(); ?>/svg/pittogramma-prestakey.svg" class="pittogramma-prestakey">
                    </div>
                </div>
                <div class="container">
                <?php
                    wp_nav_menu( array( 
                        'theme_location' => 'main-menu',
                        'container' => 'div',
                        'container_class' => 'main-menu-footer d-lg-flex justify-content-center',
                        'menu_class' => 'd-lg-flex',
                        'menu_id' => '',
                        'list_item_class' => '',
                        'add_a_class' => '',
                    ) ); 
                ?>
                </div>
            </div>
        </footer>
    
    </div> <!-- close container -->
</div> <!-- close wrapper -->

<?php get_template_part( '/template-parts/menu-sidenav' ); ?>

<?php wp_footer(); ?>

</body>
</html>
