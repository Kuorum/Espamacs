if (typeof jQuery !== 'undefined') {

// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.2.0.min
//= require bootstrap
//= require plugins/bootstrap-datepicker
//= require plugins/bootstrap-datepicker-i18n
//= require_tree .
//= require_self

    (function($) {
        $('#spinner').ajaxStart(function() {
            $(this).fadeIn();
        }).ajaxStop(function() {
            $(this).fadeOut();
        });
    })(jQuery);
}


$(function(){

    $('.date-picker-popup').datepicker({
        language: "es",
        autoclose: true,
        todayHighlight: true
    })
})
