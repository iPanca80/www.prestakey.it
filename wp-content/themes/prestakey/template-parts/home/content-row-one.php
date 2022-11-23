<?php 

    if( have_rows('home_row_1') ):
        while( have_rows('home_row_1') ): the_row();

        $homeRow1Titolo = get_sub_field('home_row_1_titolo');
        $homeRow1sottotitolo = get_sub_field('home_row_1_sottotitolo');

?>
<!-- Row slider - start -->
<section class="row-one row-custom">
    <div class="col-12">
        <div class="slider">
            <div class="col-lg-6 col-12">
                <h1 class="text-white mb-4 mb-lg-0"><?php echo $homeRow1Titolo ?></h1>
            </div>
            <div class="col-lg-7 col-12">
                <h4 class="mb-4 mt-4 text-white"><?php echo $homeRow1sottotitolo ?></h4>
            </div>
            <div class="col-12 d-md-flex mt-4">
                <div class="col-md-2 col-12"><h2 class="text-white">Chi sei?</h2></div>
                    <div class="cta-container col-md-10 d-md-flex col-12">
                        <a href="/sono-un-privato/" class="cta-white">
                            <ul>
                                <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/user.svg" class="user"></li>
                                <li style="width:100%;line-height: 33px;">Sono un privato</li>
                                <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/right-arrow.svg" class="right-arrow"></li>
                            </ul>
                        </a>
                        <a href="/sono-una-azienda/" class="cta-white">
                            <ul>
                                <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/company.svg" class="company"></li>
                                <li style="width:100%;line-height: 33px;">Sono un'azienda</li>
                                <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/right-arrow.svg" class="right-arrow"></li>
                            </ul>
                        </a>
                    </div>
                </div>
            </div>
        </div>
</section>
<!-- Row slider - end -->
<?php 

        endwhile; 
    endif;

?>