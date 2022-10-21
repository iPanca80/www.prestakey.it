
<?php 

if( have_rows('faq_row_3') ):
    while( have_rows('faq_row_3') ): the_row();

    $faqRow3Titolo = get_sub_field('faq_row_3_titolo');
    $faqRow3sottotitolo = get_sub_field('faq_row_3_sottotitolo');

?>
<!-- Row 03 - start -->
<style>
    .page-id-300 section.row-three .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-five.svg);
    background-repeat: no-repeat;
    background-position: right 165px;
    background-size: 25%;
}
</style>
<section class="row-three row-custom">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-8 mb-5 mt-5"><?php echo $faqRow3Titolo ?></h1>
            </div>
            <div class="col-8">
                <h4 class="mb-5 mt-5">
                <?php echo $faqRow3sottotitolo ?>
                </h4>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-12"><?php get_template_part( '/template-parts/form-generale' ); ?></div>
            </div>
        </div>
    </div>
</section>
<!-- Row 03 - end -->
<?php 

        endwhile; 
    endif;

?>