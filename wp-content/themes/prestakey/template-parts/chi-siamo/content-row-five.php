<?php 

if( have_rows('noi_row_5') ):
    while( have_rows('noi_row_5') ): the_row();

    $noiRow5Titolo = get_sub_field('noi_row_5_titolo');

?>
<!-- Row 05 - start -->
<style>
    .page-id-46 section.row-five .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-chi-siamo-row-three.svg);
    background-repeat: no-repeat;
    background-position: right 165px;
    background-size: 25%;
}
</style>
<section class="row-five row-custom">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-lg-8 col-12 mb-4"><?php echo $noiRow5Titolo ?></h1>
            </div>
            <div class="col-lg-8 col-12">
                <h4 class="mt-4">
                </h4>
            </div>
        </div>
    </div>
</section>
<!-- Row 05 - end -->
<?php 

        endwhile; 
    endif;

?>