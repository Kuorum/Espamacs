
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="centre.create.title" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:link mapping="centreList"><g:message code="centre.list.title"/></g:link></li>
        <li><g:message code="centre.create.title" /></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="centre.create.title" /></h1>
    <g:hasErrors bean="${this.centro}">
    <ul class="errors" role="alert">
        <g:eachError bean="${this.centro}" var="error">
        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
    </g:hasErrors>
    <g:form action="save">
        <fieldset class="form">
            <f:all bean="centre"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</content>