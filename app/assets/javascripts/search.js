$(document).on('turbolinks:load', function() {

  $(".dropdown-toggle").click(function() {
     $(this).siblings(".dropdown-menu").slideToggle("fast", function() {
      $(this).parent(".dropdown").siblings(".dropdown").children(".dropdown-menu").slideUp("fast")
     });
  });

});