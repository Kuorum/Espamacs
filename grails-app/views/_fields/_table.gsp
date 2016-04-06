<%@ page import="grails.util.Holders" %>
<g:if test="${!isAjax}">
    <form action="${ajaxPaginationLink}" class="ajax-searchable-table-form">
</g:if>
    <table class="table table-striped searchable-table">
        <thead>
        <tr>
            <g:each in="${domainProperties}" var="p" status="i">
                <g:set var="propTitle">${grails.util.Holders.grailsApplication.domainClasses.find { it.clazz.simpleName == domainClass.name }.clazz.name }.${p.name}</g:set>
                <g:sortableColumn property="${p.name}" title="${message(code: propTitle, default: p.naturalName)}" />
            </g:each>
        </tr>
        <tr class="search-row">
            <g:each in="${domainProperties}" var="p" status="i">
                <th>
                    <g:if test="${pagination.properties.containsKey(p.name)}">
                        <f:input bean="${pagination}" property="${p.name}"/>
                    </g:if>
                </th>
            </g:each>
        </tr>
        </thead>
        <tbody>
        <g:if test="${collection}">
            <g:each in="${collection}" var="bean" status="i">
                <g:if test="${rowClickMappingLink}">
                    <g:set var="rowLink" ><g:createLink mapping="${rowClickMappingLink}" params="${bean.encodeAsLinkProperties()}"></g:createLink> </g:set>
                </g:if>
                <tr class="clickable-row" data-href='${rowLink}'>
                    <g:each in="${domainProperties}" var="p" status="j">
                        <td><f:display bean="${bean}" property="${p.name}"  displayStyle="${displayStyle?:'table'}" /></td>
                    </g:each>
                </tr>
            </g:each>
        </g:if>
        <g:else>
            <tr class="no-results">
                <td colspan="0">NO RESULTS</td>
            </tr>
        </g:else>
        </tbody>
        <g:if test="${pagination.total > pagination.max}">
            <tfoot>
                <tr>
                    <td colspan="${domainProperties.size()}" class="pagination">
                        <g:paginate total="${pagination.total ?: 0}" />
                    </td>
                </tr>
            </tfoot>
        </g:if>
    </table>
<g:if test="${!isAjax}">
    </form>
</g:if>
