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
      if ( $(this).scrollTop() > 100 ) {
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
});