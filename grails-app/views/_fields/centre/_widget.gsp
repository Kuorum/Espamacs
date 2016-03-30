<sec:ifAllGranted roles='ROLE_ADMIN'>
        <g:select
                from="${espamacs.Centre.list()}"
                optionKey="id"
                optionValue="name"
                value="${value}"
                name="${property}"/>
</sec:ifAllGranted>
