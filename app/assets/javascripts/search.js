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

  // $("body").on('click', "#all-pets-container", function() {

  //   alert("body on click all-pets-container loaded")

  //   $(this).children(".card").each(function() {

  //     if ($(this).children(".pet-name").text().length > 60) {
  //       $(this).children(".pet-name").css("font-size", "0.8rem")

  //     } else if ($(this).children(".pet-name").text().length > 50) {
  //       $(this).children(".pet-name").css("font-size", "0.9rem")

  //     } else if ($(this).children(".pet-name").text().length > 40) {
  //       $(this).children(".pet-name").css("font-size", "1rem")

  //     } else if ($(this).children(".pet-name").text().length > 30) {
  //       $(this).children(".pet-name").css("font-size", "1.5rem")

  //     } else {
  //       $(this).css("font-size", "2rem")
  //     }
  //   })
  // })
});
