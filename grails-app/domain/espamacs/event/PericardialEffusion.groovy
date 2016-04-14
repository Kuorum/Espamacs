package espamacs.event

import espamacs.type.event.pericardialEffusion.PericardialEffussionDrainMethod
import espamacs.type.event.pericardialEffusion.PericardialEffussionQuantity

class PericardialEffusion extends Event{

    PericardialEffussionQuantity pericardialEffussionQuantity
    Boolean flowBlocking
    PericardialEffussionDrainMethod pericardialEffussionDrainMethod

    static constraints = {
    }
}
