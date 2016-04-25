package espamacs.security

import espamacs.Patient
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.SpringSecurityUtils
import org.springframework.security.access.PermissionEvaluator
import org.springframework.security.core.Authentication

/**
 * Created by iduetxe on 15/02/16.
 */
class EspamacsPermissionEvaluator implements PermissionEvaluator {

    public static final String EDIT_GRANT="edit"
    public static final String REMOVE_GRANT="remove"

    def grailsApplication
    SpringSecurityService springSecurityService


    public boolean hasPermission(Authentication authentication, Patient patient, Object permission) {
        def loggedUser = springSecurityService.getCurrentUser();
        return  patient.centre == loggedUser.centre || SpringSecurityUtils.ifAnyGranted("ROLE_ADMIN")

    }

    @Override
    public boolean hasPermission(Authentication authentication, Object domainObject, Object permission) {
        if (domainObject.class == espamacs.Patient){
            return hasPermission(authentication, (Patient) domainObject, permission)
        }
        return false
    }

    @Override
    public boolean hasPermission(Authentication authentication, Serializable targetId, String targetType, Object permission) {
        // get domain class with name targetType
        Class domainClass = grailsApplication.getDomainClass(targetType).clazz
        if (domainClass == espamacs.Patient){
            Patient patient = domainClass.get(targetId)
            return hasPermission(authentication, patient, permission)
        }
        return false;
    }
}