
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="patient.create.step1.title"/></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:link mapping="patientList"><g:message code="patient.list.title"/></g:link></li>
        <li><g:message code="patient.list.title"/></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="patient.create.step1.title"/></h1>
    <g:hasErrors bean="${this.paciente}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.paciente}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form mapping="patientCreate">
        <fieldset class="form-group">
            <h4><g:message code="patient.create.step1.basicData"/> </h4>
            <f:field bean="patient" property="code"/>
            <f:field bean="patient" property="birthDate"/>
            <f:field bean="patient" property="weigh"/>
            <f:field bean="patient" property="height"/>
            <f:field bean="patient" property="gender"/>
        </fieldset>
        <fieldset class="form-group">
            <h4><g:message code="patient.create.step1.basicCardiacCareAssistance"/></h4>
            <f:field bean="patient" property="externalId"/>
            <f:field bean="patient" property="centre"/>
            <f:field bean="patient" property="cardiacCareType"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</content>