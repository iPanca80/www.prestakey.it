<?php 

    if( have_rows('come_funziona_row_4') ):
        while( have_rows('come_funziona_row_4') ): the_row();

        $comeFunzionaRow4Titolo = get_sub_field('come_funziona_row_4_titolo');
        $comeFunzionaRow4sottotitolo = get_sub_field('come_funziona_row_4_sottotitolo');
        $comeFunzionaRow4Titolo2 = get_sub_field('come_funziona_row_4_titolo_2');
        $comeFunzionaRow4Titolo3 = get_sub_field('come_funziona_row_4_titolo_3');
        $comeFunzionaRow4TitoloAsterisco = get_sub_field('come_funziona_row_4_titolo_asterisco');
        $comeFunzionaRow4DescrizioneAsterisco = get_sub_field('come_funziona_row_4_descrizione_asterisco');

?>
<!-- Row 04 - start -->
<style>
.page-id-49 section.row-four > .container {
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
<section class="row-four row-custom section-row bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-8 mb-5 mt-5 text-start"><?php echo $comeFunzionaRow4Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <h6 class="col-8 mb-5 mt-5 text-start">
                    <?php echo $comeFunzionaRow4sottotitolo ?>
                </h6>
            </div>
            <div class="col-12">
                <h2 class="col-12 mt-5 mb-5 text-center"><?php echo $comeFunzionaRow4Titolo2 ?></h2>
                <div class="col-12">
                <?php get_template_part( '/template-parts/features' ); ?>
                </div>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <h3 class="col-8 mt-5 mb-5 text-start"><?php echo $comeFunzionaRow4Titolo3 ?></h3>
            </div>
            <div class="col-12 d-flex justify-content-end">
            <div class="col-8 text-start">
                <p class="mt-5 mb-1"><?php echo $comeFunzionaRow4TitoloAsterisco ?></p>
                <p class="mb-5 lh-base"><?php echo $comeFunzionaRow4DescrizioneAsterisco ?></p>  
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