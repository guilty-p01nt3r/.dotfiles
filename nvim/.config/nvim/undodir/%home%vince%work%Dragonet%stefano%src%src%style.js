Vim�UnDo� ���Y��FS���Ca�*�E���}����ř�   �   import Swiper from 'swiper';            	       	   	   	    e��Y   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             e�&�    �               �   import Swiper from 'swiper';       jQuery(function() {   Y    // Rileva le modifiche alle dimensioni della finestra e aggiorna il percorso del logo   '    $(window).on('resize', function() {   ,        var windowWidth = $(window).width();   "        if (windowWidth >= 1440) {   Z          $('.img-container.pro .card-img img').attr('src', '/images/products/pro-lg.png')   b          $('.img-container.starter .card-img img').attr('src', '/images/products/starter-lg.png')           } else {   \          $('.img-container.pro .card-img img').attr('src', '/images/products/FRONTALE.png')   b          $('.img-container.starter .card-img img').attr('src', '/images/products/FRONTALE_S.png')   	        }       !        if (windowWidth <= 767) {   L            $('#logo-menu').attr('src', '/images/header/black-logo-sm.png');           } else {   L            $('#logo-menu').attr('src', '/images/header/black-logo-md.png');   	        }                      });       A    // Eseguire la funzione una volta al caricamento della pagina        $(window).trigger('resize');       '    $('#bars').on('click', function() {   7        $('.side-menu').removeClass('translate-x-full')       });   2    $('#close_side_menu').on('click', function() {   5        $('.side-menu').addClass('translate-x-full');       });       0    $('button.starter').on('click', function() {   /        $('button.starter').addClass('active');   .        $('button.pro').removeClass('active');       });           $       ,    $('button.pro').on('click', function() {   +        $('button.pro').addClass('active');   2        $('button.starter').removeClass('active');       });           new Swiper("#swiper_1", {           spaceBetween: 0,           slidesPerView: 1.5,           centeredSlides: true,           loop: false,            nextEl: "button.starter"       });       H    const swiperProducts = (document.getElementById('swiper_1').swiper);       M    document.getElementById('btn-pro').addEventListener('click', function() {   "        swiperProducts.slideTo(0);       });       Q    document.getElementById('btn-starter').addEventListener('click', function() {   "        swiperProducts.slideTo(1);       });       2    swiperProducts.on('slideChange', function(e) {   "        if (e.activeIndex === 0) {   /            $('button.pro').addClass('active');   6            $('button.starter').removeClass('active');           } else {   3            $('button.starter').addClass('active');   2            $('button.pro').removeClass('active');   	        }       });       ,    var swiper_2 = new Swiper('#swiper_2', {           spaceBetween: 0,           slidesPerView: 1.8,           centeredSlides: true,           loop: true,           });       ,    var swiper_3 = new Swiper('#swiper_3', {           spaceBetween: 10,           slidesPerView: 1.1,           centeredSlides: true,           loop: true,               breakpoints:{             0: {               slidesPerView: 1.1,             },             768: {               slidesPerView: 1.4,             },             1440: {               slidesPerView: 3,               initialSlide: 1,               loop: false,             },       
        },       });   });       "export function responsiveLogo() {   /    var logo = document.getElementById("logo");   #    if (window.innerWidth <= 767) {   0        logo.src = "/images/header/logo-sm.png";   +    } else if (window.innerWidth <= 1439) {   0        logo.src = "/images/header/logo-md.png";       } else {   0        logo.src = "/images/header/logo-lg.png";       }   }   %window.responseLogo = responsiveLogo;       0window.addEventListener('load', responsiveLogo);           9// open/close the menu when the user clicks on the button    export function toggleMenu(el) {   /    const dw = el.closest('.dropdown-wrapper');   6    const menus = dw.getElementsByClassName('lingue');   5    const menu = menus?.length > 0 ? menus[0] : null;   ,    if (menu.classList.contains('hidden')) {   (        menu.classList.remove('hidden');       } else {   %        menu.classList.add('hidden');       }   }           5// close the menu when the user clicks outside of it    "window.onclick = function(event) {   O    var dropdownWrappers = document.getElementsByClassName('dropdown-wrapper');   3    for (let dropdownWrapper of dropdownWrappers) {   6        if (!dropdownWrapper.contains(event.target)) {   K            const menus = dropdownWrapper.getElementsByClassName('lingue');   =            const menu = menus?.length > 0 ? menus[0] : null;   5            if (!menu.classList.contains('hidden')) {   -                menu.classList.add('hidden');               }   	        }       }   }       *window.addEventListener('resize', resize);       export function resize() {   *    var screenHeight = window.innerHeight;   (    var screenWidth = window.innerWidth;   4    var div = document.getElementById('dinamic_bg');   +    div.style.height = screenHeight + 'px';   )    div.style.width = screenWidth + 'px';   }       window.resize = resize;       -resize(); // Run once to set the initial size5�5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e�Ŕ    �          �      import Swiper from 'swiper';�         �    5��                                              5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             e�Ś    �          �      .import Swiper from 'https://cdn.skypack.dev/';5��        +                  +                      5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             e�ž    �          �      -import Swiper from 'https://cdn.skypack.dev';5��        +                  +                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��    �          �      4import Swiper from 'https://cdn.skypack.dev/swiper';�         �    5��                      ;                 ;       5�_�                       :    ����                                                                                                                                                                                                                                                                                                                               K          K       v   K    e�Ƌ    �          �      Qimport Swiper from 'https://unpkg.com/browse/swiper@11.0.5/swiper-bundle.min.js';5��        :                  :                      5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                         9       v   9    e��t     �          �      <import Swiper from 'https://unpkg.com/browse/swiper@11.0.5';5��        &                  &                      5�_�      	                 &    ����                                                                                                                                                                                                                                                                                                                                         9       v   9    e��u    �          �      6import Swiper from 'https://unpkg.com//swiper@11.0.5';5��        &                  &                      5�_�                  	          ����                                                                                                                                                                                                                                                                                                                                         2       v   2    e��X   	 �         �    �         �    5��                          6               :       5��