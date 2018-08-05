$(document).on('turbolinks:load', function() {

  $("body").on('click', ".dropdown-toggle", function() {
     $(this).siblings(".dropdown-menu").slideToggle("fast", function() {
      $(this).parent(".dropdown").siblings(".dropdown").children(".dropdown-menu").slideUp("fast")
     });
  });

  $("body").on('click', ".dropdown-item", function() {
    if ($(this).children("input").is(":checked")) {
      $(this).children("input").prop('checked', false)
    } else {
      $(this).children("input").prop('checked', true)
    }
  });

  $("body").on('click', "input", function() {
    if ($(this).is(":checked")) {
      $(this).prop('checked', false)
    } else {
      $(this).prop('checked', true)
    }
  });

});
