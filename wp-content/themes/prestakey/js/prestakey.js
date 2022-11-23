( function( $ ) {

    var mainMenuContainer = $('.main-menu-container');
    var liMainMenu = $('ul li.menu-item', mainMenuContainer);

    var wWidth = $(window).width();
    var w = wWidth;

    //console.log(w);

    if ( w >= 1440 ) {

        $(mainMenuContainer).css({'width':'69px','position':'fixed','top':'0','left':'0','height':'100%','transition': '.5s ease-in-out'});

    } else {

        $(mainMenuContainer).css({'width':'69px','position':'fixed','top':'0','left':'-69px','height':'100%','transition': '.5s ease-in-out'});

    }

    //var mainMenuContainerW = $(mainMenuContainer).width();

    if( $(mainMenuContainer).width('69') ){
        $(mainMenuContainer).find('a.nav-link').css({'font-size':'11px','text-align':'center'});
        $(mainMenuContainer).find('img.icon-menu').css({'margin-right':'0px'});
        $('#riduci_menu').css({'text-align':'center','font-size':'11px', 'padding':'10px 10px 10px 10px'});
        $('#riduci_menu img').css({'margin-right':'0px'});
    }

    if ( w >= 1440 ) {

        $('#riduci_menu').click(function(){
            if( $(mainMenuContainer).width('69') ){
                $(mainMenuContainer).css({'margin-left':'-69px', 'transition':'all 0.5s ease-in-out 0s'});
                $('#nav-icon0,#nav-icon1,#nav-icon2,#nav-icon3,#nav-icon4').addClass('open');
            } else {
                $(mainMenuContainer).css({'margin-left':'-280px', 'transition':'all 1s ease-in-out 0s'});
                $('#nav-icon0,#nav-icon1,#nav-icon2,#nav-icon3,#nav-icon4').addClass('open');
            }
        });

        $('#nav-icon0,#nav-icon1,#nav-icon2,#nav-icon3,#nav-icon4').click(function(){
            
            $(this).toggleClass('open');

            if ( $(this).hasClass('open')  ) {
                $(mainMenuContainer).css({'width':'280px', 'margin-left':'0'});
                $(mainMenuContainer).find('a.nav-link').css({'font-size':'14px','text-align':'left'});
                $('#riduci_menu').css({'text-align':'left','font-size':'14px', 'padding':'10px 15px 10px 15px'});
                $(mainMenuContainer).find('img.icon-menu').css({'margin-right':'15px'});
                $('#riduci_menu img').css({'margin-right':'15px'});
                setTimeout(function(){
                    //console.log( $('.main-menu-container').width() );
                    myMainMenuControl();
                }, 100);
            } else {
                //console.log('no-open');
                $(mainMenuContainer).css({'width':'69px','margin-left':'0'});
                setTimeout(function(){
                    $(mainMenuContainer).find('a.nav-link').css({'font-size':'11px','text-align':'center'});
                    $(mainMenuContainer).find('img.icon-menu').css({'margin-right':'0px'});
                    $('#riduci_menu').css({'text-align':'center','font-size':'11px', 'padding':'10px 10px 10px 10px'});
                    $('#riduci_menu img').css({'margin-right':'0'});
                }, 300);

                setTimeout(function(){
                    myMainMenuControl();
                }, 500);
            } 

        });

    } else {

        $('#nav-icon0,#nav-icon1,#nav-icon2,#nav-icon3,#nav-icon4').click(function(){
            
            $(this).toggleClass('open');

            if ( $(this).hasClass('open')  ) {
                $(mainMenuContainer).css({'width':'280px', 'margin-left':'+69px'});
                $(mainMenuContainer).find('a.nav-link').css({'font-size':'14px','text-align':'left'});
                $('#riduci_menu').css({'text-align':'left','font-size':'14px', 'padding':'10px 15px 10px 15px'});
                $(mainMenuContainer).find('img.icon-menu').css({'margin-right':'15px'});
                $('#riduci_menu img').css({'margin-right':'15px'});
                setTimeout(function(){
                    //console.log( $('.main-menu-container').width() );
                    myMainMenuControl();
                }, 100);
            } else {
                //console.log('no-open');
                $(mainMenuContainer).css({'width':'69px','margin-left':'0'});
                setTimeout(function(){
                    $(mainMenuContainer).find('a.nav-link').css({'font-size':'11px','text-align':'center'});
                    $(mainMenuContainer).find('img.icon-menu').css({'margin-right':'0px'});
                    $('#riduci_menu').css({'text-align':'center','font-size':'11px', 'padding':'10px 10px 10px 10px'});
                    $('#riduci_menu img').css({'margin-right':'0'});
                }, 300);

                setTimeout(function(){
                    myMainMenuControl();
                }, 500);
            } 

        });

    }

    function myMainMenuControl(){
        //console.log('sto eseguendo la funzone');
        var mainMenuContainerW = $('.main-menu-container').width();
        //console.log(mainMenuContainerW);
        $(liMainMenu).each(function(){

            if ( $(this).hasClass('home') && $(this).hasClass('current-menu-item') ){
                //console.log('bg');
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    //console.log('69');
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/home.svg" class="main-menu-home icon-menu" style="margin-right:0;"> Home');
                } else {
                    //console.log('Matteo')
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/home.svg" class="main-menu-home icon-menu"> Home');
                }
    
            } else if ( $(this).hasClass('home') ) {
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/home-black.svg" class="main-menu-home icon-menu" style="margin-right:0;"> Home');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/home-black.svg" class="main-menu-home icon-menu"> Home');
                }
    
            }
    
            if ( $(this).hasClass('privato') && $(this).hasClass('current-menu-item') ){
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/user-white.svg" class="main-menu-privato icon-menu" style="margin-right:0;"> Privato');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/user-white.svg" class="main-menu-privato icon-menu"> Sono un privato');
                }
    
            } else if ( $(this).hasClass('privato') ) {
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/user-black.svg" class="main-menu-privato icon-menu" style="margin-right:0;"> Privato');
            } else {
                var linkMainMenu = $(this).find('a.nav-link');
                $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/user-black.svg" class="main-menu-privato icon-menu"> Sono un privato');    
            }
    
            }
    
            if ( $(this).hasClass('azienda') && $(this).hasClass('current-menu-item') ){
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/company-white.svg" class="main-menu-company icon-menu" style="margin-right:0;"> Azienda');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/company-white.svg" class="main-menu-company icon-menu"> Sono un\'azienda');
                }
    
            } else if ( $(this).hasClass('azienda') ) {
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/company-black.svg" class="main-menu-company icon-menu" style="margin-right:0;"> Azienda');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/company-black.svg" class="main-menu-company icon-menu"> Sono un\'azienda');
                }
    
            }

            if ( $(this).hasClass('faq') && $(this).hasClass('current-menu-item') ){
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/faq-white.svg" class="main-menu-company icon-menu" style="margin-right:0;"> FAQ');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/faq-white.svg" class="main-menu-company icon-menu"> FAQ');
                }
    
            } else if ( $(this).hasClass('faq') ) {
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/faq-black.svg" class="main-menu-company icon-menu" style="margin-right:0;"> FAQ');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/faq-black.svg" class="main-menu-company icon-menu"> FAQ');
                }
    
            }

            if ( $(this).hasClass('contatti') && $(this).hasClass('current-menu-item') ){
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/contact-white.svg" class="main-menu-company icon-menu" style="margin-right:0;"> Contatti');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/contact-white.svg" class="main-menu-company icon-menu"> Contatti');
                }
    
            } else if ( $(this).hasClass('contatti') ) {
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/contact-black.svg" class="main-menu-company icon-menu" style="margin-right:0;"> Contatti');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/contact-black.svg" class="main-menu-company icon-menu"> Contatti');
                }
    
            }

            if ( $(this).hasClass('banca') && $(this).hasClass('current-menu-item') ){
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/bank-white.svg" class="main-menu-company icon-menu" style="margin-right:0;"> Banca?');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/bank-white.svg" class="main-menu-company icon-menu"> Sei una banca?');
                }
    
            } else if ( $(this).hasClass('banca') ) {
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/bank-black.svg" class="main-menu-company icon-menu" style="margin-right:0;"> Banca?');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/bank-black.svg" class="main-menu-company icon-menu"> Sei una banca?');
                }
    
            }

            if ( $(this).hasClass('chi-siamo') && $(this).hasClass('current-menu-item') ){
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/group-white.svg" class="main-menu-company icon-menu" style="margin-right:0; width:26px;"> Noi');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/group-white.svg" class="main-menu-company icon-menu"> Chi siamo');
                }
    
            } else if ( $(this).hasClass('chi-siamo') ) {
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/group-black.svg" class="main-menu-company icon-menu" style="margin-right:0;width:26px;"> Noi');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/group-black.svg" class="main-menu-company icon-menu"> Chi siamo');
                }
    
            }

            if ( $(this).hasClass('come-funziona') && $(this).hasClass('current-menu-item') ){
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/funziona-white.svg" class="main-menu-company icon-menu" style="margin-right:0; width:26px;"> Come?');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/funziona-white.svg" class="main-menu-company icon-menu"> Come funziona');
                }
    
            } else if ( $(this).hasClass('come-funziona') ) {
    
                if( mainMenuContainerW > 68 && mainMenuContainerW < 70 ){
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/funziona-black.svg" class="main-menu-company icon-menu" style="margin-right:0;width:26px;"> Come?');
                } else {
                    var linkMainMenu = $(this).find('a.nav-link');
                    $(linkMainMenu).html('').prepend('<img src="/wp-content/themes/prestakey/icons/funziona-black.svg" class="main-menu-company icon-menu"> Come funziona');
                }
    
            }
        
        });

    }

    myMainMenuControl();


    $('.owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:2,
                nav:false
            },
            1000:{
                items:3,
                nav:false,
                loop:false
            }
        }
    });

    var chiSei = $('.select.select-typology select#typology');

    //console.log(chiSei);

    $(function(){
        // bind change event to select
        $(chiSei).on('change', function () {

            var url = $(this).val(); // get selected value

            if (url === 'private') { // require a URL
                setTimeout(function(){
                window.location = '/sono-un-privato/'; // redirect
                }, 100);
            }

            if (url === 'company') { // require a URL
                setTimeout(function(){
                window.location = '/sono-una-azienda/'; // redirect
                }, 100);
            }

            return false;

        });
      });

}( jQuery ) );
