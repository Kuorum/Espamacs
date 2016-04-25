<table:searchable
        collection="${centreList}"
        domainClass="espamacs.Centre"
        properties="['id', 'name', 'service', 'address', 'province']"
        pagination="${pagination}"
        ajaxPaginationLink="${g.createLink(mapping:'centreList')}"
        rowClickMappingLink="centreShow"
/>