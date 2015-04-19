jQuery(document).ready(function(){

  /* ---------------------------------------------------------------------- */
  /*  Custom Functions
  /* ---------------------------------------------------------------------- */

  // Needed variables
  var $logo = $('#logo');

  $logo.show();

  /* ---------------------------------------------------------------------- */
  /*  Menu
  /* ---------------------------------------------------------------------- */

  // Needed variables
  var $content = $("#content");

  // Hover menu effect
  $content.find('.tabs li a').hover(
      function() {
        $(this).stop().animate({ marginTop: "-7px" }, 200);
      },function(){
        $(this).stop().animate({ marginTop: "0px" }, 300);
      }
      );
});
