
<g:applyLayout name="patientPanelLayout" model="[patient:patient, bean:personalHistory, fieldName:'personalHistory']">

    <content tag="panelTitle"><g:message code="patient.create.step2.patientHistory.title"/></content>
    <content tag="panelBody">
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
                    <f:field bean="${personalHistory}" property="preCardiacSurgery"/>

                </fieldset>

                <fieldset class="form-group">
                    <h4><g:message code="patient.create.step2.patientHistory.renal.title"/></h4>
                    <f:field bean="${personalHistory}" property="renal.baselineCreatinine"/>
                    <f:field bean="${personalHistory}" property="renal.creatinineClearance" templates="disabled"/>
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
                    <button class="save btn btn-primary" type="submit">${message(code: 'default.button.update.label', default: 'Update')}</button>
                </fieldset>
            </div>
        </g:form>
    </content>

</g:applyLayout>
