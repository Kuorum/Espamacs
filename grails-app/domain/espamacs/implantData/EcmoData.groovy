package espamacs.implantData

import espamacs.type.implantData.BloodFlowType
import espamacs.type.implantData.EcmoBrand
import espamacs.type.implantData.ImplantEcmoIn
import espamacs.type.implantData.ImplantEcmoOut

class EcmoData {

    EcmoBrand brand
    BloodFlowType bloodFlowType
    Double initialFlow

    ImplantEcmoIn implantIn
    ImplantEcmoOut implantOut

    static constraints = {
    }

    static mapping = {
        brand lazy: false, fetch: 'join'
        bloodFlowType lazy: false, fetch:'join'
        implantIn lazy: false, fetch:'join'
        implantOut lazy: false, fetch:'join'
    }
}
