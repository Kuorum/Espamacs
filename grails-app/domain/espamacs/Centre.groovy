package espamacs

class Centre {

    String name

    static constraints = {
        name nullable: false
    }

    public String toString(){
        name
    }
}
