package espamacs.event

import espamacs.type.event.infection.InfectionPlace
import espamacs.type.event.infection.InfectionTreatment

class Infection extends Event{

    InfectionPlace infectionPlace
    InfectionTreatment infectionTreatment

    static constraints = {
    }
}
