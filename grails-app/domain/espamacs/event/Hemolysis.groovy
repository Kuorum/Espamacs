package espamacs.event

import espamacs.type.event.hemolysis.HemolysisCause

class Hemolysis extends Event{

    Double hemoglobin
    HemolysisCause hemolysisCause

    static constraints = {
    }
}
