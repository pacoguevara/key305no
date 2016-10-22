var Patient;
Patient = (function(){
  'use strict';
  var init = function(){
    bind();
  }

  var bind = function(){
    $('.modal-trigger').leanModal();
  }

  return {
    init: init
  }
}());
