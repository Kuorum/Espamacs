package espamacs.type

class DatabaseEnumType {

    Long id

    String code;

    static constraints = {
        code nullable:false, unique: true
    }
}
