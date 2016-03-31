
<g:set var="error" value="${hasErrors(bean: bean, field: property,'error')}"/>
<g:set var="isBoolean" value="${type == java.lang.Boolean || type== boolean}"/>
<g:set var="helpText"><g:message code="${bean.class.name}.${property}.help" default=""></g:message></g:set>
<div class="fieldcontain ${error?'error':''} col-lg-4 col-md-6 col-sm-12">


    <label for="${property}">
        <g:message code="${bean.class.name}.${property}" default="${label}"></g:message>
        <g:if test="${helpText}">
            <abbr title="${helpText}"><span class="fa fa-info-circle"></span></abbr>
        </g:if>
    </label>
    <g:if test="${isBoolean}">
        <g:select from="${[false, true]}" value="${value}" name="${property}" valueMessagePrefix="default.boolean"/>
    </g:if>
    <g:elseif test="${type == java.lang.Double || type == double}">
        <input type="number" step="0.01" name="${property}" value="${value}" id="${property}">
    </g:elseif>
    <g:else>
        <input type="text" name="${property}" value="${value}" id="${property}">
    </g:else>
    <div class="field-errors">
        <g:hasErrors bean="${bean}" field="${property}">
            <g:renderErrors bean="${bean}" as="list" field="${property}"/>
        </g:hasErrors>
    </div>
</div>