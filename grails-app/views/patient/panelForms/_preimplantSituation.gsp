
<g:applyLayout name="patientPanelLayout" model="[patient:patient, bean:preimplantSituation, fieldName:'preimplantSituation']">

    <content tag="panelTitle"><g:message code="patient.create.step4.preimplantSituation.title"/></content>
    <content tag="panelBody">
        <g:form mapping="patientPreimplantSituation" params="[patientId: patient.id]" method="POST">
            <div class="panel-body">
                <g:hiddenField name="id" value="${preimplantSituation?.id}"/>
                <g:hiddenField name="version" value="${preimplantSituation?.version}" />
                <fieldset class="form-group">
                    <f:field bean="${preimplantSituation}" property="preimplantEvents" templates="multiCheck"/>
                    <f:field bean="${preimplantSituation}" property="intropicMedications" templates="multiCheck"/>
                    <f:field bean="${preimplantSituation}" property="intermacsSituation"/>
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