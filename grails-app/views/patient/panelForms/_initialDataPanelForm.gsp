

<g:applyLayout name="patientPanelLayout" model="[patient:patient, bean:initialData, fieldName:'initialData']">

    <content tag="panelTitle"><g:message code="patient.create.step7.initialData.title"/></content>
    <content tag="panelBody">
        <g:form mapping="patientInitialData" params="[patientId: patient.id]" method="POST">
            <div class="panel-body">
                <g:hiddenField name="id" value="${patient.initialData?.id}"/>
                <input type="hidden" name="patient.id" value="${patient?.id}"/>
                <fieldset class="form-group">
                    <f:field bean="${initialData}" property="dischargedDate"/>
                    <f:field bean="${initialData}" property="dischargedDestination"/>
                    <f:field bean="${initialData}" property="uciTime"/>
                    <f:field bean="${initialData}" property="hospitalizedTime"/>
                    <f:field bean="${initialData}" property="timeWithoutIntropicIV"/>
                    <f:field bean="${initialData}" property="ventilationTime"/>
                    <f:field bean="${initialData}" property="surgicalProceduresAfterTransplant" templates="multiCheck"/>
                    <f:field bean="${initialData}" property="cardiacSurgicalProcedures" templates="multiCheck"/>
                    <f:field bean="${initialData}" property="otherSurgicalProcedures" templates="multiCheck"/>
                    <f:field bean="${initialData}" property="cardiologicalTreatmensAtDischarge" templates="multiCheck"/>
                    <f:field bean="${initialData}" property="antiheparineAntibodies" />
                    <f:field bean="${initialData}" property="bloodMedications" templates="multiCheck"/>
                </fieldset>

            <div class="panel-footer">
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </div>
        </g:form>
    </content>

</g:applyLayout>