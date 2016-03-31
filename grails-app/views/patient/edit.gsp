<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:link mapping="patientList"><g:message code="patient.list.title"/></g:link></li>
        %{--<li><g:link mapping="patientShow" params="[patientId: patient.id]"><g:message code="default.show.label" args="[patient.initials]"/></g:link></li>--}%
        <li><g:message code="default.edit.label" args="[patient.initials]"/></li>
    </ul>
</content>

<content tag="actions">
    <g:render template="editActions" model="[patient:patient]"/>
</content>

<content tag="mainContent">
    <h1><g:message code="patient.edit.title" args="[patient.initials]" /></h1>
    %{--<g:hasErrors bean="${this.paciente}">--}%
        %{--<ul class="errors" role="alert">--}%
            %{--<g:eachError bean="${this.paciente}" var="error">--}%
            %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
            %{--</g:eachError>--}%
        %{--</ul>--}%
    %{--</g:hasErrors>--}%

    <g:render template="panelForms/basicDataPanelForm" model="[patient:patient]"/>
    <g:render template="panelForms/personalHistoryPanelForm" model="[patient:patient, personalHistory:personalHistory]"/>
    <g:render template="panelForms/baselineConditionsForm" model="[patient:patient, baselineCondition:baselineCondition]"/>

</content>

