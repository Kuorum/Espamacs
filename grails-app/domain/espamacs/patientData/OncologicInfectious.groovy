package espamacs.patientData

import espamacs.type.patientData.Leukemia
import espamacs.type.patientData.MalignantTumor

class OncologicInfectious {

    MalignantTumor malignantTumor
    Leukemia leukemia
    Boolean rvh
    Boolean chronicInfectiousDiseases

    static constraints = {
    }
}
