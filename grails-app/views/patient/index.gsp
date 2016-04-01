<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:message code="patient.list.title"/></li>
    </ul>
</content>

<content tag="actions">
    <g:link mapping="patientCreate" class="btn btn-primary" type="button">
        <g:message code="patient.navigation.create"/>
    </g:link>
</content>

<content tag="mainContent">
    <h1><g:message code="patient.list.title"/></h1>
    <g:render template="searchablePatientsList" model="[pagination:pagination, patientList: patientList]"/>
</content>