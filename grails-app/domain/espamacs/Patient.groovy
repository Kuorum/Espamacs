package espamacs

import espamacs.type.CardiacCareType
import espamacs.type.Gender

class Patient {

    String initials;
    Date birthDate
    Double weigh
    Double height
    Gender gender

    Centre centre;
    String externalId
    CardiacCareType cardiacCareType

    static constraints = {
        initials nullable:false, minSize: 3
        centre nullable: false
    }
}
