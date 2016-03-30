<%@ page import="grails.util.Holders" %>
<table class="table">
    <thead>
    <tr>
        <g:each in="${domainProperties}" var="p" status="i">
            <g:set var="propTitle">${grails.util.Holders.grailsApplication.domainClasses.find { it.clazz.simpleName == domainClass.name }.clazz.name }.${p.name}</g:set>
            <g:sortableColumn property="${p.name}" title="${message(code: propTitle, default: p.naturalName)}" />
        </g:each>
    </tr>
    <tr class="search-row">
        <g:each in="${domainProperties}" var="p" status="i">
            <td>
                <g:if test="${pagination.properties.containsKey(p.name)}">
                    <f:input bean="${pagination}" property="${p.name}"/>
                </g:if>
            </td>
        </g:each>
    </tr>
    </thead>
    <tbody>
    <g:each in="${collection}" var="bean" status="i">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            <g:each in="${domainProperties}" var="p" status="j">
                <g:if test="${j==0}">
                    <td><g:link method="GET" resource="${bean}"><f:display bean="${bean}" property="${p.name}" displayStyle="${displayStyle?:'table'}" /></g:link></td>
                </g:if>
                <g:else>
                    <td><f:display bean="${bean}" property="${p.name}"  displayStyle="${displayStyle?:'table'}" /></td>
                </g:else>
            </g:each>
        </tr>
    </g:each>
    </tbody>
</table>