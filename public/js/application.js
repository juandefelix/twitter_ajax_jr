$(document).ready(function() {

  var divs1 = $("#player1 div")
  var divs2 = $("#player2 div")


  $(window).keyup(function() {
    console.log("I'm here");

    var old = divs1.filter('.active');
    var current;

    current = old.next(); // important the '()'
    old.removeClass('active');
    current.addClass('active');
  });
});
