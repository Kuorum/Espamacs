package espamacs.security;

import grails.plugin.springsecurity.userdetails.GrailsUser
import org.springframework.security.core.GrantedAuthority

/**
 * Created by iduetxe on 18/03/16.
 */
public class EspamacsSessionUser extends GrailsUser
{
    final String centreName
    final Long centreId

    EspamacsSessionUser(String username,
                        String password,
                        boolean enabled,
                        boolean accountNonExpired,
                        boolean credentialsNonExpired,
                        boolean accountNonLocked,
                        Collection<GrantedAuthority> authorities,
                        long id,
                        String centreName,
                        Long centroId
    ) {
        super(username, password, enabled, accountNonExpired,
                credentialsNonExpired, accountNonLocked, authorities, id)

        this.centreName = centreName
        this.centreId = centroId
    }
}
