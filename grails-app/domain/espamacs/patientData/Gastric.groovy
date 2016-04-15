package espamacs.patientData

import espamacs.type.BooleanDBType
import espamacs.type.patientData.Hepatitis

class Gastric {

    BooleanDBType gastricUlcer
    Hepatitis hepatitis
    BooleanDBType cirrhosis
    static constraints = {
    }

    static mapping = {
        gastricUlcer lazy: false, fetch: 'join'
        hepatitis lazy: false, fetch: 'join'
        cirrhosis lazy: false, fetch: 'join'
    }
}
