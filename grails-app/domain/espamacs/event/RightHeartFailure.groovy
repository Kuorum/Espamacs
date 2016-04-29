package espamacs.event

import espamacs.type.event.rightHeartFailure.RightHeartFailureNeeds
import espamacs.type.event.rightHeartFailure.RightHeartFailureSignals

class RightHeartFailure extends Event{

    List<RightHeartFailureSignals> rightHeartFailureSignals
    RightHeartFailureNeeds rightHeartFailureNeeds

    static hasMany = [rightHeartFailureSignals: RightHeartFailureSignals]

    static constraints = {
    }
}
