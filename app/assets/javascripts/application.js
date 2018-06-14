// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require underscore
//= require gmaps/google
//= cable
//= charts
//= off-cambas
//= hoverable-collapse
//= require_tree .

$(document).ready(function() {

    $(".toggle-accordion").on("click", function() {
      var accordionId = $(this).attr("accordion-id"),
        numPanelOpen = $(accordionId + ' .collapse.in').length;
      
      $(this).toggleClass("active");
  
      if (numPanelOpen == 0) {
        openAllPanels(accordionId);
      } else {
        closeAllPanels(accordionId);
      }
    })
  
    openAllPanels = function(aId) {
      console.log("setAllPanelOpen");
      $(aId + ' .panel-collapse:not(".in")').collapse('show');
    }
    closeAllPanels = function(aId) {
      console.log("setAllPanelclose");
      $(aId + ' .panel-collapse.in').collapse('hide');
    }
       
  });
