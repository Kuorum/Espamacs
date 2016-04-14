package espamacs.event

import espamacs.type.event.hemorrhage.BleedingPlace
import espamacs.type.event.hemorrhage.HemorrhageCause
import espamacs.type.event.hemorrhage.HemorrhageTreatment

class Hemorrhage extends Event{

    HemorrhageCause hemorrhageCause
    HemorrhageTreatment hemorrhageTreatment
    List<BleedingPlace> bleedingPlaces

    static hasMany = [bleedingPlaces: BleedingPlace]

    static constraints = {
    }
}
