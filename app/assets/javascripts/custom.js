$(document).on("change", "#username", function(event){
  var cost = $(event.target).data('username');
  $("#username").html(username);
  // maybe add to total etc.
});