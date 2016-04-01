<sec:ifAllGranted roles='ROLE_ADMIN'>
    <g:if test="${required}">
        <g:select
                from="${espamacs.Centre.list()}"
                optionKey="id"
                optionValue="name"
                value="${value}"
                name="${property}"/>
    </g:if>
    <g:else>
        <g:select
                from="${espamacs.Centre.list()}"
                noSelection="${['null':'']}"
                optionKey="id"
                optionValue="name"
                value="${value?.id}"
                name="${property}"/>
    </g:else>
</sec:ifAllGranted>
