
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="espamacsUser.navigation.create"/></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:link mapping="userList"><g:message code="espamacsUser.list.title"/></g:link></li>
        <li><g:link mapping="userShow" params="${this.espamacsUser.encodeAsLinkProperties()}">${this.espamacsUser.username}</g:link></li>
        <li><g:message code="espamacsUser.navigation.edit" args="[this.espamacsUser.username]" /></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="espamacsUser.navigation.create" /></h1>
    <g:form mapping="userEdit" params="${this.espamacsUser.encodeAsLinkProperties()}">
        <g:render template="espamacsUserFields" model="[user:this.espamacsUser]"/>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</content>