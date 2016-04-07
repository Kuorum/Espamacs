package espamacs.patientData

import espamacs.type.patientData.Hepatitis

class Gastric {

    Boolean gastricUlcer
    Hepatitis hepatitis
    Boolean cirrhosis
    static constraints = {
    }

    static mapping = {
        gastricUlcer lazy: false, fetch: 'join'
        hepatitis lazy: false, fetch: 'join'
    }
}
