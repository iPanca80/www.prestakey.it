<?php 

    if( have_rows('contatti_row_3') ):
        while( have_rows('contatti_row_3') ): the_row();

        $contattiRow3Titolo = get_sub_field('contatti_row_3_titolo');

?>
<!-- Row 03 - start -->
<style>
    .page-id-40 section.row-three .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-five.svg);
    background-repeat: no-repeat;
    background-position: right 165px;
    background-size: 25%;
}
</style>
<section class="row-three row-custom">
    <div class="container">
        <div>
        <div class="col-8">
                <h1 class="mb-5 mt-5"><?php echo $contattiRow3Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-12"><?php get_template_part( '/template-parts/form-generale' ); ?></div>
            </div>
        </div>
    </div>
</section>
<!-- Row 03 - end -->
<?php 

        endwhile; 
    endif;

?>