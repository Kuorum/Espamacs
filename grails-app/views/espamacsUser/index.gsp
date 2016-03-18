
<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'espamacsUser.label', default: 'EspamacsUser')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<content tag="mainContent">
    <a href="#list-espamacsUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
    <div id="list-espamacsUser" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <f:table collection="${espamacsUserList}" />

        <div class="pagination">
            <g:paginate total="${espamacsUserCount ?: 0}" />
        </div>
    </div>
</content>