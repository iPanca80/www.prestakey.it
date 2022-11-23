<?php 

    if( have_rows('home_row_2') ):
        while( have_rows('home_row_2') ): the_row();

        $homeRow2Titolo = get_sub_field('home_row_2_titolo');
        $homeRow2sottotitolo = get_sub_field('home_row_2_sottotitolo');

?>
<!-- Row 02 - start -->
<style>
    .home section.row-two .container {
        background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-two.svg);
        background-repeat: no-repeat;
        background-position: left 37px;
        background-size: 17%;
    }
    .row-two .select select {
        background: url(<?php echo get_template_directory_uri(); ?>/icons/down-arrow.svg) no-repeat right #fff;
        background-size: 20px;
        background-position-x: right;
    }
    .row-two.row-custom.right .select{
        margin-left:50px;
        margin-right:0;
    }
</style>
<section class="row-two row-custom right bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-lg-8 col-12 text-start mb-4"><?php echo $homeRow2Titolo ?></h1>
            </div>
            <div class="col-12 d-lg-flex justify-content-end mb-4 mt-4">
                <div class="col-lg-8 col-12 text-start">
                    <div class="col-12 d-lg-flex text-start">
                        <h2>Di quanto hai bisogno?</h2>
                        <div class="select select-money">
                            <select name="money" id="money">
                                <option value="one">€ 5.000,00</option>
                                <option value="two">€ 10.000,00</option>
                                <option value="three">€ 15.000,00</option>
                                <option value="three">€ 20.000,00</option>
                                <option value="three">€ 25.000,00</option>
                                <option value="three">€ 30.000,00</option>
                                <option value="three">€ 50.000,00</option>
                                <option value="three">€ 100.000,00</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 d-lg-flex text-start pt-3">
                        <h2>Chi sei?</h2>
                        <div class="select select-typology">
                            <select name="typology" id="typology">
                                <option value="select">Seleziona</option>
                                <option value="private">Sono un privato</option>
                                <option value="company">Sono un'azienda</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-lg-8 col-12 text-start">
                    <h6 class="mt-4">
                    <p><?php echo $homeRow2sottotitolo ?></p>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 02 - end -->
<?php 

        endwhile; 
    endif;

?>