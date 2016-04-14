<%@ page import="espamacs.event.Event" %>

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
        <li><g:message code="patient.create.step8.events.createEventsButton.${eventCodeName}"/></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="patient.create.step8.events.createEventsButton.${eventCodeName}"/></h1>

    <form action="" method="POST">
        <g:hiddenField name="version" value="${this.event?.version}" />
        <fieldset class="form-group">
            <input type="hidden" name="patient.id" value="${patient.id}"/>
            <f:field bean="${event}" property="eventDate"           label="${g.message(code:"${espamacs.event.Event.class.name}.eventDate")}"/>
            <f:field bean="${event}" property="patientHealthStatus" label="${g.message(code:"${espamacs.event.Event.class.name}.patientHealthStatus")}"/>
            <f:field bean="${event}" property="patientDeath"        label="${g.message(code:"${espamacs.event.Event.class.name}.patientDeath")}"/>
            <f:field bean="${event}" property="removedAssistance"   label="${g.message(code:"${espamacs.event.Event.class.name}.removedAssistance")}"/>
        </fieldset>

        <fieldset class="form-group">
            <f:all bean="${event}" except="patient,eventDate,patientHealthStatus,patientDeath,removedAssistance"/>
        </fieldset>
        <fieldset class="buttons">
            <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
        </fieldset>
    </form>

</content>

