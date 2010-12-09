// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready( function() {
  $("div.question.radiobuttonlist").click( function() {

    if($(this).is(':checked'))  {
        $(this).parent().parent().parent().find('.selected').removeClass('selected');
        $(this).parent().addClass('selected');
    }

  });
});
