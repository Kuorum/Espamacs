package espamacs.profile

import espamacs.EspamacsUser
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured('ROLE_USER')
class ProfileController {


    SpringSecurityService springSecurityService

    def edit(){
        EspamacsUser user = springSecurityService.currentUser
        [user:user]
    }

    @Transactional
    def update(){
        EspamacsUser userLogged = EspamacsUser.get(springSecurityService.principal.id)
        userLogged.password = params.password
        userLogged.save(flush:true)
        flash.message = message(code: 'default.updated.message', args: [userLogged.username, userLogged.id])
        redirect mapping:'profile'

    }
}
