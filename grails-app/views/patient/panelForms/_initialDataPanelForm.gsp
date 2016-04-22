

<g:applyLayout name="patientPanelLayout" model="[patient:patient, bean:initialData, fieldName:'initialData']">

    <content tag="panelTitle"><g:message code="patient.create.step7.initialData.title"/></content>
    <content tag="panelBody">
        <g:form mapping="patientInitialData" params="[patientId: patient.id]" method="POST">
            <div class="panel-body">
                <g:hiddenField name="id" value="${patient.initialData?.id}"/>
                <input type="hidden" name="patient.id" value="${patient?.id}"/>
                <fieldset class="form-group">
                    <f:field bean="${initialData}" property="patientDeath"/>
                    <f:field bean="${initialData}" property="uciTime"/>
                    <f:field bean="${initialData}" property="hospitalizedTime"/>
                </fieldset>
                <fieldset class="form-group" id="initialData_dischargedData">
                    <h4><g:message code="patient.create.step7.initialData.dischagedData"/> </h4>
                    <f:field bean="${initialData}" property="dischargedData.dischargedDate"/>
                    <f:field bean="${initialData}" property="dischargedData.dischargedDestination"/>
                    <f:field bean="${initialData}" property="dischargedData.dischargedStatus"/>
                </fieldset>
                <fieldset class="form-group" id="initialData_exitusData">
                    <h4><g:message code="patient.create.step7.initialData.exitusData"/> </h4>
                    <f:field bean="${initialData}" property="exitusData.exitusDate"/>
                    <f:field bean="${initialData}" property="exitusData.existusStatus"/>
                </fieldset>
                <fieldset class="form-group">
                    <h4><g:message code="patient.create.step7.initialData.postSurgeryData"/> </h4>
                    <f:field bean="${initialData}" property="timeWithoutIntropicIV"/>
                    <f:field bean="${initialData}" property="ventilationTime"/>
                    <f:field bean="${initialData}" property="surgicalProceduresAfterTransplant" templates="multiCheck"/>
                    <f:field bean="${initialData}" property="cardiacSurgicalProcedures" templates="multiCheck"/>
                    <f:field bean="${initialData}" property="otherSurgicalProcedures" templates="multiCheck"/>
                    <f:field bean="${initialData}" property="cardiologicalTreatmensAtDischarge" templates="multiCheck"/>
                    <f:field bean="${initialData}" property="antiheparineAntibodies" />
                    <f:field bean="${initialData}" property="bloodMedications" templates="multiCheck"/>
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