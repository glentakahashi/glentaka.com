jQuery(document).ready(function(){

  /* ---------------------------------------------------------------------- */
  /*  Custom Functions
  /* ---------------------------------------------------------------------- */

  // Needed variables
  var $logo = $('#logo');

  // Show logo
  $('.tab-resume,.tab-portfolio,.tab-stack').click(function() {
    $logo.fadeIn('slow');
  });
  // Hide logo
  $('.tab-about').click(function() {
    $logo.fadeOut('slow');
  });

  // Show logo if landing on about page
  var hash = window.location.hash.substr(1);
  if(hash.length > 0 && hash != "about") {
    $("#logo").show();
  }

  /* ---------------------------------------------------------------------- */
  /*  Menu
  /* ---------------------------------------------------------------------- */

  // Needed variables
  var $content = $("#content");

  // Run easytabs
  $content.easytabs({
    animate         : true,
    updateHash      : true,
    transitionIn    :'slideDown',
    transitionOut   :'slideUp',
    animationSpeed  :600,
    tabs            :".tmenu",
    tabActiveClass  :'active',
  });

  // Hover menu effect
  $content.find('.tabs li a').hover(
      function() {
        $(this).stop().animate({ marginTop: "-7px" }, 200);
      },function(){
        $(this).stop().animate({ marginTop: "0px" }, 300);
      }
      );

  /* ---------------------------------------------------------------------- */
  /*  Portfolio
  /* ---------------------------------------------------------------------- */

  // Needed variables
  var $container = $('#portfolio-list');
  var $filter = $('#portfolio-filter');

  // Run Isotope
  $container.isotope({
    filter            : '*',
    layoutMode        : 'masonry',
    animationOptions  : {
      duration        : 750,
      easing          : 'linear'
    }
  });

  // Isotope Filter
  $filter.find('a').click(function(){
    var selector = $(this).attr('data-filter');
    $container.isotope({
      filter            : selector,
      animationOptions  : {
        duration      : 750,
        easing        : 'linear',
        queue         : false,
      }
    });
    return false;
  });

  // Copy categories to item classes
  $filter.find('a').click(function() {
    var currentOption = $(this).attr('data-filter');
    $filter.find('a').removeClass('current');
    $(this).addClass('current');
  });

});
