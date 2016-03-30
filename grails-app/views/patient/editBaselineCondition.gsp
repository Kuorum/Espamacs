
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="patient.create.step2.patientHistory.title"/></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link class="list" action="index"><g:message code="patient.list.title"/></g:link></li>
        <li><g:link class="edit" mapping="patientEdit" params="[patientId:patient.id]"><g:message code="default.edit.label" args="[patient.initials]"/></g:link></li>
        <li><g:message code="patient.create.step3.baselineCondition.title"/></li>
    </ul>
</content>

<content tag="actions">
    <g:render template="editActions" model="[patient:patient]"/>
</content>

<content tag="mainContent">
    <h1><g:message code="patient.create.step3.baselineCondition.title"/></h1>
    <g:hasErrors bean="${this.paciente}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.paciente}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form mapping="patientBaselineCondition" params="[patientId:patient.id]">
        <g:hiddenField name="id" value="${patient.personalHistory?.id}"/>
        <input type="hidden" name="patient.id" value="${patient?.id}"/>
        <fieldset class="form-group">
            <h4><g:message code="patient.create.step3.baselineCondition.heartFailureData.title"/></h4>
            <f:field bean="baselineCondition" property="peripheralEdemaLevel"/>
            <f:field bean="baselineCondition" property="ascites"/>
        </fieldset>

        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</content>