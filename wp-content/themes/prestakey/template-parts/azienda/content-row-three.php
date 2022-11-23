<?php 

    if( have_rows('azienda_row_3') ):
        while( have_rows('azienda_row_3') ): the_row();

        $aziendaRow3Titolo = get_sub_field('azienda_row_3_titolo');

?>
<!-- Row 03 - start -->
<style>
 .page-id-30 section.row-three .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-azienda-row-three.svg);
    background-repeat: no-repeat;
    background-position: right 205px;
    background-size: 27%;
}
</style>
<section class="row-three row-custom section-row">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-lg-8 col-12 mb-4"><?php echo $aziendaRow3Titolo ?></h1>
            </div>
            <div class="col-12 mt-4">
                <div class="col-12">
                    <?php get_template_part( '/template-parts/form-liquidita' ); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 03 - end -->
<?php 

        endwhile; 
    endif;

?>