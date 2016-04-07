package espamacs.patientData

import espamacs.type.patientData.ChronicAnemia
import espamacs.type.patientData.ThyroidDisorders

class EndocrineHematologicSystem {

    ThyroidDisorders thyroidDisorders
    ChronicAnemia chronicAnemia
    Boolean heparinInducedThrombocytopenia
    Boolean chronicCoagulopathy

    static constraints = {
    }

    static mapping = {
        thyroidDisorders lazy: false, fetch: 'join'
        chronicAnemia lazy: false, fetch: 'join'
    }
}
