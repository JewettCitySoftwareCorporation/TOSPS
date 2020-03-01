var hourHand = $('.timer .hour'),
    minuteHand = $('.timer .min'),
    secondHand = $('.timer .sec');
var secondHandFullCircles = 0;


// update time
setInterval(updateTime, 1000);


// time
function updateTime() {
  var timeNow = new Date(),
      seconds = timeNow.getSeconds(),
      minutes = timeNow.getMinutes(),
      hours = timeNow.getHours();

  if (seconds === 0) secondHandFullCircles++;
  seconds += (secondHandFullCircles * 60);
  
  if(hours == 0 && minutes == 0) updateDate();
  
  TweenMax.to(hourHand, .8, {rotation: 30 * hours, ease: Elastic.easeOut});
  TweenMax.to(minuteHand, .8, {rotation: 6 * minutes, ease: Elastic.easeOut});
  TweenMax.to(secondHand, .8, {rotation: 6 * seconds, ease: Elastic.easeOut});
  
  $('#time').html(addZero(hours) + ':' + addZero(minutes));
}


// date
function updateDate() {
  var timeNow = new Date(),
      locale = 'pt-pt',
      day = addZero(timeNow.getDate()),
      month = timeNow.toLocaleString(locale, {month: 'short'}),
      year = timeNow.getFullYear();

  $('.day').html(day);
  $('.month').html(month);
  $('.year').html(year);
}


// add zero
function addZero(num) {
  return (num >= 0 && num < 10) ? "0" + num : num + "";
}