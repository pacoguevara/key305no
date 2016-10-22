var Patient;
Patient = (function(){
  'use strict';
  var init = function(){
    bind();
  }

  var bind = function(){
    $('.modal-trigger').leanModal();
    $('#save-new-patient').click(hdlSaveNewPatient);
  }

  var hdlSaveNewPatient = function(){
    var firstName = $('#first_name').val();
    var lastName = $('#last_name').val();
    var email = $('#email').val();
    var phone = $('#phone').val();
    var address = $('#address').val();
    console.log(firstName+lastName+email+phone+address);
  }

  return {
    init: init
  }
}());
