<g:set var="errors" value="${false}"/>
<g:hasErrors bean="${personalHistory}">
    <g:set var="errors" value="${true}"/>
</g:hasErrors>

<div class="panel-group">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title error-form">
                <a data-toggle="collapse" href="#personalHistoryForm">
                    <g:if test="${errors}"><abbr title="${message(code:'patient.data.error')}"><span class="fa fa-warning"></span></abbr></g:if>
                    <g:elseif test="${!patient.personalHistory}"><abbr title="${message(code:'patient.data.noComplete')}"><span class="fa fa-exclamation"></span></abbr></g:elseif>
                    <g:message code="patient.create.step2.patientHistory.title"/>
                </a>
            </h4>
        </div>
        <div id="personalHistoryForm" class="panel-collapse collapse ${errors?'in':''}">
            <g:form mapping="patientPersonalHistory" params="[patientId: patient.id]" method="POST">
                <div class="panel-body">
                    <g:hiddenField name="id" value="${patient.personalHistory?.id}"/>
                    <input type="hidden" name="patient.id" value="${patient?.id}"/>
                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step2.patientHistory.basic.title"/></h4>
                        <f:field bean="${personalHistory}" property="smoker"/>
                        <f:field bean="${personalHistory}" property="hypertensive"/>
                        <f:field bean="${personalHistory}" property="diabetic"/>
                        <f:field bean="${personalHistory}" property="displemia"/>
                        <f:field bean="${personalHistory}" property="obeseType"/>
                        <f:field bean="${personalHistory}" property="malnutrition"/>
                        <f:field bean="${personalHistory}" property="drinker"/>
                        <f:field bean="${personalHistory}" property="intravenouslyDrugs"/>
                        <f:field bean="${personalHistory}" property="severeMentalRetardation"/>
                        <f:field bean="${personalHistory}" property="socialCareType"/>
                        <f:field bean="${personalHistory}" property="preCardiacSurgeries" templates="multiCheck"/>

                    </fieldset>

                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step2.patientHistory.renal.title"/></h4>
                        <f:field bean="${personalHistory}" property="renal.baselineCreatinine"/>
                        <f:field bean="${personalHistory}" property="renal.renalReplacementTherapy"/>
                    </fieldset>

                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step2.patientHistory.respiratory.title"/></h4>
                        <f:field bean="${personalHistory}" property="respiratory.severeLungDisease"/>
                        <f:field bean="${personalHistory}" property="respiratory.primaryPulmonaryHypertension"/>
                        <f:field bean="${personalHistory}" property="respiratory.pulmonaryEmbolism"/>
                    </fieldset>

                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step2.patientHistory.gastric.title"/></h4>
                        <f:field bean="${personalHistory}" property="gastric.gastricUlcer"/>
                        <f:field bean="${personalHistory}" property="gastric.hepatitis"/>
                        <f:field bean="${personalHistory}" property="gastric.cirrhosis"/>
                    </fieldset>

                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step2.patientHistory.vascular.title"/></h4>
                        <f:field bean="${personalHistory}" property="vascular.aortaPathology"/>
                        <f:field bean="${personalHistory}" property="vascular.peripheralVascularDisease"/>
                    </fieldset>

                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step2.patientHistory.centralNervousSystem.title"/></h4>
                        <f:field bean="${personalHistory}" property="centralNervousSystem.stroke"/>
                        <f:field bean="${personalHistory}" property="centralNervousSystem.transientIschemicAttack"/>
                        <f:field bean="${personalHistory}" property="centralNervousSystem.brainHemorrhage"/>
                        <f:field bean="${personalHistory}" property="centralNervousSystem.severeNeurologicalDisease"/>
                    </fieldset>

                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step2.patientHistory.endocrineHematologicSystem.title"/></h4>
                        <f:field bean="${personalHistory}" property="endocrineHematologicSystem.thyroidDisorders"/>
                        <f:field bean="${personalHistory}" property="endocrineHematologicSystem.chronicAnemia"/>
                        <f:field bean="${personalHistory}" property="endocrineHematologicSystem.heparinInducedThrombocytopenia"/>
                        <f:field bean="${personalHistory}" property="endocrineHematologicSystem.chronicCoagulopathy"/>
                    </fieldset>

                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step2.patientHistory.oncologicInfectious.title"/></h4>
                        <f:field bean="${personalHistory}" property="oncologicInfectious.malignantTumor"/>
                        <f:field bean="${personalHistory}" property="oncologicInfectious.leukemia"/>
                        <f:field bean="${personalHistory}" property="oncologicInfectious.hiv"/>
                        <f:field bean="${personalHistory}" property="oncologicInfectious.chronicInfectiousDiseases"/>
                    </fieldset>

                </div>
                <div class="panel-footer">
                    <fieldset class="buttons">
                        <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    </fieldset>
                </div>
            </g:form>
        </div>
    </div>
</div>