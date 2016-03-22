<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link class="list" action="index"><g:message code="patient.list.title"/></g:link></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <f:table collection="${patientList}" properties="['initials', 'centre', 'patientStatus', 'externalId']"/>

    <div class="pagination">
        <g:paginate total="${patientCount ?: 0}" />
    </div>
</content>