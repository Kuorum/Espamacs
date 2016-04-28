
<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'espamacsUser.label', default: 'EspamacsUser')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:render template="searchableEspamacsUserList" model="[pagination:pagination, userList: userList]"/>
</content>