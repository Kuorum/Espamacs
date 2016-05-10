
<g:set var="error" value="${hasErrors(bean: bean, field: property,'error')}"/>
<g:set var="helpText"><g:message code="${bean.class.name}.${property}.help" default=""></g:message></g:set>
<div class="fieldcontain ${error?'error':''} col-lg-4 col-md-6 col-sm-12">
    <label for="${property}">
        <g:message code="${bean.class.name}.${property}" default="${label}"></g:message>
        <g:if test="${helpText}">
            <span class="fa fa-info-circle" rel='tooltip' data-original-title='${helpText}'></span>
        </g:if>
    </label>
    <input type="password" name="${property}" value="${value}" id="${property}">
    <div class="field-errors">
        <g:hasErrors bean="${bean}" field="${property}">
            <g:renderErrors bean="${bean}" as="list" field="${property}"/>
        </g:hasErrors>
    </div>
</div>
