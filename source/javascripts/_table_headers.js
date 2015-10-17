
$(document).ready(function() {
  var header = $('table > thead > tr > th').map(function(i,x) {
    return $(x).text();
  });
  // add a data-th element to all normal calls in the table
  $('table > tbody > tr').each(function(ri, rr) {
    $(rr).find('td').attr('data-th', function(i) {
      return header[i];
    });
  });
});

