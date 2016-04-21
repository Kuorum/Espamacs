package espamacs.patientData

import espamacs.type.BooleanDBType
import espamacs.type.patientData.Leukemia
import espamacs.type.patientData.MalignantTumor

class OncologicInfectious {

    MalignantTumor malignantTumor
    Leukemia leukemia
    BooleanDBType hiv
    BooleanDBType chronicInfectiousDiseases

    static constraints = {
    }

    static mapping = {
        malignantTumor lazy: false, fetch: 'join'
        leukemia lazy: false, fetch: 'join'
        hiv lazy: false, fetch: 'join'
        chronicInfectiousDiseases lazy: false, fetch: 'join'
    }
}
