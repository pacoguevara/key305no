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
    User.newPatient(formValues,
      function(){console.log(response);},
      function(){console.log("Ocurrió un error");}
    )
  }

  var getNewPatientFormValues = function(){
    var formValues = new Object();
    formValues.first_name = $('#first_name').val();
    formValues.last_name = $('#last_name').val();
    formValues.email = $('#email').val();
    formValues.phone = $('#phone').val();
    formValues.address = $('#address').val();
    return formValues;
  }

  return {
    init: init
  }
}());
