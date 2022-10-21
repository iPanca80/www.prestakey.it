<!-- Prodotti - start -->
<div class="container prodotti pt-5 pb-5">

    <div class="row align-items-start gx-5">

<?php

if( have_rows('banca_row_3_mercato_retail') ):
    while( have_rows('banca_row_3_mercato_retail') ): the_row();

    $titoloBox1 = get_sub_field('titolo_box_1');

    ?>

        <div class="col-6 mb-4">
            <div class="card product-one h-100 shadow-lg">
                <div class="card-body">
                <div class="p-3">
                <div class="feature-icon">
                    <img src="<?php echo get_template_directory_uri(); ?>/icons/storefront.svg" class="step step3">
                </div>
                    <h2 class="fw-bold lh-base fs-4"><?php echo $titoloBox1 ?></h2>  
                </div>
                </div>
                <ul class="list-group list-group-flush">
                <?php 

    if( have_rows('lista_mercato_retail') ):

        while( have_rows('lista_mercato_retail') ) : the_row();

        $voceMercatoRetail = get_sub_field('voce_mercato_retail');

?>
                <li class="list-group-item"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
                    <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
                </svg> <?php echo $voceMercatoRetail ?></li>

                <?php 

endwhile; 
endif;

endwhile; 
endif;

?>

                </ul>
            </div>
        </div>
        <?php

if( have_rows('banca_row_3_mercato_corporate') ):
    while( have_rows('banca_row_3_mercato_corporate') ): the_row();

    $titoloBox2 = get_sub_field('titolo_box_2');

    ?>

        <div class="col-6 mb-4">
            <div class="card product-two h-100 shadow-lg">
                <div class="card-body">
                <div class="p-3">
                <div class="feature-icon">
                    <img src="<?php echo get_template_directory_uri(); ?>/icons/office-building.svg" class="step step3">
                </div>
                    <h2 class="fw-bold lh-base fs-4"><?php echo $titoloBox2 ?></h2>
                </div>
                </div>
                <ul class="list-group list-group-flush">
                <?php 

if( have_rows('lista_mercato_corporate') ):

    while( have_rows('lista_mercato_corporate') ) : the_row();

    $voceMercatoCorporate = get_sub_field('voce_mercato_corporate');

?>
                <li class="list-group-item"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
                    <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
                </svg> <?php echo $voceMercatoCorporate ?></li>
                <?php 

endwhile; 
endif;

endwhile; 
endif;

?>
                </ul>
            </div>
        </div>

        
    </div>

</div>
<!-- Prodotti - end -->