<?php 

    $args = array(  
        'post_type' => 'rassegna_stampa',
        'post_status' => 'publish',
        'posts_per_page' => 10,  
        'order' => 'ASC', 
    );

    $char_limit = 80; //character limit

?>

<!-- Rassegna stampa - start -->
<div class="owl-carousel owl-theme owl-loaded">
    <div class="owl-stage-outer">
        <div class="owl-stage rassegna-stampa">

    <?php

        $loop = new WP_Query( $args ); 
        while ( $loop->have_posts() ) : $loop->the_post(); 

        $content = $post->post_content; //contents saved in a variable
    
    ?>

        <div class="owl-item" style="min-height: 220px;">
            <p class="title-rs"><?php the_title(); ?></p>
            <div class="text-rs"><?php echo substr(strip_tags($content), 0, $char_limit); ?> ...</div>
        </div>

    <?php
    
        endwhile;
        wp_reset_postdata(); 
    
    ?>

</div>
    </div>
</div>
<!-- Rassegna stampa - end -->