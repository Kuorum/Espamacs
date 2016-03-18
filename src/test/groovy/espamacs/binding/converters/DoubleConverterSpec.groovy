package espamacs.binding.converters


import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
//@TestFor(DoubleConverter)
class DoubleConverterSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "Testing conversion of #value"() {

        when:
            DoubleConverter converter = new DoubleConverter()
            Double d = converter.convert(value)
        then:
            d == expected
        where:
        value       | expected
        "1"         | 1D
        "1.1"       | 1.1D
        "1,1"       | 1.1D
        "1.1.1"     | 11.1D
        "1,1.1"     | 11.1D
    }
}
