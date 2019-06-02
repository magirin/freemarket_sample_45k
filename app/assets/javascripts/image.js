$(function(){
  var main_image = $('.product__picture--main')
  var sub_image =   $('.product__picture--sub');
  sub_image.on("click", function(){
    main_image.css('background-color', 'green');
  });

});