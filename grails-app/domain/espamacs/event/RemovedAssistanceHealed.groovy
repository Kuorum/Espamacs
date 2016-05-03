package espamacs.event

import espamacs.type.event.RemovedAssistanceDeathCause

class RemovedAssistanceHealed extends Event{

    RemovedAssistanceDeathCause removedAssistanceDeathCause
    Integer aliveDays
    Boolean aliveAfterHospital

    Boolean removeAssistance = Boolean.TRUE

    static mapping = {
    }

    static constraints = {
    }
}
