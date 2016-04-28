<table:searchable
        collection="${userList}"
        domainClass="espamacs.EspamacsUser"
        properties="['id','username','centre']"
        pagination="${pagination}"
        ajaxPaginationLink="${g.createLink(mapping:'users')}"
        rowClickMappingLink="userShow"
/>