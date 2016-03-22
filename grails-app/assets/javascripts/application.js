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
//= require plugins/jquery.noty.packaged.min
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



var display = {
    error:function(text){this._notyGeneric(text, "error", "top")},
    success:function(text){this._notyGeneric(text, "success", "top")},
    info:function(text){this._notyGeneric(text, "information", "top")},
    warn:function(text){this._notyGeneric(text, "warning", "top")},

    _notyGeneric:function(text, type, notyLayout) {
        var htmlText = $.parseHTML(text)
        var nW = noty({
            layout: notyLayout,
            dismissQueue: true,
            animation: {
                open: {height: 'toggle'},
                close: {height: 'toggle'},
                easing: 'swing',
                speed: 500 // opening & closing animation speed
            },
            template: '<div class="noty_message" role="alert"><span class="noty_text"></span><div class="noty_close"></div></div>',
            type: type,
            text: htmlText
        });
    }
}


