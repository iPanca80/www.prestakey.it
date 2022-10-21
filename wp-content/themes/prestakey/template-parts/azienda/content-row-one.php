<?php 

    if( have_rows('azienda_row_1') ):
        while( have_rows('azienda_row_1') ): the_row();

        $aziendaRow1Titolo = get_sub_field('azienda_row_1_titolo');
        $aziendaRow1sottotitolo = get_sub_field('azienda_row_1_sottotitolo');

?>
<!-- Row slider - start -->
<section class="row-one row-custom">
    <div class="col-12">
        <div class="slider">
            <div class="col-7">
                <h1 class="mb-5 mt-5 text-white"><?php echo $aziendaRow1Titolo ?></h1>
            </div>
            <div class="col-7">
            <h4 class="mb-5 mt-5 text-white">
                <?php echo $aziendaRow1sottotitolo ?>
                </h4>
            </div>
        </div>
</section>
<!-- Row slider - end -->
<?php 

        endwhile; 
    endif;

?>