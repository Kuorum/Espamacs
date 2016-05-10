<g:if test="${required}">
        <g:select
                from="${type.list([sort: "position", order: "asc"])}"
                optionKey="code"
                valueMessagePrefix="${type.name}"
                value="${value?.code}"
                name="${property}"/>
</g:if>
<g:else>
        <g:select
                from="${type.list([sort: "position", order: "asc"])}"
                noSelection="${['null':'']}"
                optionKey="code"
                valueMessagePrefix="${type.name}"
                value="${value?.code}"
                name="${property}"/>
</g:else>
