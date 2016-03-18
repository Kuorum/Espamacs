package espamacs.security;

import grails.plugin.springsecurity.userdetails.GrailsUser;
import groovy.lang.MetaClass;
import org.springframework.security.core.GrantedAuthority;

import java.util.Collection;

/**
 * Created by iduetxe on 18/03/16.
 */
public class EspamacsSessionUser extends GrailsUser
{
    final String centroName
    final Long centroId

    EspamacsSessionUser(String username,
                        String password,
                        boolean enabled,
                        boolean accountNonExpired,
                        boolean credentialsNonExpired,
                        boolean accountNonLocked,
                        Collection<GrantedAuthority> authorities,
                        long id,
                        String centroName,
                        Long centroId
    ) {
        super(username, password, enabled, accountNonExpired,
                credentialsNonExpired, accountNonLocked, authorities, id)

        this.centroName = centroName
        this.centroId = centroId
    }
}
