
<?php 

if( have_rows('faq_row_2') ):
    while( have_rows('faq_row_2') ): the_row();

    $faqRow2Titolo = get_sub_field('faq_row_2_titolo');

?>
<!-- Row 02 - start -->
<style>
.page-id-300 section.row-two .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-faq-row-two.svg);
    background-repeat: no-repeat;
    background-position: left 335px;
    background-size: 29%;
}
</style>
<section class="row-two row-custom bg-color">
    <div class="container">
    <div class="col-12 d-flex justify-content-end">
                <h1 class="col-lg-8 col-12 mb-4"><?php echo $faqRow2Titolo ?></h1>
            </div>
        <div class="col-12 d-flex justify-content-end">
            <div class="col-lg-8 col-12"><?php get_template_part( '/template-parts/faq' ); ?></div>
        </div>
    </div>
</section>
<!-- Row 02 - end -->
<?php 

        endwhile; 
    endif;

?>