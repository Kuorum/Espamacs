<%@ page import="espamacs.Centre" %>

<g:set var="error" value="${hasErrors(bean: bean, field: property,'error')}"/>

<div class="fieldcontain ${error?'error':''} col-lg-4 col-md-6 col-sm-12">

    <sec:ifAllGranted roles='ROLE_ADMIN'>
        <label for="${property}"><g:message code="${bean.class.name}.${property}" default="${label}"/></label>
        <g:select
                from="${espamacs.Centre.findAll([sort:'name'])}"
                optionKey="id"
                optionValue="name"
                value="${value}"
                name="${property}"/>
        <div class="field-errors">
            <g:hasErrors bean="${bean}" field="${property}">
                <g:renderErrors bean="${bean}" as="list" field="${property}"/>
            </g:hasErrors>
        </div>
    </sec:ifAllGranted>
    <sec:ifNotGranted roles="ROLE_ADMIN">
        <label for="${property}"><g:message code="${bean.class.name}.${property}" default="${label}"/></label>
        <input type="text" name="${property}_fake" disabled value="${sec.loggedInUserInfo(field:'centreName')}"/>
        <input type="hidden" name="${property}" value="${sec.loggedInUserInfo(field:'centreId')}"/>
        <div class="field-errors">
            <g:hasErrors bean="${bean}" field="${property}">
                <g:renderErrors bean="${bean}" as="list" field="${property}"/>
            </g:hasErrors>
        </div>
    </sec:ifNotGranted>

</div>