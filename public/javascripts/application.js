// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){
  
  $('.datepicker').datepicker({  
    duration: '',  
    showTime: true,  
    constrainInput: false,  
    stepMinutes: 15,  
    stepHours: 1,  
    altTimeField: '',  
    time24h: false  
  });  
  
});
