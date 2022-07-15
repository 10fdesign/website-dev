$.fn.disableScroll = function() {
    window.oldScrollPos = $(window).scrollTop();

    $(window).on('scroll.scrolldisabler',function ( event ) {
       $(window).scrollTop( window.oldScrollPos );
       event.preventDefault();
    });
};

$.fn.enableScroll = function() {
    $(window).off('scroll.scrolldisabler');
};

$(document).ready( function () {
  $(window).scroll( function (e) {
    if (!$("body").hasClass("menu-open")) {
      if ( $(this).scrollTop() > 40 ) {
        $("body").addClass("scrolled");
      } else {
        $("body").removeClass("scrolled");
      }
    }
  });

  $('label.menu-toggle.menu-toggle-open').click(function() {
    $("body").addClass("menu-open");
    $("body").disableScroll();
  });

  $('label.menu-toggle.menu-toggle-close').click(function() {
    $("body").removeClass("menu-open");
    $("body").enableScroll();
  });

  initializeSlider();
});

function initializeSlider() {
  var index = 0;
  var last_time = new Date();
  var cards = $('.card:not(.hidden-card)');
  for ( let i = 0; i < cards.length; i++ ) {
    index += 1;
    $(cards[i]).delay( index * 150 ).queue( function () {
      $(this).addClass( "card-visible" );
      var new_time = new Date();
      last_time = new_time;
    });
  }
  $(".testimonials-slider").slick({
    fade: false,
    autoplay: true,
    dots: true,
    speed: 200,
    autoplaySpeed: 5000,
    cssEase: 'linear',
    prevArrow: '<button type="button" class="slick-prev"><i class="icofont-simple-left"></i></button>',
    nextArrow: '<button type="button" class="slick-next"><i class="icofont-simple-right"></i></button>',
  });
}