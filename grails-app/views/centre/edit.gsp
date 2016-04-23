<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'centre.label', default: 'Centre')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
    <g:hasErrors bean="${this.centro}">
    <ul class="errors" role="alert">
        <g:eachError bean="${this.centro}" var="error">
        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
    </g:hasErrors>
    <g:form resource="${this.centro}" method="PUT">
        <g:hiddenField name="version" value="${this.centro?.version}" />
        <fieldset class="form">
            <f:all bean="centre"/>
        </fieldset>
        <fieldset class="buttons">
            <button class="save btn btn-primary" type="submit">${message(code: 'default.button.update.label', default: 'Update')}</button>
        </fieldset>
    </g:form>
</content>