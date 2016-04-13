

<g:applyLayout name="patientPanelLayout" model="[patient:patient, bean:events, fieldName:'events']">

    <content tag="panelTitle"><g:message code="patient.create.step8.events.title"/></content>
    <content tag="panelBody">
        <g:if test="${events}">
            <table:searchable
                    collection="${events}"
                    domainClass="espamacs.event.Event"
                    properties="['patientHealthStatus', 'removedAssistance','eventDate', 'patientDeath']"
                    pagination="${new espamacs.pagination.EventPagination()}"
                    ajaxPaginationLink="#"
                    rowClickMappingLink="patientEvent"
            />
        </g:if>
        <g:else>
            <g:message code="patient.create.step8.events.noEvents"/>
        </g:else>
        <div class="panel-footer">
            <div class="dropdown">
                <a href="#" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                    <g:message code="patient.navigation.baseData.title"/>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu pull-right">
                    <li><g:link mapping="patientEventCreateMalfunctionDevice" params="${patient.encodeAsLinkProperties()}"><g:message code="patient.navigation.event.create.malfunctionDevice"/> </g:link></li>
                    <li><g:link mapping="patientEventCreateHemorrhage" params="${patient.encodeAsLinkProperties()}"><g:message code="patient.navigation.event.create.hemorrhage"/></g:link></li>
                    <li><g:link mapping="patientBaselineCondition" params="[patientId:patient.id]"><g:message code="patient.navigation.baseData.implantData"/> </g:link></li>
                    <li><g:link mapping="patientBaselineCondition" params="[patientId:patient.id]"><g:message code="patient.navigation.baseData.initTrack"/> </g:link></li>
                </ul>
            </div>
        </div>
    </content>

</g:applyLayout>