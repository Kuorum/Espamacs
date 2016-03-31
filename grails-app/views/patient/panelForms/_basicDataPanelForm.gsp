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
                    <fieldset class="form-group">
                        <f:field bean="${patient}" property="initials"/>
                        <f:field bean="${patient}" property="birthDate"/>
                        <f:field bean="${patient}" property="weigh"/>
                        <f:field bean="${patient}" property="height"/>
                        %{--<f:field bean="${patient}" property="gender"/>--}%
                    </fieldset>
                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step1.basicCardiacCareAssistance"/></h4>
                        <f:field bean="${patient}" property="externalId"/>
                        <f:field bean="${patient}" property="centre"/>
                        <f:field bean="${patient}" property="cardiacCareType"/>
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
