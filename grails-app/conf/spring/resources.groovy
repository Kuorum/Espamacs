import espamacs.binding.converters.DatabaseEnumConverter
import espamacs.binding.converters.DoubleConverter
import espamacs.security.EspamacsPermissionEvaluator
import espamacs.security.EspamacsUserDetailsService

// Place your Spring DSL code here
beans = {

    userDetailsService(EspamacsUserDetailsService)


    doubleConverter(DoubleConverter)
    //ENUM DOMAIN CONVERTERS
    List<Class> enumDatabaseTypes = grailsApplication.getArtefacts("Domain")*.clazz
            .findAll{it.superclass == espamacs.type.DatabaseEnumType}

    enumDatabaseTypes.each{ enumClazz ->
//    Class enumClazz = enumDatabaseTypes.first()
        String converterName="${enumClazz.canonicalName}_converter"
        log.info("Loading converter '${converterName}'")
        "${converterName}"  (DatabaseEnumConverter) {
            domainClass=enumClazz
        }
    }


    // ACL
    permissionEvaluator(EspamacsPermissionEvaluator) {
        grailsApplication     = ref('grailsApplication')
        springSecurityService = ref('springSecurityService')
    }
}
