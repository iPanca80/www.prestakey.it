
<!-- Sidenav - start -->
<div class="main-menu-container d-flex flex-column flex-shrink-0 bg-light">

    <?php
      wp_nav_menu( array( 
        'theme_location' => 'main-menu',
        'container' => 'div',
        'container_class' => '',
        'menu_class' => 'nav nav-pills flex-column mb-auto',
        'menu_id' => '',
        'list_item_class' => 'nav-item',
        'add_a_class' => 'nav-link',
      ) ); 
    ?>

<div id="riduci_menu">
  <img src="<?php echo get_template_directory_uri(); ?>/icons/back.svg">Nascondi
</div>

</div>

<!-- Sidenav - end -->