$(function() {
  $('#em_thumb').click(function () {
    $('.speech-bubble').css('display', 'block');
    
  });
  $('.speech-bubble .close').click(function () {
      $('.speech-bubble').css('display', 'none');
    });
});