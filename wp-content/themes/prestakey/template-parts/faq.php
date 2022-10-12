<?php 

$f = 0;

if ( is_post_type_archive('faq') ) {
  $f = 50;
} else {
  $f = 5;
}

    $args = array(  
        'post_type' => 'faq',
        'post_status' => 'publish',
        'posts_per_page' => $f,  
        'order' => 'ASC', 
    );

?>

<!-- Faq - start -->
<div class="accordion accordion-flush" id="accordionFlushExample">

    <?php

        $loop = new WP_Query( $args ); 
        while ( $loop->have_posts() ) : $loop->the_post(); 
    
    ?>

  <div class="accordion-item mb-2">
    <h2 class="accordion-header" id="flush-heading<?php echo $post->ID ?>">
      <button class="accordion-button collapsed fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse<?php echo $post->ID ?>" aria-expanded="false" aria-controls="flush-collapse<?php echo $post->ID ?>">
        <?php the_title(); ?>
      </button>
    </h2>
    <div id="flush-collapse<?php echo $post->ID ?>" class="accordion-collapse collapse" aria-labelledby="flush-heading<?php echo $post->ID ?>" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body lh-base"><?php the_content(); ?></div>
    </div>
  </div>

    <?php
    
        endwhile;
        wp_reset_postdata(); 
    
    ?>

</div>
<!-- Faq - end -->