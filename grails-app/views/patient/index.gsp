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
    <div class="dropdown">
        <a href="#" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
            Dropdown Example
            <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
            <li><a href="#">HTML</a></li>
            <li><a href="#">CSS</a></li>
            <li><a href="#">JavaScript</a></li>
            <li><a href="#">JavaScript</a></li>
            <li><a href="#">JavaScript</a></li>
            <li><a href="#">JavaScript</a></li>
            <li><a href="#">JavaScript</a></li>
            <li><a href="#">JavaScript</a></li>
            <li><a href="#">JavaScript</a></li>
            <li><a href="#">JavaScript</a></li>
            <li><a href="#">JavaScript</a></li>
        </ul>
    </div>
</content>

<content tag="mainContent">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <f:table collection="${patientList}" properties="['initials', 'centre', 'patientStatus', 'externalId']"/>

    <div class="pagination">
        <g:paginate total="${patientCount ?: 0}" />
    </div>
</content>