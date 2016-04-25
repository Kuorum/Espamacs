package espamacs

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class ErrorController {

    def notAuthorized(){
        def message = request.exception?.cause?.message
        response.status = 403
        render view: 'notAuthorized', model:[message:message]
    }

    def error(){
        log.error("Unhandled error", request.exception)
    }
}
