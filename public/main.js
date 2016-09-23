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

// Submit button verification
function validateForm() {
  var x = document.forms["message_form"]["msg_box"].value;
  var charCount = $("#msg_box").val().length;
  if (x == null || x == "") {
    alert("You cannot send an empty message!");
    return false;
  }
  else if (charCount > 200) {
    alert("Exceeded message limit!");
    return false;
 }
}

// Telephone number formatting
$(function(){
  $("#tel_input").mask("(999) 999-9999");
});