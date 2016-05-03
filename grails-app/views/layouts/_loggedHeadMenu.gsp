<li>
    <g:link mapping="profile">
        <span>
            <span class="fa fa-user"></span>
            <sec:loggedInUserInfo field='username'/>
        </span>
    </g:link>
</li>


<sec:ifAllGranted roles='ROLE_ADMIN'>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            <g:message code="head.menu.admin"/><span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
            <li><g:link mapping="centreList"> <g:message code="head.menu.centers"/></g:link> </li>
            <li><g:link mapping="users"> <g:message code="head.menu.users"/></g:link> </li>
        </ul>
    </li>
</sec:ifAllGranted>
<li>
    <a href="/logoff"> <g:message code="head.menu.logout"/></a>
</li>