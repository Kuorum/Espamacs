package espamacs

class Province {

    String name

    static constraints = {
        name nullable: false
    }

    public String toString(){
        name
    }
}
