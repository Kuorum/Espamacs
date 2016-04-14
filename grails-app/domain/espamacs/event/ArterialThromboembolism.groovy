package espamacs.event

import espamacs.type.event.arterialThromboembolism.*

class ArterialThromboembolism extends Event{

    List<ArterialThromboembolismPlace> arterialThromboembolismPlaces
    ArterialThromboembolismDiagnosis arterialThromboembolismDiagnosis

    static hasMany = [arterialThromboembolismPlaces: ArterialThromboembolismPlace]

    static constraints = {
    }
}
