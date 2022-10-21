<?php 

    if( have_rows('come_funziona_row_5') ):
        while( have_rows('come_funziona_row_5') ): the_row();

        $comeFunzionaRow5Titolo = get_sub_field('come_funziona_row_5_titolo');
        $comeFunzionaRow5sottotitolo = get_sub_field('come_funziona_row_5_sottotitolo');

?>
<!-- Row 05 - start -->
<style>
    .page-id-49 section.row-five .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-five.svg);
    background-repeat: no-repeat;
    background-position: right 165px;
    background-size: 25%;
}
</style>
<section class="row-five row-custom">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-8 mb-5 mt-5"><?php echo $comeFunzionaRow5Titolo ?></h1>
            </div>
            <div class="col-8">
                <h4 class="mb-5 mt-5">
                <?php echo $comeFunzionaRow5sottotitolo ?>
                </h4>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-12"><?php get_template_part( '/template-parts/form-generale' ); ?></div>
            </div>
        </div>
    </div>
</section>
<!-- Row 05 - end -->
<?php 

        endwhile; 
    endif;

?>