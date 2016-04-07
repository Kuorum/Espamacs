package espamacs.implantData

import espamacs.type.implantData.BloodFlowType
import espamacs.type.implantData.ImplantRvadIn
import espamacs.type.implantData.ImplantRvadOut
import espamacs.type.implantData.RvadBrand

class RvadData {

    RvadBrand brand
    BloodFlowType bloodFlowType
    Double initialFlow

    ImplantRvadIn implantIn
    ImplantRvadOut implantOut


    static constraints = {
    }

    static mapping = {
        brand lazy: false, fetch: 'join'
        bloodFlowType lazy: false, fetch:'join'
        implantIn lazy: false, fetch:'join'
        implantOut lazy: false, fetch:'join'
    }
}
