
<g:set var="error" value="${hasErrors(bean: bean, field: property,'error')}"/>

<div class="fieldcontain ${error?'error':''} col-lg-6">

    <label for="${property}"><g:message code="${bean.class.name}.${property}" default="${label}"/></label>
    <g:select
            from="${persistentProperty.type.list()}"
            optionKey="code"
            valueMessagePrefix="${type.name}"
            value="${value}"
            name="${property}"/>
    <div class="field-errors">
        <g:hasErrors bean="${bean}" field="${property}">
            <g:renderErrors bean="${bean}" as="list" field="${property}"/>
        </g:hasErrors>
    </div>
</div>