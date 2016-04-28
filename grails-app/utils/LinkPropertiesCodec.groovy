import espamacs.Centre
import espamacs.EspamacsUser
import espamacs.Patient
import espamacs.event.Event

/**
 * Created by iduetxe on 24/03/14.
 */
class LinkPropertiesCodec {

    static encode = {target->

        def params = [:]
        switch (target){
            case Patient:
            case Centre:
            case Event:
            case EspamacsUser:
                params = prepareParams(target);
                break
            default:
                params = [:]
        }
        params
    }

    static decode = {target->
        //TODO
    }

    private static def prepareParams(Patient patient){
        [patientId:patient.id]
    }
    private static def prepareParams(Event event){
        [patientId:event.patient.id, eventId:event.id]
    }
    private static def prepareParams(Centre centre){
        [id:centre.id]
    }
    private static def prepareParams(EspamacsUser user){
        [id:user.id]
    }

}
