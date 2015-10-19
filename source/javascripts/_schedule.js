

$(document).ready(function() {
  // Update the scedule table to mark rows as expired
  var timeCells = $('.schedule tbody tr > td:first-child');
  var now = moment();
  timeCells.each(function(i, td) {
    var times = $(td).find('time[datetime]');
    // Just to check
    if(times.length == 2) {
      parsedTimes = times.map(function(i,t) {
        return moment($(t).attr('datetime'));
      });
      // The in-progress talk
      if(now.isBetween(parsedTimes[0], parsedTimes[1])) {
        // Add a class to this row
        $(td).parent('tr').addClass('current-talk');

        // scroll to this row
        $('html body').animate({
          scrollTop: $(td).offset().top + 'px'
        }, 400);
      }
    }
  });
});

