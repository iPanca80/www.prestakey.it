<?php 

    if( have_rows('come_funziona_row_2') ):
        while( have_rows('come_funziona_row_2') ): the_row();

        $comeFunzionaRow2Titolo = get_sub_field('come_funziona_row_2_titolo');
        $comeFunzionaRow2sottotitolo = get_sub_field('come_funziona_row_2_sottotitolo');

?>
<!-- Row 02 - start -->
<style>
.page-id-49 section.row-two .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-privato-row-two.svg);
    background-repeat: no-repeat;
    background-position: left 148px;
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
                <h1 class="col-lg-8 col-12 mb-4 text-start"><?php echo $comeFunzionaRow2Titolo ?></h1>
            </div>
            <div class="col-12">
            <div class="modulopsd2 col-12 d-flex justify-content-end">
                    <?php get_template_part( '/template-parts/form-psd2' ); ?>
                </div>
                <div class="col-12 d-flex justify-content-end">
                    <h6 class="col-lg-8 col-12 mb-4 mt-4 text-start"><?php echo $comeFunzionaRow2sottotitolo ?></h6>
                        
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