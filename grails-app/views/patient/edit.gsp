<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>

<content tag="mainContent">
    <a href="#edit-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
    <div id="edit-paciente" class="content scaffold-edit" role="main">
        <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
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
        <g:form resource="${this.paciente}" method="PUT">
            <g:hiddenField name="version" value="${this.paciente?.version}" />
            <fieldset class="form-group">
                <h4><g:message code="patient.create.step1.basicData"/> </h4>
                <f:field bean="patient" property="initials"/>
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
                <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            </fieldset>
        </g:form>
    </div>
</content>

