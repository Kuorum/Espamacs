<!doctype html>
<html lang="es" class="no-js">
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Espamacs"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>
    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">
                    <div id="logos-holder">
                        <asset:image src="logo.png" id="espamacs-logo" class="logo"/>
                        <span id="espamacs-text">Espamacs</span>
                    </div>
                    <sec:ifLoggedIn>
                        -
                        <span class="centre-head">
                            <span class="fa fa-hospital-o"></span>
                            <sec:loggedInUserInfo field='centreName'/>
                        </span>
                    </sec:ifLoggedIn>
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <g:pageProperty name="page.nav" />
                </ul>
            </div>
        </div>
    </div>

    <g:layoutBody/>

    <div class="footer" role="contentinfo">
        <div class="sponsors">
            <ul>
                <li>Empresa 1</li>
                <li>Empresa 2</li>
            </ul>
        </div>
    </div>

<div class="modal hide" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false">
    <div class="modal-header">
        <h1>Processing...</h1>
    </div>
    <div class="modal-body">
        <div class="progress progress-striped active">
            <div class="bar" style="width: 100%;"></div>
        </div>
    </div>
</div>

    <asset:javascript src="application.js"/>


    <script>
        <g:if test="${flash.message}">
        $(function(){
            display.success('${flash.message}')
        });
        </g:if>
        <g:if test="${flash.error}">
        $(function(){
            display.warn('${flash.error}')
        });
        </g:if>
    </script>
</body>
</html>
