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
    var formValues = getNewPatientFormValues();
  }

  var getNewPatientFormValues = function(){
    var formValues = new Object();
    formValues.firstName = $('#first_name').val();
    formValues.lastName = $('#last_name').val();
    formValues.email = $('#email').val();
    formValues.phone = $('#phone').val();
    formValues.address = $('#address').val();
    return formValues;
  }

  return {
    init: init
  }
}());
