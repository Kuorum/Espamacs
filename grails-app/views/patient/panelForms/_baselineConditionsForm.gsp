

<g:applyLayout name="patientPanelLayout" model="[patient:patient, bean:baselineCondition, fieldName:'baselineCondition']">

    <content tag="panelTitle"><g:message code="patient.create.step3.baselineCondition.title"/></content>
    <content tag="panelBody">
        <g:form mapping="patientBaselineCondition" params="[patientId: patient.id]" method="POST">
            <div class="panel-body">
                <g:hiddenField name="id" value="${patient.baselineCondition?.id}"/>
                <input type="hidden" name="patient.id" value="${patient?.id}"/>
                <fieldset class="form-group">
                    <h4><g:message code="patient.create.step3.baselineCondition.heartFailureData.title"/></h4>
                    <f:field bean="${baselineCondition}" property="peripheralEdemaLevel"/>
                    <f:field bean="${baselineCondition}" property="ascites"/>
                </fieldset>

                <fieldset class="form-group">
                    <h4><g:message code="patient.create.step3.baselineCondition.echocardiographicData.title"/></h4>
                    <f:field bean="${baselineCondition}" property="echocardiogramDate"/>
                    <f:field bean="${baselineCondition}" property="lvef"/>
                    <f:field bean="${baselineCondition}" property="rightVentricleStatus"/>
                    <f:field bean="${baselineCondition}" property="tapse"/>
                    <f:field bean="${baselineCondition}" property="rightVentricleDilatation"/>
                    <f:field bean="${baselineCondition}" property="aorticValveStatuses" templates="multiCheck"/>
                    <f:field bean="${baselineCondition}" property="mitralValveStatuses" templates="multiCheck"/>
                    <f:field bean="${baselineCondition}" property="tricuspidValveStatuses" templates="multiCheck"/>
                    <f:field bean="${baselineCondition}" property="lvdtdd"/>
                    <f:field bean="${baselineCondition}" property="lvesd"/>
                    <f:field bean="${baselineCondition}" property="volumeEndSistole"/>
                    <f:field bean="${baselineCondition}" property="volumeEndDiastole"/>
                </fieldset>

                <fieldset class="form-group">
                    <h4><g:message code="patient.create.step3.baselineCondition.hemodynamicData.title"/></h4>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.catheterizationDate"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.systolicArterialPressure"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.diastolicArterialPressure"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.averageArterialPressure"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.hearRate"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.systolicArterialPulmonaryPressure"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.diastolicArterialPulmonaryPressure"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.averageArterialPulmonaryPressure"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.pulmonaryCapillaryPressure"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.transpulmonaryGradient"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.pulmonaryVascularResistance"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.centralVenousPressure"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.systemicVascularResistance"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.systolicEffortIndex"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.cardiacOutput"/>
                    <f:field bean="${baselineCondition}" property="hemodynamicData.cardiacIndex"/>
                </fieldset>

                <fieldset class="form-group">
                    <h4><g:message code="patient.create.step3.baselineCondition.sixMinutesTest.title"/></h4>
                    <f:field bean="${baselineCondition}" property="sixMinutesDate"/>
                    <f:field bean="${baselineCondition}" property="sixMinutesTestDistanceMetres"/>
                    <f:field bean="${baselineCondition}" property="sixMinutesTestDistanceV02"/>
                    <f:field bean="${baselineCondition}" property="medications" templates="multiCheck"/>
                </fieldset>

                <fieldset class="form-group">
                    <h4><g:message code="patient.create.step3.baselineCondition.bloodTest.title"/></h4>
                    <f:field bean="${baselineCondition}" property="analyticDate"/>
                    <f:field bean="${baselineCondition}" property="sodium"/>
                    <f:field bean="${baselineCondition}" property="potassium"/>
                    <f:field bean="${baselineCondition}" property="creatinine"/>
                    <f:field bean="${baselineCondition}" property="urea"/>
                    <f:field bean="${baselineCondition}" property="alt"/>
                    <f:field bean="${baselineCondition}" property="ast"/>
                    <f:field bean="${baselineCondition}" property="ldh"/>
                    <f:field bean="${baselineCondition}" property="cpk"/>
                    <f:field bean="${baselineCondition}" property="bilirubin"/>
                    <f:field bean="${baselineCondition}" property="leukocytes"/>
                    <f:field bean="${baselineCondition}" property="hemoglobin"/>
                    <f:field bean="${baselineCondition}" property="platelets"/>
                    <f:field bean="${baselineCondition}" property="inr"/>
                    <f:field bean="${baselineCondition}" property="NTproBNP"/>
                    <f:field bean="${baselineCondition}" property="crp"/>
                    <f:field bean="${baselineCondition}" property="albumin"/>
                    <f:field bean="${baselineCondition}" property="lactate"/>
                </fieldset>

                <fieldset class="form-group">
                    <h4><g:message code="patient.create.step3.baselineCondition.nyha.title"/></h4>
                    <f:field bean="${baselineCondition}" property="nyha"/>
                </fieldset>
            </div>
            <div class="panel-footer">
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </div>
        </g:form>
    </content>

</g:applyLayout>