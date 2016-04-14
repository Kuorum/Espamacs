package espamacs.event

import espamacs.type.event.myocardialInfarction.MyocardialInfractionCause
import espamacs.type.event.myocardialInfarction.MyocardialInfractionPlace
import espamacs.type.event.myocardialInfarction.MyocardialInfractionTreatment

/**
 * IAM
 */
class MyocardialInfarction extends Event{

    MyocardialInfractionPlace myocardialInfractionPlace
    MyocardialInfractionCause myocardialInfractionCause
    MyocardialInfractionTreatment myocardialInfractionTreatment

    static constraints = {
    }
}
