<?php 

if( have_rows('noi_row_7') ):
    while( have_rows('noi_row_7') ): the_row();

    $noiRow7Titolo = get_sub_field('noi_row_7_titolo');
    $noiRow7SottoTitolo = get_sub_field('noi_row_7_sottotitolo');

?>
<!-- Row 07 - start -->
<style>
    .page-id-46 section.row-seven .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-five.svg);
    background-repeat: no-repeat;
    background-position: left 60px;
    background-size: 25%;
}
</style>
<section class="row-seven row-custom right bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-lg-8 col-12 mb-4 text-start"><?php echo $noiRow7Titolo ?></h1>
            </div>
            <div class="col-lg-12 col-12 col-12 d-flex justify-content-end">
                <h4 class="col-lg-8 col-12 mt-4 text-start">
                <?php echo $noiRow7SottoTitolo ?>
                </h4>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-lg-8 col-12"><?php get_template_part( '/template-parts/form-generale' ); ?></div>
            </div>
        </div>
    </div>
</section>
<!-- Row 07 - end -->
<?php 

        endwhile; 
    endif;

?>