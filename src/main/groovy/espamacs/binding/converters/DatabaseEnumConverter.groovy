package espamacs.binding.converters

import espamacs.type.Gender
import grails.databinding.converters.ValueConverter
import org.apache.commons.lang.StringUtils

/**
 * Created by iduetxe on 18/03/16.
 */
class DatabaseEnumConverter implements ValueConverter {

    Class domainClass
    String property = "code"

    boolean canConvert(value) {
        value instanceof String
    }

    def convert(value) {
        domainClass."findBy${StringUtils.capitalize(property)}"(value)
    }

    Class<?> getTargetType() {
        domainClass
    }
}