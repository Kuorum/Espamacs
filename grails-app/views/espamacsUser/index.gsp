
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="espamacsUser.list.title"  /></title>
</head>

<content tag="actions">
    <g:link mapping="userCreate" class="btn btn-primary" type="button">
        <g:message code="espamacsUser.navigation.create"/>
    </g:link>
</content>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:message code="espamacsUser.list.title"/></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="espamacsUser.list.title" /></h1>
    <g:render template="searchableEspamacsUserList" model="[pagination:pagination, userList: userList]"/>
</content>