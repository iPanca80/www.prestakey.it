<?php 

    if( have_rows('lavora_con_noi_row_1') ):
        while( have_rows('lavora_con_noi_row_1') ): the_row();

        $lavoraConNoiRow1Titolo = get_sub_field('lavora_con_noi_row_1_titolo');
        $lavoraConNoiRow1sottotitolo = get_sub_field('lavora_con_noi_row_1_sottotitolo');

?>
<!-- Row slider - start -->
<section class="row-one row-custom">
    <div class="col-12">
        <div class="slider">
            <div class="col-lg-7 col-12">
                <h1 class="mb-4 text-white"><?php echo $lavoraConNoiRow1Titolo ?></h1>
            </div>
            <div class="col-lg-7 col-12">
                <h4 class="mb-4 mt-4 text-white">
                <?php echo $lavoraConNoiRow1sottotitolo ?>
                </h4>
            </div>
        </div>
</section>
<!-- Row slider - end -->
<?php 

        endwhile; 
    endif;

?>