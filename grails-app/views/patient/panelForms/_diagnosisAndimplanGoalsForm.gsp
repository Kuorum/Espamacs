
<g:applyLayout name="patientPanelLayout" model="[patient:patient, bean:diagnosisAndImplantGoals, fieldName:'diagnosisAndImplantGoals']">

    <content tag="panelTitle"><g:message code="patient.create.step5.diagnosisAndImplantGoals.title"/></content>
    <content tag="panelBody">
        <g:form mapping="patientDiagnosisAndImplantGoals" params="[patientId: patient.id]" method="POST">
            <div class="panel-body">
                <g:hiddenField name="id" value="${diagnosisAndImplantGoals?.id}"/>
                <g:hiddenField name="version" value="${diagnosisAndImplantGoals?.version}" />
                <fieldset class="form-group">
                    <f:field bean="${diagnosisAndImplantGoals}" property="implantGoal"/>
                    <f:field bean="${diagnosisAndImplantGoals}" property="contraindication"/>
                    <f:field bean="${diagnosisAndImplantGoals}" property="implantCause"/>
                    <f:field bean="${diagnosisAndImplantGoals}" property="cardiacImplantCause"/>
                    <f:field bean="${diagnosisAndImplantGoals}" property="mainLungImplantCause"/>
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