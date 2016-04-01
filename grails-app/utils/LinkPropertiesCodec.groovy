import espamacs.Centre
import espamacs.Patient

/**
 * Created by iduetxe on 24/03/14.
 */
class LinkPropertiesCodec {

    static encode = {target->

        def params = [:]
        switch (target){
            case Patient:
            case Centre:
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
    private static def prepareParams(Centre centre){
        [id:centre.id]
    }

}
