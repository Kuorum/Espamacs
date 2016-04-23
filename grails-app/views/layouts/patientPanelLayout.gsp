
<g:set var="errors" value="${false}"/>
<g:hasErrors bean="${bean}">
    <g:set var="errors" value="${true}"/>
</g:hasErrors>


<div class="panel-group ${errors?'errors':''}">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <g:if test="${errors}"><abbr title="${message(code:'patient.data.error')}"><span class="fa fa-warning"></span></abbr></g:if>
                <g:elseif test="${!patient."${fieldName}"}"><abbr title="${message(code:'patient.data.noComplete')}"><span class="fa fa-exclamation"></span></abbr></g:elseif>
                <a data-toggle="collapse" href="#${fieldName}Form">
                    <g:pageProperty name="page.panelTitle"/>
                </a>
            </h4>
        </div>
        <div id="${fieldName}Form" class="panel-collapse collapse ${errors?'in':''}">
            <g:pageProperty name="page.panelBody"/>
        </div>
    </div>
</div>
