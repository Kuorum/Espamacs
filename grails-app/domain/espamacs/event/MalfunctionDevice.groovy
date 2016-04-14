package espamacs.event

import espamacs.type.event.malfunctionDevice.MalfunctionDeviceType
import espamacs.type.event.malfunctionDevice.UrgentSurgery

class MalfunctionDevice extends Event{

    MalfunctionDeviceType malfunctionDeviceType
    UrgentSurgery urgentSurgery
    Boolean changeAssistanceComponents

    static constraints = {
    }
}
