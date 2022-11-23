<?php 

    if( have_rows('banca_row_2') ):
        while( have_rows('banca_row_2') ): the_row();

        $bancaRow2Titolo = get_sub_field('banca_row_2_titolo');
        $bancaRow2sottotitolo = get_sub_field('banca_row_2_sottotitolo');
        $bancaRow2Titolo2 = get_sub_field('banca_row_2_titolo_2');

?>
<!-- Row 02 - start -->
<style>
.page-id-43 section.row-two > .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-sei-una-banca-row-two-left.svg);
    background-repeat: no-repeat;
    background-position: left 0px;
    background-size: 27%;
}
.features .feature.col .feature-container {
    background: #F7FAFE;
}
</style>
<section class="row-two row-custom section-row bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-lg-8 col-12 mb-4 text-start"><?php echo $bancaRow2Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <h6 class="col-lg-8 col-12 mb-4 mt-4 text-start">
                    <?php echo $bancaRow2sottotitolo ?>
                </h6>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <h2 class="col-lg-8 col-12 text-start"><?php echo $bancaRow2Titolo2 ?></h2>
            </div>
                <div class="col-12 mt-4">
                    <?php get_template_part( '/template-parts/features-sei-una-banca' ); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 02 - end -->
<?php 

        endwhile; 
    endif;

?>