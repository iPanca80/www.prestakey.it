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
        background-position: right 12px;
        background-size: 18%;
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
<section class="row-six row-custom">
    <div class="container">
        <div>
            <div class="col-12 d-flex justify-content-start">
                <h1 class="col-lg-8 col-12 mb-4 text-start"><?php echo $noiRow6Titolo ?></h1>
            </div>
            <div class="col-12 d-flex justify-content-start">
                <div class="col-lg-8 col-12 text-start">
                    <h6 class="mt-4">
                    <?php echo $noiRow6SottoTitolo ?>
                    </h6>
                </div>
            </div>
            <div class="col-12 d-flex justify-content-start mt-4">
                <div class="col-lg-8 col-12 text-start">
                    <div class="col-12 d-lg-flex text-start">
                        <h2>Di quanto hai bisogno?</h2>
                        <div class="select select-money">
                            <select name="money" id="money">
                                <option value="one">€ 150.000,00</option>
                                <option value="two">€ 100.000,00</option>
                                <option value="three">€ 50.000,00</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 d-lg-flex text-start pt-3">
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