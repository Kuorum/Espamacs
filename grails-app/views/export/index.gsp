
<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="export.title"  /></title>
</head>

%{--<content tag="actions">--}%
    %{--<g:link mapping="userCreate" class="btn btn-primary" type="button">--}%
        %{--<g:message code="espamacsUser.navigation.create"/>--}%
    %{--</g:link>--}%
%{--</content>--}%

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:message code="export.title"/></li>
    </ul>
</content>

<content tag="mainContent">
    <h1><g:message code="export.title" /></h1>
    <fieldset class="form-group">
        <ul>
            <li><g:link mapping="exportAllToCSV"><g:message code="export.all.csv"/> </g:link></li>
        </ul>
    </fieldset>
</content>