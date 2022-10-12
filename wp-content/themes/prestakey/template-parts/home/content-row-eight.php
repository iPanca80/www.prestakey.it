
<!-- Row 08 - start -->
<style>
   .home section.row-eight .container {
        background: url(<?php echo get_template_directory_uri(); ?>/svg/illustrazione-home-row-eight.svg);
        background-repeat: no-repeat;
        background-position: right 55px;
        background-size: 25%;
    }
</style>
<section class="row-eight row-custom bg-color">
    <div class="container">
        <div>
            <div class="col-12">
                <h1 class="col-8 mb-5 mt-5">La rassegna stampa di <strong>PrestaKey</strong>.</h1>
            </div>
            <div class="col-8">
                <?php get_template_part( '/template-parts/rassegna-stampa' ); ?>
            </div>
            <div class="col-12">
                <div class="col-8">
                    <h6 class="mb-5 mt-5">
                        <p>Tutti gli articoli e i comunicati stampa su <strong>PrestaKey</strong>.</p>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Row 08 - end -->