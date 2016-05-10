<%@ page import="espamacs.event.Event" %>


<g:applyLayout name="patientPanelLayout" model="[patient:patient, bean:events, fieldName:'events']">

    <content tag="panelTitle">
        <g:message code="patient.create.step8.events.title"/>

        <g:set var="tooltipData">
            <h5><g:message code="patient.create.step8.events.title.help.title"/></h5>
            <p><g:message code="patient.create.step8.events.title.help.p1"/></p>
            <p><g:message code="patient.create.step8.events.title.help.p2"/></p>
            <p><g:message code="patient.create.step8.events.title.help.p3"/></p>
            <ul>
                <li><g:message code="patient.create.step8.events.title.help.list.1"/></li>
                <li><g:message code="patient.create.step8.events.title.help.list.2"/></li>
            </ul>
        </g:set>
        <span class="fa fa-info-circle" rel='tooltip' data-original-title='${tooltipData}'></span>

        %{--<abbr title="${message(code:'patient.create.step8.events.title.help')}"><span class="fa fa-question-circle"></span> </abbr>--}%
    </content>
    <content tag="panelBody">
        <div class="panel-body">
            <g:if test="${events}">
                <table class="table table-striped searchable-table">
                    <thead>
                    <tr>
                        <th><g:message code="${espamacs.event.Event.class.name }.type"/></th>
                        <th><g:message code="${espamacs.event.Event.class.name }.eventDate"/></th>
                        <th><g:message code="${espamacs.event.Event.class.name }.patientHealthStatus"/></th>
                        <th><g:message code="${espamacs.event.Event.class.name }.removedAssistance"/></th>
                        <th><g:message code="${espamacs.event.Event.class.name }.patientDeath"/></th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${events}" var="event">
                        <tr class="clickable-row" data-href="${g.createLink(mapping:'patientEvent', params:event.encodeAsLinkProperties())}">
                            <td><g:message code="patient.create.step8.events.createEventsButton.${event.class.simpleName}"/> </td>
                            <td><f:display bean="${event}" property="eventDate"/></td>
                            <td><f:display bean="${event}" property="patientHealthStatus"/></td>
                            <td><f:display bean="${event}" property="removeAssistance"/></td>
                            <td><f:display bean="${event}" property="patientDeath"/></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </g:if>
            <g:else>
                <g:message code="patient.create.step8.events.noEvents"/>
            </g:else>
        </div>
        <div class="panel-footer">
            <fieldset class="buttons">
                <span class="dropdown dropup">
                    <a href="#" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                        <g:message code="patient.create.step8.events.createRemoveAssistanceButton"/>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu pull-right">
                        <li><g:link mapping="patientEventCreateRemovedAssistanceHealed"       params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.RemovedAssistanceHealed"/></g:link></li>
                        <li><g:link mapping="patientEventCreateRemovedAssistanceTransplant"   params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.RemovedAssistanceTransplant"/></g:link></li>
                        <li><g:link mapping="patientEventCreateRemovedAssistanceChanged"      params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.RemovedAssistanceChanged"/></g:link></li>
                    </ul>
                </span>
                <span class="dropdown dropup">
                    <a href="#" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                        <g:message code="patient.create.step8.events.createEventsButton"/>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu pull-right">
                        <li><g:link mapping="patientEventCreateMalfunctionDevice"       params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.MalfunctionDevice"/></g:link></li>
                        <li><g:link mapping="patientEventCreateHemorrhage"              params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.Hemorrhage"/></g:link></li>
                        <li><g:link mapping="patientEventCreateInfection"               params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.Infection"/></g:link></li>
                        <li><g:link mapping="patientEventCreateNeurologicalDysfunction" params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.NeurologicalDysfunction"/></g:link></li>
                        <li><g:link mapping="patientEventCreateArrhythmia"              params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.Arrhythmia"/></g:link></li>
                        <li><g:link mapping="patientEventCreateHepaticDysfunction"      params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.HepaticDysfunction"/></g:link></li>
                        <li><g:link mapping="patientEventCreateRenalDysfunction"        params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.RenalDysfunction"/></g:link></li>
                        <li><g:link mapping="patientEventCreateRespiratoryFailure"      params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.RespiratoryFailure"/></g:link></li>
                        <li><g:link mapping="patientEventCreateArterialThromboembolism" params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.ArterialThromboembolism"/></g:link></li>
                        <li><g:link mapping="patientEventCreateWoundDehiscence"         params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.WoundDehiscence"/></g:link></li>
                        <li><g:link mapping="patientEventCreateVenousThromboembolism"   params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.VenousThromboembolism"/></g:link></li>
                        <li><g:link mapping="patientEventCreateMyocardialInfarction"    params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.MyocardialInfarction"/></g:link></li>
                        <li><g:link mapping="patientEventCreatePericardialEffusion"     params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.PericardialEffusion"/></g:link></li>
                        <li><g:link mapping="patientEventCreateHemolysis"               params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.Hemolysis"/></g:link></li>
                        <li><g:link mapping="patientEventCreateRightHeartFailure"       params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.RightHeartFailure"/></g:link></li>
                        <li><g:link mapping="patientEventCreatePeripheralVascularAccessComplications" params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.PeripheralVascularAccessComplications"/></g:link></li>
                        <li><g:link mapping="patientEventCreateOtherEvent"              params="${patient.encodeAsLinkProperties()}"><g:message code="patient.create.step8.events.createEventsButton.OtherEvent"/></g:link></li>
                    </ul>
                </span>
            </fieldset>
        </div>
    </content>

</g:applyLayout>