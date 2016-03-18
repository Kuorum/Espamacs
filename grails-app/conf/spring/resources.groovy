import espamacs.binding.converters.DatabaseEnumConverter
import espamacs.binding.converters.DoubleConverter
import espamacs.security.EspamacsUserDetailsService

// Place your Spring DSL code here
beans = {

    userDetailsService(EspamacsUserDetailsService)


    doubleConverter(DoubleConverter)
    //ENUM DOMAIN CONVERTERS
    genderConverter(DatabaseEnumConverter){domainClass=espamacs.type.Gender}
    cardiacCareTypeConverter(DatabaseEnumConverter){domainClass=espamacs.type.CardiacCareType}

}
