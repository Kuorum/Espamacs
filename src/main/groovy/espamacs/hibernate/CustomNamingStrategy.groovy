package espamacs.hibernate

import grails.util.Holders
import org.hibernate.cfg.ImprovedNamingStrategy
import org.hibernate.internal.util.StringHelper


/**
 * Created by iduetxe on 23/04/16.
 */
class CustomNamingStrategy extends ImprovedNamingStrategy {

    String classToTableName(String className) {
        Class clazz = Holders.grailsApplication.domainClasses.find { it.clazz.simpleName == className }?.clazz
        String packageName = clazz?.getPackage()?.getName()
        if (packageName?.startsWith("espamacs.type")){
            return "type_"+super.classToTableName(className)
        }else{
            return super.classToTableName(className)
        }
    }
}
