<?php 

    if( have_rows('home_row_5') ):
        while( have_rows('home_row_5') ): the_row();

        $homeRow5Titolo = get_sub_field('home_row_5_titolo');
        $homeRow5sottotitolo = get_sub_field('home_row_5_sottotitolo');
        $homeRow5sottotitolo2 = get_sub_field('home_row_5_sottotitolo_2');

?>
<!-- Row 05 - start -->
<style>
   .home section.row-five .container {
        background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-five.svg);
        background-repeat: no-repeat;
        background-position: right 165px;
        background-size: 25%;
    }
</style>
<section class="row-five row-custom bg-shade">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-8 mb-5 mt-5 text-white"><?php echo $homeRow5Titolo ?></h1>
            </div>
            <div class="mb-5 mt-5 col-8">
                <p class="h6 col-12 text-white"><?php echo $homeRow5sottotitolo ?></p>
            </div>
            <div class="col-12">
            <?php get_template_part( '/template-parts/contact-form' ); ?>
            </div>
            <div class="mb-5 mt-5 col-12">
                <p class="h6 col-6 text-white"><?php echo $homeRow5sottotitolo2 ?></p>
            </div>
        </div>
    </div>
</section>
<!-- Row 05 - end -->
<?php 

        endwhile; 
    endif;

?>