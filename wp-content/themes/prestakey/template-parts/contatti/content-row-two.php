<?php 

    if( have_rows('contatti_row_2') ):
        while( have_rows('contatti_row_2') ): the_row();

        $contattiRow2Titolo = get_sub_field('contatti_row_2_titolo');
        $contattiRow2sottotitolo = get_sub_field('contatti_row_2_sottotitolo');
        $contattiRow2sottotitoloM = get_sub_field('contatti_row_2_sottotitolo_m');

?>
<!-- Row 02 - start -->
<style>
    .page-id-40 section.row-two .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-privato-row-two.svg);
    background-repeat: no-repeat;
    background-position: left 70px;
    background-size: 10%;
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
                <div class="col-lg-8 col-12">
                    <h1 class="mb-4 text-start"><?php echo $contattiRow2Titolo ?></h1>
                </div>
            </div>
            <div class="col-12">
                <div class="col-12 d-flex justify-content-end">
                    <h6 class="col-lg-8 col-12 mt-4 text-start desktop">
                        <?php echo $contattiRow2sottotitolo ?>
                    </h6>
                    <h6 class="col-lg-8 col-12 mt-4 text-start mobile">
                        <?php echo $contattiRow2sottotitoloM ?>
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