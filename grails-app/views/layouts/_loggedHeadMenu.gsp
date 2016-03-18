<li>
    <g:link mapping="profile">
        <sec:loggedInUserInfo field='username'/>
        <span><sec:loggedInUserInfo field='centroName'/></span>
    </g:link>
</li>
%{--<li class="dropdown">--}%
%{--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>--}%
%{--<ul class="dropdown-menu">--}%
%{--<li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>--}%
%{--<li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>--}%
%{--<li><a href="#">App version:--}%
%{--<g:meta name="info.app.version"/></a>--}%
%{--</li>--}%
%{--<li role="separator" class="divider"></li>--}%
%{--<li><a href="#">Grails version:--}%
%{--<g:meta name="info.app.grailsVersion"/></a>--}%
%{--</li>--}%
%{--<li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>--}%
%{--<li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>--}%
%{--<li role="separator" class="divider"></li>--}%
%{--<li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>--}%
%{--</ul>--}%
%{--</li>--}%
<sec:ifAllGranted roles='ROLE_ADMIN'>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Admin <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><g:link mapping="centros"> Centros</g:link> </li>
            <li><g:link mapping="usuarios"> Usuarios</g:link> </li>
        </ul>
    </li>
</sec:ifAllGranted>
<li>
    <a href="/logoff"> Salir</a>
</li>