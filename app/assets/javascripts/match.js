
$(document).on('turbolinks:load', function(){


  $("article:nth-child(1n+2)").hide();


  $("article").first().addClass("visible").css("display", "block");


  //every time the next button is clicked, remove the current panels class of visible and apply it to the next and fade it in.
  $("button.next").on("click", function(e){
    e.preventDefault();
    $(this).closest("article").removeClass("visible").hide().next().addClass("visible").fadeIn();

  });
  // every time the prev button is clicked, remove the current panels class of visible and apply it to the prev and fade it in.
  $("button.prev").on("click", function(e){
    e.preventDefault();
    $(this).closest("article").removeClass("visible").hide().prev().addClass("visible").fadeIn();

  });

})

