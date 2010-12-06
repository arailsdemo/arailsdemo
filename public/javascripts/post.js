$(function(){
  $('.section:last').after('<a href="#">Add another section<a/><br/>');

  $('a[href=#]').click(function(){
    $(this).before($('.section:last').clone());

    $('.section:last label').each(function(){
      var labelFor = $(this).attr('for');
      $(this).attr('for', labelFor + '1');
    })

    $('.section:last input, .section:last textarea, .section:last select').each(function(){
      var inputID = $(this).attr('id');
      var inputName = $(this).attr('name');      
      var splitName = inputName.split(/\]\[/);
      
      splitName[1] = parseInt(splitName[1], 10) + 1;
      $(this).attr('name', splitName.join("]["));
      $(this).attr('id', inputID + '1');
      
      if ($(this).is('input')){
        $(this).removeAttr("value");        
      } else if ($(this).is('textarea')) {
        $(this).html("");
      }
    });

    $('.section:last input[type=hidden]').remove();

    return false;
  });
})