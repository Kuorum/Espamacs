
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="patient.create.step1.title"/></title>
</head>

<content tag="mainContent">
    <a href="#create-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="list" action="index"><g:message code="patient.list.title"/></g:link></li>
        </ul>
    </div>
    <div id="create-paciente" class="content scaffold-create" role="main">
        <h1><g:message code="patient.create.step1.title"/></h1>
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>
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
                <f:field bean="patient" property="initials"/>
                <f:field bean="patient" property="birthDate"/>
                <f:field bean="patient" property="weigh"/>
                <f:field bean="patient" property="height"/>
                <f:field bean="patient" property="gender"/>
            </fieldset>
            <fieldset class="form-group two-columns">
                <h4><g:message code="patient.create.step1.basicCardiacCareAssistance"/></h4>
                <f:field bean="patient" property="externalId"/>
                <f:field bean="patient" property="centre"/>
                <f:field bean="patient" property="cardiacCareType"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </fieldset>
        </g:form>
    </div>
</content>