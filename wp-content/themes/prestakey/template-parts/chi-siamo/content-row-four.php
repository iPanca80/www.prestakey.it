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
</style>
<section class="row-four row-custom right bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-8 mb-5 mt-5 text-start"><?php echo $noiRow4Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-12 d-flex justify-content-end">
                    <h6 class="col-8 mb-5 mt-5 text-start">
                        <p></p> 
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