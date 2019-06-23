$(document).on('turbolinks:load', function() {

    $.LoadingOverlaySetup({
      background: "rgba(255, 255, 255, 0.6)",
    });
    
    $(document).ajaxStart(function(e, xhr, options){
      $.LoadingOverlay("show");
    });
  
    $(document).ajaxStop(function(){
      $.LoadingOverlay("hide");
    });
});