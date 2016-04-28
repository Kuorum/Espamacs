
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
    <g:form action="save">
        <fieldset class="form-group">
            <f:all bean="centre"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</content>