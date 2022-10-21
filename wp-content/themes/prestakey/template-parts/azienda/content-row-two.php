<?php 

    if( have_rows('azienda_row_2') ):
        while( have_rows('azienda_row_2') ): the_row();

        $aziendaRow2Titolo = get_sub_field('azienda_row_2_titolo');
        $aziendaRow2sottotitolo = get_sub_field('azienda_row_2_sottotitolo');

?>
<!-- Row 02 - start -->
<style>
    .page-id-30 section.row-two .container {
        background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-azienda-row-two.svg);
        background-repeat: no-repeat;
        background-position: left 88px;
        background-size: 16%;
    }
    .row-two .select select {
        background: url(<?php echo get_template_directory_uri(); ?>/icons/down-arrow.svg) no-repeat right #fff;
        background-size: 20px;
        background-position-x: right;
    }
    .row-two.row-custom.right .select{
        margin-right:50px;
        margin-left:0;
    }
</style>
<section class="row-two row-custom right bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-8 mb-5 mt-5 text-start"><?php echo $aziendaRow2Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-8">
                    
                </div>
                <div class="col-12 d-flex justify-content-end">
                    <h6 class="col-8 mb-5 mt-5 text-start">
                        <?php echo $aziendaRow2sottotitolo ?>
                    </h6>
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