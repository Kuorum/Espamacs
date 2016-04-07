package espamacs.implantData

import espamacs.type.implantData.BloodFlowType
import espamacs.type.implantData.ImplantLvadIn
import espamacs.type.implantData.ImplantLvadOut
import espamacs.type.implantData.LvadBrand

class LvadData {

    LvadBrand brand
    BloodFlowType bloodFlowType
    Double initialFlow

    ImplantLvadIn implantIn
    ImplantLvadOut implantOut


    static constraints = {
    }

    static mapping = {
        brand lazy: false, fetch: 'join'
        bloodFlowType lazy: false, fetch:'join'
        implantIn lazy: false, fetch:'join'
        implantOut lazy: false, fetch:'join'
    }
}
