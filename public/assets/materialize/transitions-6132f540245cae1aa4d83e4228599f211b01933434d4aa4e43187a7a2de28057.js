!function(e){Materialize.fadeInImage=function(t){var i;if("string"==typeof t)i=e(t);else{if("object"!=typeof t)return;i=t}i.css({opacity:0}),e(i).velocity({opacity:1},{duration:650,queue:!1,easing:"easeOutSine"}),e(i).velocity({opacity:1},{duration:1300,queue:!1,easing:"swing",step:function(t,i){i.start=100;var n=t/100,a=150-(100-t)/1.75;a<100&&(a=100),t>=0&&e(this).css({"-webkit-filter":"grayscale("+n+")brightness("+a+"%)",filter:"grayscale("+n+")brightness("+a+"%)"})}})},Materialize.showStaggeredList=function(t){var i;if("string"==typeof t)i=e(t);else{if("object"!=typeof t)return;i=t}var n=0;i.find("li").velocity({translateX:"-100px"},{duration:0}),i.find("li").each(function(){e(this).velocity({opacity:"1",translateX:"0"},{duration:800,delay:n,easing:[60,10]}),n+=120})},e(document).on("ready turbolinks:load",function(){var t=!1,i=!1;e(".dismissable").each(function(){e(this).hammer({prevent_default:!1}).on("pan",function(n){if("touch"===n.gesture.pointerType){var a=e(this),r=n.gesture.direction,s=n.gesture.deltaX,o=n.gesture.velocityX;a.velocity({translateX:s},{duration:50,queue:!1,easing:"easeOutQuad"}),4===r&&(s>a.innerWidth()/2||o<-.75)&&(t=!0),2===r&&(s<-1*a.innerWidth()/2||o>.75)&&(i=!0)}}).on("panend",function(n){if(Math.abs(n.gesture.deltaX)<e(this).innerWidth()/2&&(i=!1,t=!1),"touch"===n.gesture.pointerType){var a=e(this);if(t||i){var r;r=t?a.innerWidth():-1*a.innerWidth(),a.velocity({translateX:r},{duration:100,queue:!1,easing:"easeOutQuad",complete:function(){a.css("border","none"),a.velocity({height:0,padding:0},{duration:200,queue:!1,easing:"easeOutQuad",complete:function(){a.remove()}})}})}else a.velocity({translateX:0},{duration:100,queue:!1,easing:"easeOutQuad"});t=!1,i=!1}})})})}(jQuery);