$(document).on("change", "#selected", function(event){
  var cost = $(event.target).data('cost');
  $("#result_div").html(cost);
  // maybe add to total etc.
});