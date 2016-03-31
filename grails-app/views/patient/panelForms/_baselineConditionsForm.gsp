<g:set var="errors" value="${false}"/>
<g:hasErrors bean="${baselineCondition}">
    <g:set var="errors" value="${true}"/>
</g:hasErrors>
<div class="panel-group">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#baselineConditionForm">
                    <g:if test="${errors}"><abbr title="${message(code:'patient.data.error')}"><span class="fa fa-warning"></span></abbr></g:if>
                    <g:elseif test="${!patient.baselineCondition}"><abbr title="${message(code:'patient.data.noComplete')}"><span class="fa fa-exclamation"></span></abbr></g:elseif>
                    <g:message code="patient.create.step3.baselineCondition.title"/>
                </a>
            </h4>
        </div>
        <g id="baselineConditionForm" class="panel-collapse collapse">
            <g:form mapping="patientBaselineCondition" params="[patientId: patient.id]" method="POST">
                <div class="panel-body">
                    <g:hiddenField name="id" value="${patient.personalHistory?.id}"/>
                    <input type="hidden" name="patient.id" value="${patient?.id}"/>
                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step3.baselineCondition.heartFailureData.title"/></h4>
                        <f:field bean="${baselineCondition}" property="peripheralEdemaLevel"/>
                        <f:field bean="${baselineCondition}" property="ascites"/>
                    </fieldset>

                    <fieldset class="form-group">
                        <h4><g:message code="patient.create.step3.baselineCondition.echocardiographicData.title"/></h4>
                        <f:field bean="${baselineCondition}" property="lvef"/>
                        <f:field bean="${baselineCondition}" property="rightVentricleStatus"/>
                        <f:field bean="${baselineCondition}" property="aorticValveStatuses" templates="multiCheck"/>
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