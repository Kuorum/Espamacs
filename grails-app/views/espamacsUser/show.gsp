<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="default.show.label" args="[this.espamacsUser.username]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:link mapping="userList"><g:message code="espamacsUser.list.title"/></g:link></li>
        <li>${this.espamacsUser.username}</li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="default.show.label" args="[this.espamacsUser.username]" /></h1>
    <f:display bean="espamacsUser"  />
    <g:form resource="${this.espamacsUser}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit btn btn-primary" mapping="userEdit" params="${this.espamacsUser.encodeAsLinkProperties()}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <input class="delete btn btn-default" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</content>