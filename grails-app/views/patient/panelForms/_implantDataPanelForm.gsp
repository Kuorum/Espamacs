

<g:applyLayout name="patientPanelLayout" model="[patient:patient, bean:implantData, fieldName:'implantData']">

    <content tag="panelTitle"><g:message code="patient.create.step6.implantData.title"/></content>
    <content tag="panelBody">
        <g:form mapping="patientImplantData" params="[patientId: patient.id]" method="POST">
            <div class="panel-body">
                <g:hiddenField name="id" value="${patient.implantData?.id}"/>
                <input type="hidden" name="patient.id" value="${patient?.id}"/>
                <fieldset class="form-group">
                    <f:field bean="${implantData}" property="implantType"/>
                    <f:field bean="${implantData}" property="lengthMinutes"/>
                    <f:field bean="${implantData}" property="lengthBypassMinutes"/>
                </fieldset>

                <fieldset class="form-group" id="LVAD">
                    <h4><g:message code="patient.create.step6.implantData.lvad.title"/></h4>
                    <f:field bean="${implantData}" property="lvadData.brand"/>
                    <f:field bean="${implantData}" property="lvadData.bloodFlowType"/>
                    <f:field bean="${implantData}" property="lvadData.implantIn"/>
                    <f:field bean="${implantData}" property="lvadData.implantOut"/>
                    <f:field bean="${implantData}" property="lvadData.initialFlow"/>
                </fieldset>

                <fieldset class="form-group" id="RVAD">
                    <h4><g:message code="patient.create.step6.implantData.rvad.title"/></h4>
                    <f:field bean="${implantData}" property="rvadData.brand"/>
                    <f:field bean="${implantData}" property="rvadData.bloodFlowType"/>
                    <f:field bean="${implantData}" property="rvadData.implantIn"/>
                    <f:field bean="${implantData}" property="rvadData.implantOut"/>
                    <f:field bean="${implantData}" property="rvadData.initialFlow"/>
                </fieldset>

                <fieldset class="form-group" id="TOTAL">
                    <h4><g:message code="patient.create.step6.implantData.total.title"/></h4>
                    <f:field bean="${implantData}" property="totalHeartData.brand"/>
                    <f:field bean="${implantData}" property="totalHeartData.bloodFlowType"/>
                    <f:field bean="${implantData}" property="totalHeartData.implantIn"/>
                    <f:field bean="${implantData}" property="totalHeartData.implantOut"/>
                    <f:field bean="${implantData}" property="totalHeartData.initialFlow"/>
                </fieldset>

                <fieldset class="form-group" id="ECMO">
                    <h4><g:message code="patient.create.step6.implantData.ecmo.title"/></h4>
                    <f:field bean="${implantData}" property="ecmoData.brand"/>
                    <f:field bean="${implantData}" property="ecmoData.bloodFlowType"/>
                    <f:field bean="${implantData}" property="ecmoData.implantIn"/>
                    <f:field bean="${implantData}" property="ecmoData.implantOut"/>
                    <f:field bean="${implantData}" property="ecmoData.initialFlow"/>
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