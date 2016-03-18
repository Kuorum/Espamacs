package espamacs

class Patient {

    String initials;
    Centre centre;
    String externalId
    Date birthDate

    static constraints = {
        initials nullable:false
        centre nullable: false
    }
}
