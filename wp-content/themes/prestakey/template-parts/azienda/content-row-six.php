<?php 

    if( have_rows('azienda_row_6') ):
        while( have_rows('azienda_row_6') ): the_row();

        $aziendaRow6Titolo = get_sub_field('azienda_row_6_titolo');
        $aziendaRow6sottotitolo = get_sub_field('azienda_row_6_sottotitolo');

?>
<!-- Row 06 - start -->
<style>
    .page-id-30 section.row-six .container {
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
                <h1 class="col-lg-8 col-12 mb-4"><?php echo $aziendaRow6Titolo ?></h1>
            </div>
            <div class="col-lg-8 col-12">
                <h4>
                <?php echo $aziendaRow6sottotitolo ?>
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