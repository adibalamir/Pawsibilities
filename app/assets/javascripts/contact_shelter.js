# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function(){

  function validateForm() {
    var isValid = true;
    $('.form-field').each(function() {
      if ( $(this).val() === '' )
          isValid = false;
    });
    return isValid;
  }

  $("contact-submit").submit(function( event ) {
    if(validateForm())
      return;
    else event.preventDefault();
  });

})