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
    background-position: right 165px;
    background-size: 25%;
}
</style>
<section class="row-seven row-custom">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-8 mb-5 mt-5 text-start"><?php echo $noiRow7Titolo ?></h1>
            </div>
            <div class="col-8">
                <h4 class="mb-5 mt-5 text-start">
                <?php echo $noiRow7SottoTitolo ?>
                </h4>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-12"><?php get_template_part( '/template-parts/form-generale' ); ?></div>
            </div>
        </div>
    </div>
</section>
<!-- Row 07 - end -->
<?php 

        endwhile; 
    endif;

?>