<g:set var="errors" value="${false}"/>
<g:hasErrors bean="${preimplantSituation}">
    <g:set var="errors" value="${true}"/>
</g:hasErrors>

<div class="panel-group">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#preimplantForm">
                    <g:if test="${errors}"><abbr title="${message(code:'patient.data.error')}"><span class="fa fa-warning"></span></abbr></g:if>
                    <g:elseif test="${!patient.preimplantSituation}"><abbr title="${message(code:'patient.data.noComplete')}"><span class="fa fa-exclamation"></span></abbr></g:elseif>
                    <g:message code="patient.create.step4.preimplantSituation.title"/>
                </a>
            </h4>
        </div>
        <div id="preimplantForm" class="panel-collapse collapse">
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
        </div>
    </div>
</div>
