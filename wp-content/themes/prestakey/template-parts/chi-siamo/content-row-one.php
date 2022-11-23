<?php 

    if( have_rows('noi_row_1') ):
        while( have_rows('noi_row_1') ): the_row();

        $noiRow1Titolo = get_sub_field('noi_row_1_titolo');
        $noiRow1sottotitolo = get_sub_field('noi_row_1_sottotitolo');

?>
<!-- Row slider - start -->
<section class="row-one row-custom">
    <div class="col-12">
        <div class="slider">
            <div class="col-lg-8 col-12">
                <h1 class="mb-4 text-white"><?php echo $noiRow1Titolo ?></h1>
            </div>
            <div class="col-lg-8 col-12">
                <div class="h4 mb-4 mt-4 text-white">
                <?php echo $noiRow1sottotitolo ?>
    </div>
            </div>
        </div>
</section>
<!-- Row slider - end -->
<?php 

        endwhile; 
    endif;

?>