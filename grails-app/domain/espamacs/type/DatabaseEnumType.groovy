package espamacs.type

class DatabaseEnumType {

    Long id
    String code;

    static mapping = {
        tablePerHierarchy false
    }

    static constraints = {
        code nullable:false
    }
}
