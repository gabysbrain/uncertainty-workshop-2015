
$(document).ready(function() {
  var t = moment();
  var times = $('.important-dates time[datetime]').each(function(i,t) {
    var dt = moment($(t).attr('datetime'));
    // i.e. dt is in the future
    if(dt.isBefore(moment())) {
      $(t).parent().addClass("time-expired");
      //$(t).addClass("time-expired");
    }
  });

});

