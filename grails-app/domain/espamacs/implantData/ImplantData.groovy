package espamacs.implantData

import espamacs.type.implantData.CollateralSurgery
import espamacs.type.implantData.ImplantType

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
    }

}
