package espamacs

class Centro {

    String name

    static constraints = {
        name nullable: false
    }

    public String toString(){
        name
    }
}
