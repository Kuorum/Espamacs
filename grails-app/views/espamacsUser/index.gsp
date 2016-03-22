
<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'espamacsUser.label', default: 'EspamacsUser')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <f:table collection="${espamacsUserList}" />

    <div class="pagination">
        <g:paginate total="${espamacsUserCount ?: 0}" />
    </div>
</content>