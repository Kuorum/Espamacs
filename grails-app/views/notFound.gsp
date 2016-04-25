<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="default.error.notFound" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:message code="default.error.notFound"/></li>
    </ul>
</content>

<content tag="actions">

</content>

<content tag="mainContent">
    <ul class="errors">
        <li>Error: Page Not Found (404)</li>
        <li>Path: ${request.forwardURI}</li>
    </ul>
</content>

