<fieldset class="form-group">
    <input type="hidden" name="patient.id" value="${patient.id}"/>
    <f:field bean="${event}" property="eventDate"           label="${g.message(code:"${espamacs.event.Event.class.name}.eventDate")}"/>
    <f:field bean="${event}" property="patientHealthStatus" label="${g.message(code:"${espamacs.event.Event.class.name}.patientHealthStatus")}"/>
    <f:field bean="${event}" property="patientDeath"        label="${g.message(code:"${espamacs.event.Event.class.name}.patientDeath")}"/>
    %{--<f:field bean="${event}" property="removedAssistance"   label="${g.message(code:"${espamacs.event.Event.class.name}.removedAssistance")}"/>--}%
    %{--<div id="dynamicRemovedAssistanceFields">--}%
        %{--<f:field bean="${event}" property="removedAssistanceDeath"   label="${g.message(code:"${espamacs.event.Event.class.name}.removedAssistanceDeath")}"/>--}%
        %{--<f:field bean="${event}" property="aliveDays"   label="${g.message(code:"${espamacs.event.Event.class.name}.aliveDays")}"/>--}%
        %{--<f:field bean="${event}" property="aliveAfterHospital"   label="${g.message(code:"${espamacs.event.Event.class.name}.aliveAfterHospital")}"/>--}%
    %{--</div>--}%
</fieldset>

<g:set var="fields"></g:set>


    <fieldset class="form-group"><g:if test="${event instanceof espamacs.event.RemovedAssistanceTransplant}">
        <h4><g:message code="patient.create.step8.events.createEventsButton.${eventCodeName}.customSection.title" default=""/></h4>
        <f:field bean="${event}" property="aliveAfterHospital"/>
        <f:field bean="${event}" property="aliveDays"/>
        <f:field bean="${event}" property="removedAssistanceDeathCause"/>
    </g:if><g:elseif test="${event instanceof espamacs.event.RemovedAssistanceHealed}">
        <h4><g:message code="patient.create.step8.events.createEventsButton.${eventCodeName}.customSection.title" default=""/></h4>
        <f:field bean="${event}" property="aliveAfterHospital"/>
        <f:field bean="${event}" property="aliveDays"/>
        <f:field bean="${event}" property="removedAssistanceDeathCause"/>
    </g:elseif><g:else><f:all bean="${event}" except="patient,eventDate,patientHealthStatus,patientDeath,removeAssistance"/></g:else></fieldset>

<fieldset class="buttons">

    <button class="save btn btn-primary" type="submit">${message(code: 'default.button.update.label', default: 'Update')}</button>
</fieldset>