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
            <div class="col-6">
                <h1 class="mb-5 mt-5 text-white"><?php echo $homeRow1Titolo ?></h1>
            </div>
            <div class="col-7">
                <h4 class="mb-5 mt-5 text-white"><?php echo $homeRow1sottotitolo ?></h4>
            </div>
            <div class="col-12 d-flex">
                <div class="col-2"><h2 class="text-white">Chi sei?</h2></div>
                    <div class="cta-container col-10 d-flex">
                        <a href="/sono-un-privato/" class="cta-white">
                            <ul>
                                <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/user.svg" class="user"></li>
                                <li style="width:100%;line-height: 33px;">Sono un privato</li>
                                <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/right-arrow.svg" class="right-arrow"></li>
                            </ul>
                        </a>
                        <a href="/sono-unazienda/" class="cta-white">
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