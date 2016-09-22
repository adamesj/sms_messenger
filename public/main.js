$(document).ready(function(){
//Character count
  $("#msg_box").on("keyup", function() {
    console.log("keyup happened");
    var charCount = $("#msg_box").val().length;
    console.log(charCount);
    $("#char-count").html('Word count: '+charCount);
    if(charCount > 200) {
 $("#char-count").css("color", "red");
 } else {
 $("#char-count").css("color", "black");}
});
});

// Tooltip for phone number format
$(function() {
  $('[data-toggle="tooltip"]').tooltip({
    html: true,
    title: 'Any of the following formats are accepted: 555-5555 555.5555 5555555'
  });
});

// Submit button
function validateForm() {
  var x = document.forms["message_form"]["msg_box"].value;
  if (x == null || x == "") {
    alert("You cannot send an empty message!");
    return false;
  }
}