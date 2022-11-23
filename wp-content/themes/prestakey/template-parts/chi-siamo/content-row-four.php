<?php 

if( have_rows('noi_row_4') ):
    while( have_rows('noi_row_4') ): the_row();

    $noiRow4Titolo = get_sub_field('noi_row_4_titolo');

?>
<!-- Row 04 - start -->
<style>
.page-id-46 section.row-four .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-chi-siamo-row-four.svg);
    background-repeat: no-repeat;
    background-position: left 168px;
    background-size: 31%;
}

.page-id-46 .features .feature.one .feature-container {
    background: url(/wp-content/themes/prestakey/icons/staff.svg) #fff no-repeat 150px 61px;
    background-size: 70%;
}

.page-id-46 .features .feature.two .feature-container {
    background: url(/wp-content/themes/prestakey/icons/staff.svg) #fff no-repeat 150px 61px;
    background-size: 70%;
}

.page-id-46 .features .feature.three .feature-container {
    background: url(/wp-content/themes/prestakey/icons/staff.svg) #fff no-repeat 150px 61px;
    background-size: 70%;
}

.page-id-46 .features .feature.four .feature-container {
    background: url(/wp-content/themes/prestakey/icons/staff.svg) #fff no-repeat 150px 61px;
    background-size: 70%;
}

.page-id-46 .features .feature.five .feature-container {
    background: url(/wp-content/themes/prestakey/icons/staff.svg) #fff no-repeat 150px 61px;
    background-size: 70%;
}

.page-id-46 .features .feature.six .feature-container {
    background: url(/wp-content/themes/prestakey/icons/staff.svg) #fff no-repeat 150px 61px;
    background-size: 70%;
}

.card {
    -webkit-box-shadow: 0px 0px 12px 5px rgba(0,0,0,0.1);
    box-shadow: 0px 0px 12px 5px rgba(0,0,0,0.1);
    border-radius: 30px;
    padding: 30px;
    border: 0;
}
</style>
<section class="row-four row-custom right bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-lg-8 col-12 mb-4 text-start"><?php echo $noiRow4Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-lg-8 col-12 d-flex justify-content-end">
                    <?php get_template_part( '/template-parts/staff' ); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 04 - end -->
<?php 

        endwhile; 
    endif;

?>