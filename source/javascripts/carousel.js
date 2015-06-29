
//= require slick

$(document).ready(function () {
  // start on a random image
  var numImgs = $('.carousel div').length;
  $('.carousel').slick({
    infinite: true,
    dots: true,
    initialSlide: Math.floor(Math.random() * numImgs),
    slidesToShow: 1,
    //centerMode: true,
    variableWidth: true
  });
});

