$(document).ready(function() {

  $(".dropdown-toggle").click(function() {
     $(this).siblings(".dropdown-menu").slideToggle("fast");
  });

});