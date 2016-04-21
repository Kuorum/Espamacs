package espamacs.event

import espamacs.type.event.rightHeartFailure.RightHeartFailureNeeds
import espamacs.type.event.rightHeartFailure.RightHeartFailureSignals

class RightHeartFailure extends Event{

    RightHeartFailureSignals rightHeartFailureSignals
    RightHeartFailureNeeds rightHeartFailureNeeds

    static constraints = {
    }
}
