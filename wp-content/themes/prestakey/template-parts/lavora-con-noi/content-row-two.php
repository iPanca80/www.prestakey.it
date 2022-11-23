<?php 

    if( have_rows('lavora_con_noi_row_2') ):
        while( have_rows('lavora_con_noi_row_2') ): the_row();

        $lavoraConNoiRow2Testo = get_sub_field('lavora_con_noi_row_2_testo');
?>
<!-- Row 02 - start -->
<style>
.page-id-372 section.row-two .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-privato-row-two.svg);
    background-repeat: no-repeat;
    background-position: left 144px;
    background-size: 16%;
}
</style>
<section class="row-two row-custom right bg-color">
    <div class="container">
        <div>
            <div class="col-12">
                <div class="col-12 d-flex justify-content-end">
                    <h6 class="col-lg-8 col-12 mb-4 mt-4 text-start"><?php echo $lavoraConNoiRow2Testo ?></h6>    
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