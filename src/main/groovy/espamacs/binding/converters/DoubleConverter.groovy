package espamacs.binding.converters

import grails.databinding.converters.ValueConverter

/**
 * Created by iduetxe on 18/03/16.
 */
class DoubleConverter implements ValueConverter {

    boolean canConvert(value) {
        value instanceof String
    }

    def convert(value) {
        String val = value.replace(",", ".")
        List<String> parts = val.split("\\.")
        if (parts.size()>1){
            String decimals = parts.last()
            String natural= parts[0..parts.size()-2].join("")
            value = "${natural}.${decimals}"
        }
        return Double.parseDouble(value)
    }

    Class<?> getTargetType() {
        return Double.class
    }
}