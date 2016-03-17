import espamacs.Centro
import espamacs.EspamacsUser
import espamacs.EspamacsUserRole
import espamacs.Role

class BootStrap {

    def init = { servletContext ->
        Role roleUser = new Role("ROLE_USER").save()
        Role roleAdmin = new Role("ROLE_ADMIN").save()

        Centro ph = new Centro(name:"Puerta de hierro").save()
        Centro paz= new Centro(name: "La paz").save()

        EspamacsUser user = new EspamacsUser("user", "test")
        user.centro = ph
        user.save()
        EspamacsUser admin = new EspamacsUser("admin", "admin")
        admin.centro = paz
        admin.save()

        new EspamacsUserRole(user, roleUser).save()
        new EspamacsUserRole(admin, roleUser).save()
        new EspamacsUserRole(admin, roleAdmin).save()


    }
    def destroy = {
    }
}
