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
                        <span id="espamacs-text" class="hidden-xs">ESPAMACS</span>
                    </div>
                    <sec:ifLoggedIn>
                        <span class="hidden-xs">-</span>
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

    <footer class="footer" role="contentinfo" id="footer">
        <div class="sponsors">
            <ul>
                <li><a target="_blank" href="http://www.cardiolink.es/index.php/es/">   <asset:image src="sponsors/cardiolink.jpg" class="sponsors-logo" alt="Cardiolink"/></a></li>
                <li><a target="_blank" href="http://www.palexmedical.com/es/index.cfm"> <asset:image src="sponsors/palex.jpg" class="sponsors-logo" alt="Palex"/></a></li>
                <li><a target="_blank" href="http://www.getingegroup.com/">             <asset:image src="sponsors/getinge_group.png" class="sponsors-logo small" alt="Geteinge Group"/></a></li>
                <li><a target="_blank" href="http://www.mercev.com/web/">               <asset:image src="sponsors/merce_v.jpg" class="sponsors-logo" alt="Merce V - Electromedicina"/></a></li>
                <li><a target="_blank" href="https://www.sjm.com/corporate.aspx">       <asset:image src="sponsors/sjmlogo.gif" class="sponsors-logo" alt="ST. Jude Medical"/></a></li>
            </ul>
        </div>
    </footer>

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
