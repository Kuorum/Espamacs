
<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</content>


<content tag="mainContent">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <f:display bean="patient" />
    <g:form resource="${this.paciente}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" mapping="patientEdit" params="[patientId:patient.id]"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</content>
