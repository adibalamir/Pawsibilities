$(document).on('turbolinks:load', function() {

  $("body").on('click', ".dropdown-toggle", function() {
     $(this).siblings(".dropdown-menu").slideToggle("fast", function() {
      $(this).parent(".dropdown").siblings(".dropdown").children(".dropdown-menu").slideUp("fast")
     });
  });

  $(".dropdown-item").click(function() {
    if ($(this).children("input").is(":checked")) {
      $(this).children("input").prop('checked', false)
    } else {
      $(this).children("input").prop('checked', true)
    }
  });

});
