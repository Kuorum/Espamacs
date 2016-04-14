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

    $(".ajax-searchable-table-form").on("click","tr.clickable-row", function() {
        window.document.location = $(this).data("href");
    });

    $("tr.clickable-row").on("click", function() {
        window.document.location = $(this).data("href");
    });

    $(".ajax-searchable-table-form").on("change","input, select", function() {
        var $form = $(this).parents("form")
        var params = $form.serializeArray()
        _reloadSearchableTable($form, params)
    });

    $(".ajax-searchable-table-form").on("click",".searchable-table a", function(e) {
        e.preventDefault()

        var linkParams = getUrlParams($(this).attr("href"))
        var $form = $(this).parents("form")
        var formParams = $form.serializeArray()
        var params = merge_options(formParams, linkParams)
        console.log(params)
        _reloadSearchableTable($form, params)
    })



    function _reloadSearchableTable($form, params){
        var url = $form.attr("action")
        $.ajax({
            url: url,
            data: params,
            beforeSend: function () {
                $("#pleaseWaitDialog").modal()
            },
            success: function (html) {
                $("#pleaseWaitDialog").modal('hide')
                $form.html(html)
                if (!isOldBrowser()){
                    history.pushState(params,document.getElementsByTagName("title")[0].innerHTML,url+"?"+jQuery.param( params ) )
                }
            },
            fail: function (jqXHR, textStatus) {
                $("#pleaseWaitDialog").modal('hide')
            }
        })
    }

    $("#implantType").on("change", function(){
        changeImplantDataDependingOnSelect();
    })
    changeImplantDataDependingOnSelect();
})

function getUrlParams(url){
    var stringVars = url.split('?');
    if (stringVars.length>1 && stringVars[stringVars.length-1].length>0){
        var sURLVariables = stringVars[stringVars.length-1].split('&');
        var res = {}
        for (var i = 0; i < sURLVariables.length; i++)
        {
            var sParameterName = sURLVariables[i].split('=');
            res[sParameterName[0]] = sParameterName[1]
        }
        return res
    }else{
        return {}
    }
}
/**
 * Overwrites obj1's values with obj2's and adds obj2's if non existent in obj1
 * @param obj1
 * @param obj2
 * @returns obj3 a new object based on obj1 and obj2
 */
function merge_options(obj1,obj2){
    var obj3 = {};
    for (var attrname in obj1) {
        if (obj1[attrname].hasOwnProperty('name')){
            obj3[obj1[attrname].name] = obj1[attrname].value;
        }else{
            obj3[attrname] = obj1[attrname];
        }
    }
    for (var attrname in obj2) {
        if (obj2[attrname].hasOwnProperty('name')){
            obj3[obj2[attrname].name] = obj2[attrname].value;
        }else{
            obj3[attrname] = obj2[attrname];
        }
    }
    return obj3;
}

function isOldBrowser(){
    //On main.gsp is defined the html tags with 'Conditional statements'
    return $('html').is('.lt-ie7, .lt-ie8, .lt-ie9')
}

function changeImplantDataDependingOnSelect(){
    showImplantDataInfo($("#implantType").val().split("_"));
}

function showImplantDataInfo(imaplantTypes){
    var dynamicFieldset = ['LVAD', 'RVAD', 'TOTAL', 'ECMO']
    $.each(dynamicFieldset, function(idx, typeName){
        if ($.inArray(typeName, imaplantTypes)>=0){
            $("#"+typeName).show("slow")
        }else{
            $("#"+typeName).hide("slow")
        }
    })
}

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


