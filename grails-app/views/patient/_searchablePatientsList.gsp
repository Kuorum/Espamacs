<table:searchable
        collection="${patientList}"
        domainClass="espamacs.Patient"
        properties="['id', 'code', 'centre', 'patientStatus', 'externalId','cardiacCareType']"
        pagination="${pagination}"
        ajaxPaginationLink="${g.createLink(mapping:'patientList')}"
        rowClickMappingLink="patientShow"
/>