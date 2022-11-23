<?php 

    if( have_rows('contatti_row_4') ):
        while( have_rows('contatti_row_4') ): the_row();

        $contattiRow4Titolo = get_sub_field('contatti_row_4_titolo');
        $contattiRow4sottotitolo = get_sub_field('contatti_row_4_sottotitolo');

?>
<!-- Row 04 - start -->
<section class="row-four row-custom bg-shade">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-lg-8 col-12 mb-4 text-white"><?php echo $contattiRow4Titolo ?></h1>
            </div>
            <div class="mb-4 col-12 d-lg-flex">
            <div class="col-lg-6 col-12">
                <h3 class="col-12 text-white"><?php echo $contattiRow4sottotitolo ?></h3>
            </div>
            <div class="col-lg-6 col-12 d-flex justify-content-end mt-4">
                <a href="/come-funziona/" class="cta-white">
                    <ul>
                        <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/money.svg" class="user"></li>
                        <li style="width:100%;line-height: 33px;">Come funziona</li>
                        <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/right-arrow.svg" class="right-arrow"></li>
                    </ul>
                </a>
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