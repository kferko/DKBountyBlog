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
// if (top.location.pathname === '/'){
//       window.onload = function () {
//           $(".lightup").delay(1000).fadeIn(300);
//           $(".hovertop").delay(1600).fadeIn(500);
//           $(".hoverbottom").delay(1600).fadeIn(500);
//           $(".optics").delay(2000).fadeIn(500);
//           // $(".cm1").delay(5300).addClass("ot1-anim");
//           setTimeout(function(){
//             $(".cm1").toggleClass("ot1-anim");
//             $(".cm2").toggleClass("ot2-anim");
//             $(".cm3").toggleClass("ot3-anim");
//             $(".cm4").toggleClass("ot4-anim");
//            }, 3000);
//           $(".postcontainer").delay(4000).fadeIn(500);
//           $(".posthomedc").delay(4000).fadeIn(500);
//           $(".userdisplaycontainer").delay(4000).fadeIn(500);
//           $(".commentaddition").delay(4300).fadeIn(500);
//           $(".commentcontainer").delay(4300).fadeIn(500);
//       }
// }

if (top.location.pathname != '/'){
      window.onload = function () {
          $(".lightup").show();
          $(".hovertop").show();
          $(".hoverbottom").show();
          $(".optics").show();
          // $(".cm1").delay(5300).addClass("ot1-anim");
          setTimeout(function(){
            $(".cm1").toggleClass("ot5-anim");
            $(".cm2").toggleClass("ot6-anim");
            $(".cm3").toggleClass("ot7-anim");
            $(".cm4").toggleClass("ot8-anim");
           }, 1000);
          $(".postcontainer").delay(1200).fadeIn(1000);
          $(".posthomedc").delay(1200).fadeIn(1000);
          $(".userdisplaycontainer").delay(1200).fadeIn(1000);
          $(".commentaddition").delay(1400).fadeIn(1000);
          $(".commentcontainer").delay(1400).fadeIn(1000);
      }
}



// window.onload = function () {
//     $(".lightup").delay(1000).fadeIn(300);
//     $(".hovertop").delay(1600).fadeIn(500);
//     $(".hoverbottom").delay(1600).fadeIn(500);
//     $(".optics").delay(2000).fadeIn(500);
//     // $(".cm1").delay(5300).addClass("ot1-anim");
//     setTimeout(function(){
//       $(".cm1").toggleClass("ot1-anim");
//       $(".cm2").toggleClass("ot2-anim");
//       $(".cm3").toggleClass("ot3-anim");
//       $(".cm4").toggleClass("ot4-anim");
//      }, 3000);
//     $(".postcontainer").delay(4000).fadeIn(1000);
//     $(".userdisplaycontainer").delay(4000).fadeIn(1000);
//     $(".commentaddition").delay(4300).fadeIn(500);
//     $(".commentcontainer").delay(4300).fadeIn(500);
// }

// this is intended to reverse the intro animation on a click event - mainly a click of the menuing
$('a').click(function(e) {
  e.preventDefault();
  var destination = $(this).attr('href');
      $(".postcontainer").delay(2000).fadeOut(500);
      $(".commentaddition").delay(2000).fadeOut(500);
      $(".commentcontainer").delay(2000).fadeOut(500);
  setTimeout(function() { window.location.href = destination; }, 6000);
});



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
    	$(".cm1").toggleClass("ot5-anim");
    	$(".cm2").toggleClass("ot6-anim");
    	$(".cm3").toggleClass("ot7-anim");
    	$(".cm4").toggleClass("ot8-anim");
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
    	$(".cm1").toggleClass("ot9-anim");
    	$(".cm2").toggleClass("ot10-anim");
    	$(".cm3").toggleClass("ot11-anim");
    	$(".cm4").toggleClass("ot12-anim");
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
    	$(".cm1").toggleClass("ot13-anim");
    	$(".cm2").toggleClass("ot14-anim");
    	$(".cm3").toggleClass("ot15-anim");
    	$(".cm4").toggleClass("ot16-anim");
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