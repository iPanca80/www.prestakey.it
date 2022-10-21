<?php 

    if( have_rows('faq_row_1') ):
        while( have_rows('faq_row_1') ): the_row();

        $faqRow1Titolo = get_sub_field('faq_row_1_titolo');
        $faqRow1sottotitolo = get_sub_field('faq_row_1_sottotitolo');

?>
<!-- Row slider - start -->
<section class="row-one row-custom">
    <div class="col-12">
        <div class="slider">
            <div class="col-7">
                <h1 class="mb-5 mt-5 text-white"><?php echo $faqRow1Titolo ?></h1>
            </div>
            <div class="col-7">
                <h4 class="mb-5 mt-5 text-white">
                <?php echo $faqRow1sottotitolo ?>
                </h4>
            </div>
        </div>
</section>
<!-- Row slider - end -->
<?php 

        endwhile; 
    endif;

?>