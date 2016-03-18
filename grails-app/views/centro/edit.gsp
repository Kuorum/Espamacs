<head>
    <meta name="layout" content="loggedLayout" />
    <g:set var="entityName" value="${message(code: 'centro.label', default: 'Centro')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<content tag="mainContent">
    <a href="#edit-centro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
    <div id="edit-centro" class="content scaffold-edit" role="main">
        <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>
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
                <f:all bean="centro"/>
            </fieldset>
            <fieldset class="buttons">
                <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            </fieldset>
        </g:form>
    </div>
</content>