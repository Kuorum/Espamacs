
<g:if test="${required}">
        <g:select
                from="${type.list()}"
                optionKey="code"
                valueMessagePrefix="${type.name}"
                value="${value?.code}"
                name="${property}"/>
</g:if>
<g:else>
        <g:select
                from="${type.list()}"
                noSelection="${['null':'']}"
                optionKey="code"
                valueMessagePrefix="${type.name}"
                value="${value?.code}"
                name="${property}"/>
</g:else>
