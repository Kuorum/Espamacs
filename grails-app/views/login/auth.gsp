
<head>
    <meta name="layout" content="main" />
    <title><g:message code="patient.create.step1.title"/></title>
</head>

<body>
<div id="content" role="main" class="login-content">
    <div class="col-md-6">
        <section class="row colset-2-its">
            <div class="login-container">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><g:message code='springSecurity.login.header'/></h3>
                    </div>
                    <div class="panel-body">
                        <g:if test='${flash.message}'>
                            <div class="login_message">${flash.message}</div>
                        </g:if>
                        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
                            <div class="fieldcontain">
                                <label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
                                <input type="text" class="text_" name="${usernameParameter ?: 'username'}" id="username"/>
                            </div>

                            <div class="fieldcontain">
                                <label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
                                <input type="password" class="text_" name="${passwordParameter ?: 'password'}" id="password"/>
                            </div>

                            <div class="fieldcontain" id="remember_me_holder">
                                <label for="remember_me">
                                    <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                                    <g:message code='springSecurity.login.remember.me.label'/>
                                </label>
                            </div>

                            <div class="pull-right">
                                <input class="btn-primary" type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
                            </div>
                        </form>
                        <script>
                            (function() {
                                document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
                            })();
                        </script>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="col-md-6" id="login-logo-container">
        <h1>Registro español de asistencia mecánica circulatoria</h1>
        <asset:image src="logo.png"/>
    </div>
</div>
</body>