$(document).ready(function(){
  $('.update_attr').click(function(){
    var v = $(this).parent().prev().children(":first").val();
    this.href = this.href.replace(/([^=]*)$/, v);
  });
});