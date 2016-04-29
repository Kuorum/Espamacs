<g:set var="listProperties" value="['id', 'code', 'patientStatus', 'externalId','cardiacCareType']"/>
<sec:ifAllGranted roles='ROLE_ADMIN'>
    %{-- Added centre for admins --}%
    <g:set var="listProperties" value="${listProperties.plus(2,'centre')}"/>
</sec:ifAllGranted>
<table:searchable
        collection="${patientList}"
        domainClass="espamacs.Patient"
        properties="${listProperties}"
        pagination="${pagination}"
        ajaxPaginationLink="${g.createLink(mapping:'patientList')}"
        rowClickMappingLink="patientShow"
/>