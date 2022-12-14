<?php 

    if( have_rows('home_row_3') ):
        while( have_rows('home_row_3') ): the_row();

        $homeRow3Titolo = get_sub_field('home_row_3_titolo');
        $homeRow3sottotitolo = get_sub_field('home_row_3_sottotitolo');
        $homeRow3sottotitoloM = get_sub_field('home_row_3_sottotitolo_m');
        $homeRow3Titolo2 = get_sub_field('home_row_3_titolo_2');
        $homeRow3Titolo2M = get_sub_field('home_row_3_titolo_2_m');
        $homeRow3Titolo3 = get_sub_field('home_row_3_titolo_3');
        $homeRow3Titolo3M = get_sub_field('home_row_3_titolo_3_m');
        $homeRow3TitoloAsterisco = get_sub_field('home_row_3_titolo_asterisco');
        $homeRow3DescrizioneAsterisco = get_sub_field('home_row_3_descrizione_asterisco');

?>
<!-- Row 03 - start -->
<style>
    .home section.row-three > .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-privato-row-four.svg);
    background-repeat: no-repeat;
    background-position: right 110px;
    background-size: 30%;
}
</style>
<section class="row-three row-custom section-row">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-lg-8 col-12 mb-4"><?php echo $homeRow3Titolo ?></h1>
            </div>
            <div class="col-lg-8 col-12">
                <h6 class="col-12 mb-4 mt-4 desktop">
                    <?php echo $homeRow3sottotitolo ?>
                </h6>
                <h6 class="col-12 mb-4 mt-4 mobile" style="display:none;">
                    <?php echo $homeRow3sottotitoloM ?>
                </h6>
            </div>
            <div class="col-12 mb-4 mt-4">
                <h2 class="col-12 desktop"><?php echo $homeRow3Titolo2 ?></h2>
                <h2 class="col-12 mobile"><?php echo $homeRow3Titolo2M ?></h2>
                <div class="col-12 procedura">
                <?php get_template_part( '/template-parts/features' ); ?>
                </div>
            </div>
            <div class="col-lg-8 col-12">
                <h3 class="col-12 mb-4 mt-4 desktop"><?php echo $homeRow3Titolo3 ?></h3>
                <h6 class="col-12 mb-4 mt-4 mobile"><?php echo $homeRow3Titolo3M ?></h6>
            </div>
            <div class="col-lg-8 col-12 mt-4 desktop">
                <p class="col-12 mb-1"><?php echo $homeRow3TitoloAsterisco ?></p>
                <p class="col-12 lh-base"><?php echo $homeRow3DescrizioneAsterisco ?></p>  
            </div>
        </div>
    </div>
</section>
<!-- Row 03 - end -->
<?php 

        endwhile; 
    endif;

?>