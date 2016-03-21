
<g:set var="error" value="${hasErrors(bean: bean, field: property,'error')}"/>

<div class="fieldcontain checkbox-inline ${error?'error':''} col-lg-12">
    <h4><g:message code="${bean.class.name}.${property}" default="${label}"/></h4>
    <hr/>
    <g:each in="${bean.hasMany[property].list()}" var="optionValue">
        <label for="${property}-${optionValue.id}">
            <g:message code="${optionValue.class.name}.${optionValue.code}" default="${optionValue.code}"/>
            <input type="checkbox" name="${property}" value="${optionValue.code}" id="${property}" ${value?.contains(optionValue)?'CHECKED':''} />
        </label>
    </g:each>
    <div class="field-errors">
        <g:hasErrors bean="${bean}" field="${property}">
            <g:renderErrors bean="${bean}" as="list" field="${property}"/>
        </g:hasErrors>
    </div>
</div>