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

<fieldset class="form-group"><f:all bean="${event}" except="patient,eventDate,patientHealthStatus,patientDeath,removeAssistance"/></fieldset>
<fieldset class="buttons">
    <button class="save btn btn-primary" type="submit">${message(code: 'default.button.update.label', default: 'Update')}</button>
</fieldset>