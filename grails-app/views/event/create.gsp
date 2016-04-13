
<g:set var="eventCodeName" value="${event.class.simpleName}"/>
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="patient.event.title"/> :: <g:message code="patient.event.${eventCodeName}.title"/></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:link mapping="patientList"><g:message code="patient.list.title"/></g:link></li>
        <li><g:link mapping="patientShow" params="${patient.encodeAsLinkProperties()}"> ${patient.code}</g:link></li>
        <li><g:message code="patient.event.${eventCodeName}.title"/></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="patient.event.${eventCodeName}.title"/></h1>

    <g:form mapping="patientEventCreate${eventCodeName}" params="${patient.encodeAsLinkProperties()}" method="POST">
        <g:hiddenField name="version" value="${this.event?.version}" />
        <fieldset class="form-group">
            <input type="hidden" name="patient.id" value="${patient.id}"/>
            <f:field bean="${event}" property="eventDate"/>
            <f:field bean="${event}" property="patientHealthStatus"/>
            <f:field bean="${event}" property="patientDeath"/>
            <f:field bean="${event}" property="removedAssistance"/>
        </fieldset>

        <fieldset class="form-group">
            <f:all bean="${event}" except="patient,eventDate,patientHealthStatus,patientDeath,removedAssistance"/>
        </fieldset>
        <fieldset class="buttons">
            <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
        </fieldset>
    </g:form>

</content>

