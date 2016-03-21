
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="patient.create.step2.patientHistory.title"/></title>
</head>

<content tag="mainContent">
    <a href="#create-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="list" action="index"><g:message code="patient.list.title"/></g:link></li>
            <li><g:link class="edit" mapping="patientEdit" params="[patientId:patient.id]"><g:message code="default.edit.label" args="[patient.initials]"/></g:link></li>
        </ul>
    </div>
    <div id="create-paciente" class="content scaffold-create" role="main">
        <h1><g:message code="patient.create.step2.patientHistory.title"/></h1>
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
        <g:form mapping="patientPersonalHistory" params="[patientId:patient.id]">
            <g:hiddenField name="id" value="${patient.personalHistory?.id}"/>
            <input type="hidden" name="patient.id" value="${patient?.id}"/>
            <fieldset class="form-group">
                <f:field bean="personalHistory" property="smoker"/>
                <f:field bean="personalHistory" property="hypertensive"/>
                <f:field bean="personalHistory" property="diabetic"/>
                <f:field bean="personalHistory" property="displemia"/>
                <f:field bean="personalHistory" property="obeseType"/>
                <f:field bean="personalHistory" property="malnutrition"/>
                <f:field bean="personalHistory" property="drinker"/>
                <f:field bean="personalHistory" property="intravenouslyDrugs"/>
                <f:field bean="personalHistory" property="severeMentalRetardation"/>
                <f:field bean="personalHistory" property="socialCareType"/>
            </fieldset>

            <fieldset class="form-group">
                <f:field bean="personalHistory" property="preCardiacSurgeries" templates="multiCheck" input-domainList="${espamacs.type.patientData.PreCardiacSurgery.list()}"/>
            </fieldset>

            <fieldset class="buttons">
                <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </fieldset>
        </g:form>
    </div>
</content>