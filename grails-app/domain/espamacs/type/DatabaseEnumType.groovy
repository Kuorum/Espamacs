package espamacs.type

class DatabaseEnumType {

    Long id
    String code;
    Integer position

    static mapping = {
//        tablePerHierarchy false
    }

    static constraints = {
        code nullable:false
        position nullable:true
    }
}
