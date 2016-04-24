package espamacs

class Centre {

    String name
    String service
    String address
    Province province

    static constraints = {
        name nullable: false
        service nullable: true
        address nullable: true
    }

    public String toString(){
        name
    }
}
