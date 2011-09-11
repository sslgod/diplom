// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//menu
$(document).ready(function () {
//найти текущую позицию активного элемента
var dleft = $('.lavalamp li.active').offset().left - $('.lavalamp').offset().left;
var dwidth = $('.lavalamp li.active').width() + "px";
//присвоить эту позицию элеметку с подсветкой
$('.floatr').css({
"left": dleft+"px",
"width": dwidth
});
$('.lavalamp li').hover(function(){
var left = $(this).offset().left - ($(this).parents('.lavalamp').offset().left + 15);
var width = $(this).width() + "px";
var sictranslate = "translate("+left+"px, 0px)";
$(this).parent('ul').next('div.floatr').css({
"width": width,
"-webkit-transform": sictranslate,
"-moz-transform": sictranslate
});
},
function(){
var left = $(this).siblings('li.active').offset().left - ($(this).parents('.lavalamp').offset().left + 15);
var width = $(this).siblings('li.active').width() + "px";
var sictranslate = "translate("+left+"px, 0px)";
$(this).parent('ul').next('div.floatr').css({
"width": width,
"-webkit-transform": sictranslate,
"-moz-transform": sictranslate
});
}).click(function(){
$(this).live.siblings('li').removeClass('active');
$(this).live.addClass('active');
return false;
});
});
//konec