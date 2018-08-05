// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){

  $(".card").each(function(index) {

    console.log($(this).children(".pet-name").text().length)

    if ($(this).children(".pet-name").text().length > 60) {
      $(this).children(".pet-name").css("font-size", "0.8rem")

    } else if ($(this).children(".pet-name").text().length > 50) {
      $(this).children(".pet-name").css("font-size", "0.9rem")

    } else if ($(this).children(".pet-name").text().length > 40) {
      $(this).children(".pet-name").css("font-size", "1rem")

    } else if ($(this).children(".pet-name").text().length > 30) {
      $(this).children(".pet-name").css("font-size", "1.5rem")

    } else {
      $(this).css("font-size", "2rem")
    }
  })
});