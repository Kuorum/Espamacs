<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="patient.edit.title" args="[patient.code]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:link mapping="patientList"><g:message code="patient.list.title"/></g:link></li>
        %{--<li><g:link mapping="patientShow" params="[patientId: patient.id]"><g:message code="default.show.label" args="[patient.code]"/></g:link></li>--}%
        <li><g:message code="patient.edit.title" args="[patient.code]"/></li>
    </ul>
</content>

<content tag="actions">
    <sec:ifAllGranted roles="ROLE_ADMIN">
        <g:link mapping="patientDelete" params="${patient.encodeAsLinkProperties()}" class="btn btn-default" type="button">
            <g:message code="default.button.delete.label"/>
        </g:link>
    </sec:ifAllGranted>
</content>

<content tag="mainContent">
    <h1><g:message code="patient.edit.title" args="[patient.code]" /></h1>
    %{--<g:hasErrors bean="${this.paciente}">--}%
        %{--<ul class="errors" role="alert">--}%
            %{--<g:eachError bean="${this.paciente}" var="error">--}%
            %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
            %{--</g:eachError>--}%
        %{--</ul>--}%
    %{--</g:hasErrors>--}%

    <g:render template="panelForms/basicDataPanelForm" model="[patient:patient]"/>
    <g:render template="panelForms/personalHistoryPanelForm" model="[patient:patient, personalHistory:personalHistory]"/>
    <g:if test="${patient.cardiacCareType.code =='LONG'}">
        <g:render template="panelForms/baselineConditionsForm" model="[patient:patient, baselineCondition:baselineCondition]"/>
    </g:if>
    <g:render template="panelForms/preimplantSituation" model="[patient:patient, preimplantSituation:preimplantSituation]"/>
    <g:render template="panelForms/diagnosisAndimplanGoalsForm" model="[patient:patient, diagnosisAndImplantGoals:diagnosisAndImplantGoals]"/>
    <g:render template="panelForms/implantDataPanelForm" model="[patient:patient, implantData:implantData]"/>
    <g:render template="panelForms/initialDataPanelForm" model="[patient:patient, initialData:initialData]"/>
    <g:render template="panelForms/patientEvents" model="[patient:patient, events:events]"/>

</content>

