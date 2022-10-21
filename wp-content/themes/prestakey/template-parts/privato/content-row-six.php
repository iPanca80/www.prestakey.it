<?php 

    if( have_rows('privato_row_6') ):
        while( have_rows('privato_row_6') ): the_row();

        $privatoRow6Titolo = get_sub_field('privato_row_6_titolo');
        $privatoRow6sottotitolo = get_sub_field('privato_row_6_sottotitolo');

?>
<!-- Row 06 - start -->
<style>
    .page-id-28 section.row-six .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-five.svg);
    background-repeat: no-repeat;
    background-position: right 165px;
    background-size: 25%;
}
</style>
<section class="row-six row-custom">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-8 mb-5 mt-5 text-start"><?php echo $privatoRow6Titolo ?></h1>
            </div>
            <div class="col-8">
                <h4 class="mb-5 mt-5 text-start">
                <?php echo $privatoRow6sottotitolo ?>
                </h4>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-12"><?php get_template_part( '/template-parts/form-generale' ); ?></div>
            </div>
        </div>
    </div>
</section>
<!-- Row 06 - end -->
<?php 

        endwhile; 
    endif;

?>