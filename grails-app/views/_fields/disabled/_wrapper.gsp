
<g:set var="error" value="${hasErrors(bean: bean, field: property,'error')}"/>
<g:set var="helpText"><g:message code="${bean.class.name}.${property}.help" default=""></g:message></g:set>
<g:if test="${type == java.util.List}">
    <f:field bean="${bean}" property="${property}" templates="multiCheck"/>
</g:if>
<g:else>
    <div class="fieldcontain ${error?'error':''} col-lg-4 col-md-6 col-sm-12">
        <label for="${property}">
            <g:message code="${bean.class.name}.${property}" default="${label}"></g:message>
            <g:if test="${helpText}">
                <span class="fa fa-info-circle" rel='tooltip' data-original-title='${helpText}'></span>
            </g:if>
        </label>
        <span id="${property}-disabledDisplay">
            <g:if test="${value==null}">
                --
            </g:if>
            <g:else>
                <f:display bean="${bean}" property="${property}"/>
            </g:else>
        </span>
        <input type="hidden" name="${property}" value="${value}" id="${property}"/>
    </div>
</g:else>