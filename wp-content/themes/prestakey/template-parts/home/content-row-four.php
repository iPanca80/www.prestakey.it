<?php 

    if( have_rows('home_row_4') ):
        while( have_rows('home_row_4') ): the_row();

        $homeRow4Titolo = get_sub_field('home_row_4_titolo');
        $homeRow4sottotitolo = get_sub_field('home_row_4_sottotitolo');
        $homeRow4sottotitolo2 = get_sub_field('home_row_4_sottotitolo_2');

?>
<!-- Row 04 - start -->
<style>
    .home section.row-four .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-four.svg);
    background-repeat: no-repeat;
    background-position: left 35px;
    background-size: 28%;
}
</style>

<section class="row-four row-custom right bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-lg-8 col-12 mb-4 text-start"><?php echo $homeRow4Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-lg-8 col-12">
                <p class="h6 mb-3" style="margin-bottom:1.5rem !important;margin-top:1.5rem !important;"><?php echo $homeRow4sottotitolo2 ?></p>
                <div class="col-12">
                    <a href="/come-funziona/" class="cta-white">
                        <ul>
                            <li style="width:100%;line-height: 33px;">Scopri di più</li>
                            <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/right-arrow.svg" class="right-arrow"></li>
                        </ul>
                    </a>
                </div>
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