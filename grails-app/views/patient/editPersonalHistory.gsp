
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
                <h4><g:message code="patient.create.step2.patientHistory.basic.title"/></h4>
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
                <f:field bean="personalHistory" property="preCardiacSurgeries" templates="multiCheck"/>

            </fieldset>

            <fieldset class="form-group">
                <h4><g:message code="patient.create.step2.patientHistory.renal.title"/></h4>
                <f:field bean="personalHistory" property="renal.baselineCreatinine"/>
                <f:field bean="personalHistory" property="renal.renalReplacementTherapy"/>
            </fieldset>

            <fieldset class="form-group">
                <h4><g:message code="patient.create.step2.patientHistory.respiratory.title"/></h4>
                <f:field bean="personalHistory" property="respiratory.severeLungDisease"/>
                <f:field bean="personalHistory" property="respiratory.primaryPulmonaryHypertension"/>
                <f:field bean="personalHistory" property="respiratory.pulmonaryEmbolism"/>
            </fieldset>

            <fieldset class="form-group">
                <h4><g:message code="patient.create.step2.patientHistory.gastric.title"/></h4>
                <f:field bean="personalHistory" property="gastric.gastricUlcer"/>
                <f:field bean="personalHistory" property="gastric.hepatitis"/>
                <f:field bean="personalHistory" property="gastric.cirrhosis"/>
            </fieldset>

            <fieldset class="form-group">
                <h4><g:message code="patient.create.step2.patientHistory.vascular.title"/></h4>
                <f:field bean="personalHistory" property="vascular.aortaPathology"/>
                <f:field bean="personalHistory" property="vascular.peripheralVascularDisease"/>
            </fieldset>

            <fieldset class="form-group">
                <h4><g:message code="patient.create.step2.patientHistory.centralNervousSystem.title"/></h4>
                <f:field bean="personalHistory" property="centralNervousSystem.stroke"/>
                <f:field bean="personalHistory" property="centralNervousSystem.transientIschemicAttack"/>
                <f:field bean="personalHistory" property="centralNervousSystem.brainHemorrhage"/>
                <f:field bean="personalHistory" property="centralNervousSystem.severeNeurologicalDisease"/>
            </fieldset>

            <fieldset class="form-group">
                <h4><g:message code="patient.create.step2.patientHistory.endocrineHematologicSystem.title"/></h4>
                <f:field bean="personalHistory" property="endocrineHematologicSystem.thyroidDisorders"/>
                <f:field bean="personalHistory" property="endocrineHematologicSystem.chronicAnemia"/>
                <f:field bean="personalHistory" property="endocrineHematologicSystem.heparinInducedThrombocytopenia"/>
                <f:field bean="personalHistory" property="endocrineHematologicSystem.chronicCoagulopathy"/>
            </fieldset>

            <fieldset class="form-group">
                <h4><g:message code="patient.create.step2.patientHistory.oncologicInfectious.title"/></h4>
                <f:field bean="personalHistory" property="oncologicInfectious.malignantTumor"/>
                <f:field bean="personalHistory" property="oncologicInfectious.leukemia"/>
                <f:field bean="personalHistory" property="oncologicInfectious.hiv"/>
                <f:field bean="personalHistory" property="oncologicInfectious.chronicInfectiousDiseases"/>
            </fieldset>


            <fieldset class="buttons">
                <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </fieldset>
        </g:form>
    </div>
</content>