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
        <g:render template="eventFields" model="[patient:patient, event:event]"/>
    </form>

</content>

