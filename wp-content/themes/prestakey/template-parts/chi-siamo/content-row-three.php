<?php 

    if( have_rows('noi_row_3') ):
        while( have_rows('noi_row_3') ): the_row();

        $noiRow3Titolo = get_sub_field('noi_row_3_titolo');
        $noiRow3Sottotitolo = get_sub_field('noi_row_3_sottotitolo');
?>
<!-- Row 03 - start -->
<style>
    .page-id-46 section.row-three .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-chi-siamo-row-three.svg);
    background-repeat: no-repeat;
    background-position: right 165px;
    background-size: 25%;
}
</style>
<section class="row-three row-custom">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-lg-8 col-12 mb-4"><?php echo $noiRow3Titolo ?></h1>
            </div>
            <div class="col-lg-8 col-12">
                <h6 class="col-lg-8 col-12 mt-4 text-start">
                    <?php echo $noiRow3Sottotitolo ?>
                </h6>
            </div>
        </div>
    </div>
</section>
<!-- Row 03 - end -->
<?php 

        endwhile; 
    endif;

?>