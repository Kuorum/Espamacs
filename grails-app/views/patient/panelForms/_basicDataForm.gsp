<fieldset class="form-group">
    <h4><g:message code="patient.create.step1.centerData"/></h4>
    <f:field bean="${patient}" property="code"/>
    <f:field bean="${patient}" property="externalId"/>
    <f:field bean="${patient}" property="centre"/>
</fieldset>
<fieldset class="form-group">
    <h4><g:message code="patient.create.step1.basicData"/></h4>
    <f:field bean="${patient}" property="birthDate"/>
    <f:field bean="${patient}" property="gender" required="false"/>
    <f:field bean="${patient}" property="weigh"/>
    <f:field bean="${patient}" property="height"/>
    <f:field bean="${patient}" property="bmi" templates="disabled"/>
    <f:field bean="${patient}" property="bloodType"/>
    <f:field bean="${patient}" property="rhFactor"/>
</fieldset>
<fieldset class="form-group">
    <h4><g:message code="patient.create.step1.basicCardiacCareAssistance"/></h4>
    <f:field bean="${patient}" property="cardiacCareType"/>
    <f:field bean="${patient}" property="implantDate"/>
    <f:field bean="${patient}" property="patientAgeOnImplant" templates="disabled"/>
</fieldset>