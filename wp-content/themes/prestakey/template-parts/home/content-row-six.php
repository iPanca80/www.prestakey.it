<?php 

    if( have_rows('home_row_6') ):
        while( have_rows('home_row_6') ): the_row();

        $homeRow6Titolo = get_sub_field('home_row_6_titolo');
        $homeRow6sottotitolo = get_sub_field('home_row_6_sottotitolo');

?>
<!-- Row 06 - start -->
<style>
   .home section.row-six .container {
        background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-six.svg);
        background-repeat: no-repeat;
        background-position: left 185px;
        background-size: 25%;
    }
</style>
<section class="row-six row-custom bg-color">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-8 mb-5 mt-5"><?php echo $homeRow6Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-7"><?php get_template_part( '/template-parts/faq' ); ?></div>
            </div>
            <div class="col-12">
                <div class="col-8">
                    <h6 class="mb-5 mt-5">
                        <?php echo $homeRow6sottotitolo ?>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 06 - end -->
<?php 

        endwhile; 
    endif;

?>