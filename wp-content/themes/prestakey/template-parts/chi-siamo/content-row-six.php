<?php 

if( have_rows('noi_row_6') ):
    while( have_rows('noi_row_6') ): the_row();

    $noiRow6Titolo = get_sub_field('noi_row_6_titolo');
    $noiRow6SottoTitolo = get_sub_field('noi_row_6_sottotitolo');

?>
<!-- Row 06 - start -->
<style>
    .page-id-46 section.row-six .container {
        background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-chi-siamo-row-six.svg);
        background-repeat: no-repeat;
        background-position: left 37px;
        background-size: 22%;
    }
    .row-six .select select {
        background: url(<?php echo get_template_directory_uri(); ?>/icons/down-arrow.svg) no-repeat right #fff;
        background-size: 20px;
        background-position-x: right;
    }
    .row-six.row-custom.right .select{
        margin-left:50px;
        margin-right:0;
    }
</style>
<section class="row-six row-custom right bg-color">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-end">
                <h1 class="col-8 mb-5 mt-5 text-start"><?php echo $noiRow6Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-8 text-start">
                    <h6 class="mb-5 mt-5">
                    <?php echo $noiRow6SottoTitolo ?>
                    </h6>
                </div>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <div class="col-8 text-start">
                    <div class="col-12 d-flex text-start">
                        <h2>Di quanto hai bisogno?</h2>
                        <div class="select select-money">
                            <select name="money" id="money">
                                <option value="one">€ 150.000,00</option>
                                <option value="two">€ 100.000,00</option>
                                <option value="three">€ 50.000,00</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 d-flex text-start pt-3">
                        <h2>Chi sei?</h2>
                        <div class="select select-typology">
                            <select name="typology" id="typology">
                                <option value="private">Sono un privato</option>
                                <option value="company">Sono un'azienda</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 06 - end -->
<?php 

        endwhile; 
    endif;

?>