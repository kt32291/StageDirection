// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.fancybox
//= require turbolinks
//= require_tree .

$(function() {

  $(".fancybox").fancybox();

  $('.homesignin').click(function (){
    $('.homesign').toggleClass('reveal');
    $(this).toggleClass('down');
  });


  $('.equityyes').click(function (){
    $('.false').hide();
    $('.true').show();
    $('.active').removeClass('active');
    $(this).addClass('active');
  });

  $('.equityno').click(function (){
    $('.true').hide();
    $('.false').show();
    $('.active').removeClass('active');
    $(this).addClass('active');
  });

  $('.all').click(function (){
    $('.true').show();
    $('.false').show();
    $('.active').removeClass('active');
    $(this).addClass('active');
  });

  $('.female').click(function (){
    $('.Male').hide();
    $('.Female').show();
    $('.activegen').removeClass('activegen');
    $(this).addClass('activegen');
    $('.chosengen').removeClass('chosengen');
    $('.Female').addClass('chosengen');
  });

  $('.male').click(function (){
    $('.Female').hide();
    $('.Male').show();
    $('.activegen').removeClass('activegen');
    $(this).addClass('activegen');
    $('.chosengen').removeClass('chosengen');
    $('.Male').addClass('chosengen');
  });

  $('.allgen').click(function (){
    $('.Male').show();
    $('.Female').show();
    $('.activegen').removeClass('activegen');
    $(this).addClass('activegen');
    $('.chosengen').removeClass('chosengen');
    $('.Female').addClass('chosengen');
    $('.Male').addClass('chosengen');
  });

  $('.equity').click(function (){
    $('.Non-Equity').hide();
    $('.EMC').hide();
    $('.Equity.chosengen').show();
    $('.activeeq').removeClass('activeeq');
    $(this).addClass('activeeq');
  });

  $('.emc').click(function (){
    $('.Equity').hide();
    $('.Non-Equity').hide();
    $('.EMC.chosengen').show();
    $('.activeeq').removeClass('activeeq');
    $(this).addClass('activeeq');
  });

  $('.nonequity').click(function (){
    $('.Equity').hide();
    $('.EMC').hide();
    $('.Non-Equity.chosengen').show();
    $('.activeeq').removeClass('activeeq');
    $(this).addClass('activeeq');
  });

  $('.alleq').click(function (){
    $('.Equity.chosengen').show();
    $('.EMC.chosengen').show();
    $('.Non-Equity.chosengen').show();
    $('.activeeq').removeClass('activeeq');
    $(this).addClass('activeeq');
  });

});
