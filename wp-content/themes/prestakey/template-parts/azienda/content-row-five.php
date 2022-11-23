<?php 

    if( have_rows('azienda_row_5') ):
        while( have_rows('azienda_row_5') ): the_row();

        $aziendaRow5Titolo = get_sub_field('azienda_row_5_titolo');
        $aziendaRow5sottotitolo = get_sub_field('azienda_row_5_sottotitolo');

?>
<!-- Row 05 - start -->
<section class="row-five row-custom bg-shade">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-lg-8 col-12 mb-4 text-white"><?php echo $aziendaRow5Titolo ?></h1>
            </div>
            <div class="mb-4 mt-4 col-12 d-lg-flex">
            <div class="col-lg-6 col-12">
                <h3 class="col-12 text-white"><?php echo $aziendaRow5sottotitolo ?></h3>
            </div>
            <div class="col-lg-6 col-12 d-flex justify-content-end mt-4 mt-lg-0">
                <a href="/come-funziona/" class="cta-white">
                    <ul>
                        <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/money.svg" class="user"></li>
                        <li style="width:100%;line-height: 33px;">Come funziona</li>
                        <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/right-arrow.svg" class="right-arrow"></li>
                    </ul>
                </a>
            </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 05 - end -->
<?php 

        endwhile; 
    endif;

?>