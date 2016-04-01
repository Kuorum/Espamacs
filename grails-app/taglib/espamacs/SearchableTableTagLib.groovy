package espamacs

import espamacs.pagination.Pagination
import grails.core.GrailsDomainClass
import org.grails.validation.DomainClassPropertyComparator

class SearchableTableTagLib {
    static defaultEncodeAs = [taglib:'raw']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    static final namespace = "table"

    def searchable = { attrs, body ->
        def collection = resolveBean(attrs.remove('collection'))
        String rowClickMappingLink = attrs.rowClickMappingLink
        String ajaxPaginationLink = attrs.ajaxPaginationLink
        Pagination paginationCommand = attrs.pagination
        def domainClass
        if (attrs.containsKey('domainClass')) {
            domainClass = grailsApplication.getDomainClass(attrs.remove('domainClass'))
        } else {
            domainClass = (collection instanceof Collection) && collection ? resolveDomainClass(collection.iterator().next()) : null
        }
        if (domainClass) {
            def properties
            if (attrs.containsKey('properties')) {
                properties = attrs.remove('properties').collect { domainClass.getPropertyByName(it) }
            } else {
                properties = domainClass.persistentProperties.sort(new DomainClassPropertyComparator(domainClass))
                if (properties.size() > 6) {
                    properties = properties[0..6]
                }
            }
            def displayStyle = attrs.remove('displayStyle')
            out << render(template: "/_fields/table",
                    model: [
                            domainClass: domainClass,
                            domainProperties: properties,
                            pagination:paginationCommand,
                            collection: collection,
                            rowClickMappingLink:rowClickMappingLink,
                            displayStyle: displayStyle,
                            isAjax: request.xhr,
                            ajaxPaginationLink:ajaxPaginationLink
                    ])
        }
    }

    private Object resolveBean(beanAttribute) {
        resolvePageScopeVariable(beanAttribute) ?: beanAttribute ?: null
    }

    private resolvePageScopeVariable(attributeName) {
        // Tomcat throws NPE if you query pageScope for null/empty values
        attributeName?.toString() ? pageScope.variables[attributeName] : null
    }

    private GrailsDomainClass resolveDomainClass(bean) {
        resolveDomainClass(bean.getClass())
    }

    private GrailsDomainClass resolveDomainClass(Class beanClass) {
        grailsApplication.getDomainClass(beanClass.name)
    }
}
