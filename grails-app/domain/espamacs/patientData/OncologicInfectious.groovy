package espamacs.patientData

import espamacs.type.patientData.Leukemia
import espamacs.type.patientData.MalignantTumor

class OncologicInfectious {

    MalignantTumor malignantTumor
    Leukemia leukemia
    Boolean hiv
    Boolean chronicInfectiousDiseases

    static constraints = {
    }

    static mapping = {
        malignantTumor lazy: false, fetch: 'join'
        leukemia lazy: false, fetch: 'join'
    }
}
