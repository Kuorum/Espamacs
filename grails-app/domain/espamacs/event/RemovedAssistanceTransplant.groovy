package espamacs.event

import espamacs.type.event.RemovedAssistanceDeathCause

class RemovedAssistanceTransplant extends Event{

    Boolean aliveAfterHospital
    Integer aliveDays
    RemovedAssistanceDeathCause removedAssistanceDeathCause

    Boolean removeAssistance = Boolean.TRUE

    static mapping = {
    }

    static constraints = {
        aliveDays nullable: true
    }
}
