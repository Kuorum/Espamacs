
<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'centro.label', default: 'Centro')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<content tag="mainContent">
    <a href="#list-centro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
    <div id="list-centro" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <f:table collection="${centroList}" />

        <div class="pagination">
            <g:paginate total="${centroCount ?: 0}" />
        </div>
    </div>
</content>