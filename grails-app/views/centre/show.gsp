<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="default.show.label" args="[centre.name]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:link action="index"><g:message code="centre.list.title"/></g:link></li>
        <li>${centre.name}</li>
    </ul>
</content>


<content tag="mainContent">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <f:display bean="centre" />
    <g:form resource="${this.centro}" method="DELETE">
        <fieldset class="buttons">
            <input type="submit" class="edit btn btn-primary" value="${message(code:'default.button.edit.label')}"/>
            %{--<input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
        </fieldset>
    </g:form>

</content>