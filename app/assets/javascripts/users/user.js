var User;

User = (function(){
  'use strict';

  var url = '/api/users/';

  var newPatient = function(params, scs, err){
    params.role = 'patient'
		$.ajax({
      type : "POST",
      url : url,
      dataType : "json",
			data: params,
      success : scs,
      error : err
    });
  }

  return {
    newPatient: newPatient
  }
}());
