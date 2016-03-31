
<div class="dropdown">
    <a href="#" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
        <g:message code="patient.navigation.baseData.title"/>
        <span class="caret"></span>
    </a>
    <ul class="dropdown-menu pull-right">
        <li>
            <g:link mapping="patientPersonalHistory" params="[patientId:patient.id]">
                <g:if test="${!patient.personalHistory}"><abbr title="Datos incompletos"><span class="fa fa-exclamation"></span></abbr></g:if>
                <g:message code="patient.navigation.baseData.personalHistory"/>
            </g:link>
        </li>
        <li>
            <g:link mapping="patientBaselineCondition" params="[patientId:patient.id]">
                <g:if test="${!patient.baselineCondition}"><span class="fa fa-exclamation"></span></g:if>
                <g:message code="patient.navigation.baseData.baselineConditions"/>
            </g:link>
        </li>
        <li><g:link mapping="patientBaselineCondition" params="[patientId:patient.id]"><g:message code="patient.navigation.baseData.preImplantSituation"/> </g:link></li>
        <li><g:link mapping="patientBaselineCondition" params="[patientId:patient.id]"><g:message code="patient.navigation.baseData.implantGoals"/> </g:link></li>
        <li><g:link mapping="patientBaselineCondition" params="[patientId:patient.id]"><g:message code="patient.navigation.baseData.implantData"/> </g:link></li>
        <li><g:link mapping="patientBaselineCondition" params="[patientId:patient.id]"><g:message code="patient.navigation.baseData.initTrack"/> </g:link></li>
    </ul>
</div>

<div class="dropdown">
    <a href="#" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
        <g:message code="patient.navigation.events.dropdown.title"/>
        <span class="caret"></span>
    </a>
    <ul class="dropdown-menu">
        <li><g:link mapping="patientPersonalHistory" params="[patientId:patient.id]"><g:message code="patient.navigation.events.listEvents"/> </g:link></li>
    </ul>
</div>