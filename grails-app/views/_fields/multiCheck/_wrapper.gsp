
<g:set var="error" value="${hasErrors(bean: bean, field: property,'error')}"/>
<g:set var="helpText"><g:message code="${bean.class.name}.${property}.help" default=""></g:message></g:set>

<div class="fieldcontain checkbox-inline ${error?'error':''} col-lg-12">
    <h4>
        <g:message code="${bean.class.name}.${property}" default="${label}"/>
        <g:if test="${helpText}">
            <span class="fa fa-info-circle" rel='tooltip' data-original-title='${helpText}'></span>
        </g:if>
    </h4>
    <g:each in="${bean.hasMany[property].list()}" var="optionValue">
        <g:set var="labelHelpText"><g:message code="${optionValue.class.name}.${optionValue.code}.help" default=""></g:message></g:set>
        <label for="${property}-${optionValue.id}">
            <g:message code="${optionValue.class.name}.${optionValue.code}" default="${optionValue.code}"/>
            <g:if test="${labelHelpText}">
                <sup><span class="fa fa-info-circle" rel='tooltip' data-original-title='${labelHelpText}'></span></sup>
            </g:if>
            <input type="checkbox" name="${property}" value="${optionValue.code}" id="${property}" ${value*.code?.contains(optionValue?.code)?'CHECKED':''} />
        </label>
    </g:each>
    <div class="field-errors">
        <g:hasErrors bean="${bean}" field="${property}">
            <g:renderErrors bean="${bean}" as="list" field="${property}"/>
        </g:hasErrors>
    </div>
</div>