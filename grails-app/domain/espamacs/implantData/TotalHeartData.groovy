package espamacs.implantData

import espamacs.type.implantData.BloodFlowType
import espamacs.type.implantData.HeartTotalBrand
import espamacs.type.implantData.ImplantTotalIn
import espamacs.type.implantData.ImplantTotalOut
import espamacs.type.implantData.RvadBrand

class TotalHeartData {

    HeartTotalBrand brand
    BloodFlowType bloodFlowType
    Double initialFlow

    ImplantTotalIn implantIn
    ImplantTotalOut implantOut

    static constraints = {
    }

    static mapping = {
        brand lazy: false, fetch: 'join'
        bloodFlowType lazy: false, fetch:'join'
        implantIn lazy: false, fetch:'join'
        implantOut lazy: false, fetch:'join'
    }
}
