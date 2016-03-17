import espamacs.EspamacsUser
import espamacs.EspamacsUserRole
import espamacs.Role

class BootStrap {

    def init = { servletContext ->
        Role roleUser = new Role("ROLE_USER").save()
        Role roleAdmin = new Role("ROLE_ADMIN").save()

        EspamacsUser user = new EspamacsUser("user", "test").save()
        EspamacsUser admin = new EspamacsUser("admin", "admin").save()

        new EspamacsUserRole(user, roleUser).save()
        new EspamacsUserRole(admin, roleUser).save()
        new EspamacsUserRole(admin, roleAdmin).save()


    }
    def destroy = {
    }
}
