
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="profile.title"/></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:message code="profile.title"/></li>
    </ul>
</content>


<content tag="mainContent">
    <h1><g:message code="profile.title"/></h1>
    <g:form mapping="profile">
        <fieldset class="form-group">
            <f:field bean="${user}" property="username" templates="disabled"/>
            <f:field bean="${user}" property="password" templates="password"/>
            <f:field bean="${user}" property="centre" templates="disabled"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.update.label')}" />
        </fieldset>
    </g:form>

</content>
