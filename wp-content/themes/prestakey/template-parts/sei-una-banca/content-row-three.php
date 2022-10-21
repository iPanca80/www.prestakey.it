<?php 

    if( have_rows('banca_row_3') ):
        while( have_rows('banca_row_3') ): the_row();

        $bancaRow3Titolo = get_sub_field('banca_row_3_titolo');

?>
<!-- Row 03 - start -->
<style>
.page-id-43 .row-three > .container {
    background: url( <?php echo get_template_directory_uri(); ?>/svg/illustrazione-sei-una-banca-row-three.svg );
    background-repeat: no-repeat;
    background-position: right 80px;
    background-size: 30%;
}
.page-id-43 .row-three .prodotti .card.product-one {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/storefront-2.svg) #F7FAFE no-repeat 280px 0;
    background-size: 70%;
}
.page-id-43 .row-three .prodotti .card.product-two {
    background: url(<?php echo get_template_directory_uri(); ?>/icons/office-building-2.svg) #F7FAFE no-repeat 280px 0;
    background-size: 70%;
}
</style>
<section class="row-three row-custom section-row">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-8 mb-5 mt-5"><?php echo $bancaRow3Titolo ?></h1>
            </div>
            <div class="col-12">
                <div class="col-12">
                <?php get_template_part( '/template-parts/prodotti-sei-una-banca' ); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 03 - end -->
<?php 

        endwhile; 
    endif;

?>