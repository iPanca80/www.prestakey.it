<?php 

    if( have_rows('privato_row_4') ):
        while( have_rows('privato_row_4') ): the_row();

        $privatoRow4Titolo = get_sub_field('privato_row_4_titolo');
        $privatoRow4sottotitolo = get_sub_field('privato_row_4_sottotitolo');
        $privatoRow4Titolo2 = get_sub_field('privato_row_4_titolo_2');
        $privatoRow4Titolo3 = get_sub_field('privato_row_4_titolo_3');
        $privatoRow4TitoloAsterisco = get_sub_field('privato_row_4_titolo_asterisco');
        $privatoRow4DescrizioneAsterisco = get_sub_field('privato_row_4_descrizione_asterisco');

?>
<!-- Row 04 - start -->
<style>
.page-id-28 section.row-four > .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-privato-row-four-left.svg);
    background-repeat: no-repeat;
    background-position: left 110px;
    background-size: 30%;
}
.features .feature.one.col .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/one.svg) #F7FAFE no-repeat 150px 0;
    background-size: 70%;
}

.features .feature.two.col .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/two.svg) #F7FAFE no-repeat 150px 0;
    background-size: 70%;
}

.features .feature.three.col .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/three.svg) #F7FAFE no-repeat 150px 0;
    background-size: 70%;
}

.features .feature.four.col .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/four.svg) #F7FAFE no-repeat 150px 0;
    background-size: 70%;
}

.features .feature.five.col .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/five.svg) #F7FAFE no-repeat 150px 0;
    background-size: 70%;
}

.features .feature.six.col .feature-container {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/six.svg) #F7FAFE no-repeat 150px 0;
    background-size: 70%;
}
</style>
<section class="row-four row-custom section-row right bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-lg-8 col-12 mb-4 text-start"><?php echo $privatoRow4Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <h6 class="col-lg-8 col-12 mb-4 mt-4 text-start">
                    <?php echo $privatoRow4sottotitolo ?>
                </h6>
            </div>
            <div class="col-12">
                <h2 class="col-12 mt-4 text-start"><?php echo $privatoRow4Titolo2 ?></h2>
                <div class="col-12">
                <?php get_template_part( '/template-parts/features' ); ?>
                </div>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <h3 class="col-lg-8 col-12 mb-4 text-start"><?php echo $privatoRow4Titolo3 ?></h3>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-lg-8 col-12 justify-content-end text-start">
                <p class="mb-1"><?php echo $privatoRow4TitoloAsterisco ?></p>
                <p class="lh-base"><?php echo $privatoRow4DescrizioneAsterisco ?></p>  
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 04 - end -->
<?php 

        endwhile; 
    endif;

?>
