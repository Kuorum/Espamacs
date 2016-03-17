package espamacs

class Paciente {

    String iniciales;
    Centro centro;

    static constraints = {
        iniciales nullable:false
        centro nullable: false
    }
}
