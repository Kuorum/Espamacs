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
}
