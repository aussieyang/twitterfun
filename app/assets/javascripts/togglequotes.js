$(function() {
  // grabbing the section corresponding to the button
  // on btn click, show the section
  $('#btn-quote').on('click', function(){
    $('.stuff').hide();
    $('#quote').show();
  });
  $('#btn-chuck').on('click', function(){
    $('.stuff').hide();
    $('#chuck').show();
  });
  $('#btn-cat').on('click', function(){
    $('.stuff').hide();
    $('#catfact').show();
  });
})
