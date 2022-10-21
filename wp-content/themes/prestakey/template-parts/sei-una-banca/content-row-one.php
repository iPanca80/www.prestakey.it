<?php 

    if( have_rows('banca_row_1') ):
        while( have_rows('banca_row_1') ): the_row();

        $bancaRow1Titolo = get_sub_field('banca_row_1_titolo');
        $bancaRow1sottotitolo = get_sub_field('banca_row_1_sottotitolo');

?>
<!-- Row slider - start -->
<section class="row-one row-custom">
    <div class="col-12">
        <div class="slider">
            <div class="col-8">
                <h1 class="mb-5 mt-5 text-white"><?php echo $bancaRow1Titolo ?></h1>
            </div>
            <div class="col-8">
                <h4 class="mb-5 mt-5 text-white">
                    <?php echo $bancaRow1sottotitolo ?>
                </h4>
            </div>
        </div>
</section>
<!-- Row slider - end -->
<?php 

        endwhile; 
    endif;

?>