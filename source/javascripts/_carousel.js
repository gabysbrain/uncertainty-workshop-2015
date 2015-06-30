
//= require slick

$(document).ready(function () {
  // start on a random image
  var numImgs = $('.carousel div').length;
  var startNum = Math.floor(Math.random() * Math.max(0, numImgs-2)) + 1;
  $('.carousel').slick({
    infinite: true,
    dots: true,
    initialSlide: startNum,
    //slidesToShow: 1,
    //centerMode: true,
    variableWidth: true
  });
});

