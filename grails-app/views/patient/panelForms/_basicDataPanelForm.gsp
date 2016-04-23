

<div class="panel-group">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#basicDataForm">
                    <g:message code="patient.create.step1.basicData"/>
                </a>
            </h4>
        </div>
        <g id="basicDataForm" class="panel-collapse collapse">
            <g:form mapping="patientEdit" params="[patientId: patient.id]" method="POST">
                <div class="panel-body">
                    <g:hiddenField name="id" value="${patient?.id}"/>
                    <g:hiddenField name="version" value="${patient?.version}" />
                    <g:render template="panelForms/basicDataForm" model="[patient:patient]"/>
                </div>
                <div class="panel-footer">
                    <fieldset class="buttons">
                        <button class="save btn btn-primary" type="submit">${message(code: 'default.button.update.label', default: 'Update')}</button>
                    </fieldset>
                </div>
            </g:form>
    </div>
</div>
