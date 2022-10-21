<?php 

    if( have_rows('banca_row_4') ):
        while( have_rows('banca_row_4') ): the_row();

        $bancaRow4Titolo = get_sub_field('banca_row_4_titolo');

?>
<!-- Row 04 - start -->
<style>
.page-id-43 section.row-four .container {
    background: url(http://prestakey/wp-content/themes/prestakey/svg/illustrazione-sei-una-banca-row-four.svg);
    background-repeat: no-repeat;
    background-position: left 38px;
    background-size: 22%;
}
</style>
<section class="row-four row-custom section-row bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-8 mb-5 mt-5 text-start"><?php echo $bancaRow4Titolo ?></h1>
            </div>
            <div class="col-12">
                <div class="col-12">
                <?php 

if( have_rows('banca_row_4_staff') ):
    while( have_rows('banca_row_4_staff') ): the_row();

    $bancaRow4Nome = get_sub_field('banca_row_4_nome');
    $bancaRow4Descrizione =  get_sub_field('banca_row_4_descrizione');
    $bancaRow4Contatti = get_sub_field('banca_row_4_contatti');
    $bancaRow4Immagine = get_sub_field('banca_row_4_immagine');

?>
                <div class="p-5 mb-4 bg-light rounded-3 d-flex">
                    <div class="stefano-vantaggiato mr-3"><img src="<?php echo $bancaRow4Immagine ?>" alt="<?php echo $bancaRow4Nome ?>"></div>
                    <div class="py-5 px-5">
                        <h4 class="fs-4 fw-bold"><?php echo $bancaRow4Nome ?></h1>
                        <p class="fs-5 fw-normal"><?php echo $bancaRow4Descrizione ?></p>
                        <p class="fs-6 fw-normal"><?php echo $bancaRow4Contatti ?></p>
                    </div>
                </div>
                <?php 

        endwhile; 
    endif;

?>
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