
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="centre.list.title" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:message code="centre.list.title"/></li>
    </ul>
</content>

<content tag="actions">
    <g:link class="create btn btn-primary" action="create"><g:message code="centre.create.title"/></g:link>
</content>

<content tag="mainContent">
    <h1><g:message code="centre.list.title" /></h1>
    <g:render template="searchableCenterList" model="[pagination:pagination, centreList: centreList]"/>
</content>