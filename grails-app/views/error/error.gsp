<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="default.error" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:message code="default.error"/></li>
    </ul>
</content>

<content tag="actions">

</content>

<content tag="mainContent">
    <g:if env="development">
        <g:if test="${Throwable.isInstance(exception)}">
            <g:renderException exception="${exception}" />
        </g:if>
        <g:elseif test="${request.getAttribute('javax.servlet.error.exception')}">
            <g:renderException exception="${request.getAttribute('javax.servlet.error.exception')}" />
        </g:elseif>
        <g:else>
            <ul class="errors">
                <li>An error has occurred</li>
                <li>Exception: ${exception}</li>
                <li>Message: ${message}</li>
                <li>Path: ${path}</li>
            </ul>
        </g:else>
    </g:if>
    <g:else>
        <ul class="errors">
            <li>An error has occurred</li>
        </ul>
    </g:else>
</content>