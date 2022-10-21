<?php 

    if( have_rows('noi_row_2') ):
        while( have_rows('noi_row_2') ): the_row();

        $noiRow2Titolo = get_sub_field('noi_row_2_titolo');
        $noiRow2sottotitolo = get_sub_field('noi_row_2_sottotitolo');

?>
<!-- Row 02 - start -->
<style>
.page-id-46 section.row-two .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-chi-siamo-row-two.svg);
    background-repeat: no-repeat;
    background-position: left 168px;
    background-size: 31%;
}
</style>
<section class="row-two row-custom right bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-8 mb-5 mt-5 text-start"><?php echo $noiRow2Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-8 text-start">
                    
                </div>
                <div class="col-12 d-flex justify-content-end">
                    <h6 class="col-8 mb-5 mt-5 text-start">
                        <?php echo $noiRow2sottotitolo ?>
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