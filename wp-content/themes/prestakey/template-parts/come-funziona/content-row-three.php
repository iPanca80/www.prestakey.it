<?php 

    if( have_rows('come_funziona_row_3') ):
        while( have_rows('come_funziona_row_3') ): the_row();

        $comeFunzionaRow3Titolo = get_sub_field('come_funziona_row_3_titolo');
        $comeFunzionaRow3sottotitolo = get_sub_field('come_funziona_row_3_sottotitolo');

?>
<!-- Row 03 - start -->
<style>
.page-id-49 section.row-three .container {
    background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-two.svg);
    background-repeat: no-repeat;
    background-position: right 18px;
    background-size: 17%;
}
    .row-three .select select {
        background: url(<?php echo get_template_directory_uri(); ?>/icons/down-arrow.svg) no-repeat right #fff;
        background-size: 20px;
        background-position-x: right;
    }
    .row-three.row-custom.right .select{
        margin-right:50px;
        margin-left:0;
    }
</style>
<section class="row-three row-custom">
    <div class="container">
        <div>
            <div class="col-12 d-flex">
                <h1 class="col-lg-8 col-12 mb-4"><?php echo $comeFunzionaRow3Titolo ?></h1>
            </div>
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
                <div class="col-12 d-flex">
                    <h6 class="col-lg-8 col-12 mt-4">
                        <?php echo $comeFunzionaRow3sottotitolo ?>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 03 - end -->
<?php 

        endwhile; 
    endif;

?>