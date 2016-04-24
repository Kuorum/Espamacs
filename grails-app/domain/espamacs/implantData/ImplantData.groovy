package espamacs.implantData

import espamacs.type.implantData.BloodFlowType
import espamacs.type.implantData.CollateralSurgery
import espamacs.type.implantData.EcmoBrand
import espamacs.type.implantData.HeartTotalBrand
import espamacs.type.implantData.ImplantEcmoIn
import espamacs.type.implantData.ImplantEcmoOut
import espamacs.type.implantData.ImplantLvadIn
import espamacs.type.implantData.ImplantLvadOut
import espamacs.type.implantData.ImplantRvadIn
import espamacs.type.implantData.ImplantRvadOut
import espamacs.type.implantData.ImplantTotalIn
import espamacs.type.implantData.ImplantTotalOut
import espamacs.type.implantData.ImplantType
import espamacs.type.implantData.LvadBrand
import espamacs.type.implantData.RvadBrand

class ImplantData {

    ImplantType implantType
    Integer lengthMinutes
    Integer lengthBypassMinutes
    CollateralSurgery collateralSurgery

    LvadData lvadData
    RvadData rvadData
    TotalHeartData totalHeartData
    EcmoData ecmoData
    static constraints = {
        lvadData nullable: true
        rvadData nullable: true
        totalHeartData nullable: true
        ecmoData nullable: true
    }

    static embedded = ['lvadData', 'rvadData', 'totalHeartData', 'ecmoData']

    static mapping = {
        implantType lazy: false, fetch: 'join'
        collateralSurgery lazy: false, fetch: 'join'
    }

}


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