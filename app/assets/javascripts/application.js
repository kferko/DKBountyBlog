// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var y = 0;
$(function() {
  $("#clickmb1").click(function() {
    if (y == 0) {
    	$(".userup").delay(1000).fadeIn(1000);
    	$(".postcontainer,.commentcontainer,.userin,.userlist").fadeOut(1000);
    	$(".cm1").toggleClass("ot1-anim");
    	$(".cm2").toggleClass("ot2-anim");
    	$(".cm3").toggleClass("ot3-anim");
    	$(".cm4").toggleClass("ot4-anim");
      	y = 1;
    } else {
    	$(".userup").fadeOut(1000);
    	$(".cm1, .cm2, .cm3, .cm4").delay(2000).toggleClass("ot1-reanim");
      	y = 0;
    }
  });
  var y = 0;
$(function() {
  $("#clickmb2").click(function() {
    if (y == 0) {
    	$(".userin").delay(1000).fadeIn(1000);
    	$(".postcontainer,.commentcontainer,.userup,.userlist").fadeOut(1000);
    	$(".cm1").toggleClass("ot1-anim");
    	$(".cm2").toggleClass("ot2-anim");
    	$(".cm3").toggleClass("ot3-anim");
    	$(".cm4").toggleClass("ot4-anim");
      	y = 1;
    } else {
    	$(".userin").fadeOut(1000);
    	$(".cm1, .cm2, .cm3, .cm4").delay(2000).toggleClass("ot1-reanim");
      	y = 0;
    }
  });
  var y = 0;
$(function() {
  $("#clickmb3").click(function() {
    if (y == 0) {
    	$(".userlist").delay(1000).fadeIn(1000);
    	$(".postcontainer,.commentcontainer,.userup,.userin").fadeOut(1000);
    	$(".cm1").toggleClass("ot1-anim");
    	$(".cm2").toggleClass("ot2-anim");
    	$(".cm3").toggleClass("ot3-anim");
    	$(".cm4").toggleClass("ot4-anim");
      	y = 1;
    } else {
    	$(".userlist").fadeOut(1000);
    	$(".cm1, .cm2, .cm3, .cm4").delay(2000).toggleClass("ot1-reanim");
      	y = 0;
    }
  });
var y = 0;
$(function() {
  $("#clickmb4").click(function() {
    if (y == 0) {
    	$(".postcontainer,.commentcontainer").delay(1000).fadeIn(1000);
    	$(".userup,.userin,.userlist").fadeOut(1000);
    	$(".cm1").toggleClass("ot1-anim");
    	$(".cm2").toggleClass("ot2-anim");
    	$(".cm3").toggleClass("ot3-anim");
    	$(".cm4").toggleClass("ot4-anim");
      	y = 1;
    } else {
    	$(".postcontainer,.commentcontainer").fadeOut(1000);
    	$(".cm1, .cm2, .cm3, .cm4").delay(2000).toggleClass("ot1-reanim");
      	y = 0;
    }
  });
});
});
});
});
// $("#img1").on('click', function() {
//    $("#div1").fadeIn();
//    $("#div2,#div3,#div4").fadeOut();
// });